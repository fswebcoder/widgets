import 'package:flutter/material.dart';

class ButtonsScrenn extends StatelessWidget {

  static const String  name = 'ButtonsScrenn'; 

  const ButtonsScrenn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botones'),
      ),
      body: const Placeholder(),
    );
  }
}