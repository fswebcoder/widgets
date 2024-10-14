import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subTitle;
  final String route;
  final IconData icon;

  const MenuItems(
      {required this.title,
      required this.subTitle,
      required this.route,
      required this.icon});
}

const appMenuItems  = <MenuItems> [
    MenuItems(
      title: 'Botones',
      subTitle: 'Varios botones en flutter',
      route: '/buttons',
      icon: Icons.smart_button_outlined
    ), 
    MenuItems(
      title: 'Tarjetas',
      subTitle: 'tarjetas en flutter',
      route: '/cards',
      icon: Icons.credit_card
    ),
];