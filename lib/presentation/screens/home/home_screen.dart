import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets/config/menu/menu_items.dart';
import 'package:widgets/config/router/app_router.dart';
import 'package:widgets/presentation/screens/botones/buttons_screnn.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Gallery + Material 3'),
      ),
      body: _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final item = appMenuItems[index];
        return _CustomListTitle(item: item);
      },
    );
  }
}

class _CustomListTitle extends StatelessWidget {
  const _CustomListTitle({
    required this.item,
  });

  final MenuItems item;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme.primary;
    return InkWell(
      splashColor: colors.withAlpha(100), // Cambia el color del splash aquí
      onTap: () {
        context.push(item.route); 
      },
      child: ListTile(
        title: Text(item.title),
        subtitle: Text(item.subTitle),
        leading: Icon(item.icon, color: colors),
        trailing: const Icon(Icons.arrow_forward_ios),
        iconColor: colors,
      ),
    );
  }
}
