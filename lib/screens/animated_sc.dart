import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.indigo;

  void changeDimentions() {
    setState(() {
      final random = Random();
      _width = random.nextInt(300).toDouble() + 70;
      _height = random.nextInt(300).toDouble() + 70;
      _color = Color.fromRGBO(
        random.nextInt(255),
        random.nextInt(255),
        random.nextInt(255),
        1,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated SC')),
      body: Center(
        child: Container(
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: changeDimentions,
          child: const Icon(
            Icons.play_circle_outlined,
            size: 35,
          )),
    );
  }
}
