import 'dart:math';

import 'package:flutter/material.dart';

class RotateImage extends StatefulWidget {
  const RotateImage({super.key});

  @override
  _RotateImageState createState() => _RotateImageState();
}

class _RotateImageState extends State<RotateImage> {
  double _angle = 0.0;

  void _rotateImage() {
    final random = Random();
    final rotationCount = random.nextInt(10) + 1;
    setState(() {
      _angle += rotationCount * 2 * pi;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _rotateImage,
      child: AnimatedRotation(
        duration: const Duration(seconds: 1),
        turns: _angle / (2 * pi),
        child: Image.asset(
          'assets/images/Wheel.png',
          height: 190,
        ),
      ),
    );
  }
}
