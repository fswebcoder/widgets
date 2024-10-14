import 'package:flutter/material.dart';
import 'package:widgets/config/theme/app_theme.dart';
import 'package:widgets/presentation/screens/home/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Main App',
      debugShowCheckedModeBanner: false,
      theme:AppTheme(selecterColor: 9 ).getTheme(),
      home: const HomeScreen(),  
    );
  }
}