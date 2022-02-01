import 'package:flutter/material.dart';
import 'package:flutter_shader_test/shader_painter.dart';

/// Wrapper around the [ShaderPainter]. Nothing fancy here.
class FlutterShaderTest extends StatelessWidget {
  const FlutterShaderTest({Key? key, required this.shader}) : super(key: key);

  final Shader shader;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: ShaderPainter(shader));
  }
}
