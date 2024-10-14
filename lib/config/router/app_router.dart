import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets/presentation/screens/botones/buttons_screnn.dart';
import 'package:widgets/presentation/screens/card/cards_screen.dart';
import 'package:widgets/presentation/screens/home/home_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: _animationConfig,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/buttons',
      pageBuilder: _animationConfig,
      builder: (context, state) => const ButtonsScrenn(),
    ),
    GoRoute(
      path: '/cards',
      pageBuilder: _animationConfig,
      builder: (context, state) => const CardsScreen(),
    )
  ],
);

Page<dynamic> _animationConfig(context, state) {
  return CustomTransitionPage(
    key: state.pageKey,
    child: const HomeScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      var offsetAnimation = animation.drive(tween);

      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    },
  );
}
