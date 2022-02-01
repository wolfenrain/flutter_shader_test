import 'package:flutter/material.dart';

/// Renderer used for rendering and testing our shaders.
class ShaderPainter extends CustomPainter {
  ShaderPainter(this.shader) : _paint = Paint()..shader = shader;

  final Shader shader;

  final Paint _paint;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawRect(const Rect.fromLTWH(0, 0, 100, 100), _paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
