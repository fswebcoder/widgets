import 'package:flutter/material.dart';
import 'package:widgets/config/router/app_router.dart';
import 'package:widgets/config/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Main App',
      debugShowCheckedModeBanner: false,
      theme:AppTheme(selecterColor: 18 ).getTheme(),
      routerConfig: appRouter,
    );
  }
}
