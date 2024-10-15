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
     MenuItems(
      title: 'Progress indicator',
      subTitle: 'Indicador de progreso en flutter, generales y controlados',
      route: '/progress',
      icon: Icons.refresh_outlined
    ),
    MenuItems(
      title: 'SnackBar',
      subTitle: 'SnackBar en flutter',
      route: '/snackbars',
      icon: Icons.info_outline_rounded
    ),
     MenuItems(
      title: 'Animated container',
      subTitle: 'Contenedor animado en flutter',
      route: '/animated',
      icon: Icons.check_box_outline_blank_outlined
    )
];