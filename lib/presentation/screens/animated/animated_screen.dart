import 'package:flutter/material.dart';
import 'dart:math' show Random;
class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double width = 100;
  double height = 100;
  Color color = Colors.red;
  double borderRadius = 20;


  void  changeShape(){
     final random = Random();

     width = random.nextInt(300).toDouble() + 50;
     height = random.nextInt(300).toDouble() + 50;
      setState(() {
        color = Color.fromRGBO(
          random.nextInt(256),
          random.nextInt(256),
          random.nextInt(256),
          1,
        );
        borderRadius = random.nextInt(100).toDouble();
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Animaciones'),
        ),
        body: _AnimatedContainer(
          width: width,
          height: height,
          color: color,
          borderRadius: borderRadius,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: changeShape,
          child: const Icon(Icons.play_arrow_rounded, color: Colors.white),
        ));
  }
}

class _AnimatedContainer extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final double borderRadius;
  const _AnimatedContainer(
      {required this.width,
      required this.height,
      required this.color,
      required this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOutCubic,
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          gradient: LinearGradient(
            colors: [color, Colors.green],
          ),
        ),
        child:  const FlutterLogo(size: 10),
      ),
    );
  }
}
