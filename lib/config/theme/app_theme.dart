import 'package:flutter/material.dart';

const colorList = <Color>  [
  Colors.red,
  Colors.green,
  Colors.blue,
  Colors.yellow,
  Colors.purple,
  Colors.orange,
  Colors.pink,
  Colors.teal,
  Colors.cyan,
  Colors.indigo,
  Colors.amber,
  Colors.lime,
  Colors.brown,
  Colors.grey,
  Colors.blueGrey,
  Colors.deepOrange,
  Colors.deepPurple,
  Colors.lightBlue,
  Colors.lightGreen,
  Colors.purpleAccent,
  Colors.redAccent,
  Colors.greenAccent,
  Colors.blueAccent,
  Colors.yellowAccent,
  Colors.orangeAccent,
  Colors.pinkAccent,
  Colors.tealAccent,
  Colors.cyanAccent,
  Colors.indigoAccent,
  Colors.amberAccent,
  Colors.limeAccent,

];


class AppTheme {
  final int selecterColor;

  AppTheme({required this.selecterColor}): assert(selecterColor >= 0 && selecterColor < colorList.length, 'Invalid color index');

  ThemeData getTheme() => ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 4,
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(color: Colors.black),
    ),
    colorSchemeSeed: colorList[selecterColor],
    useMaterial3: true,

  );

}