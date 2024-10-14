import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Gallery + Material 3'),
      ),
      body:  Center(
        child: FilledButton(
          child: const Text('Button'),
          onPressed: (){}, 

        ),
      ),
    );
  }
}