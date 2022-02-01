import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_shader_test/flutter_shader_test.dart';

void main() async {
  // Ensure bindings are initialized otherwise we can't user rootBundle.
  WidgetsFlutterBinding.ensureInitialized();

  // Compile the binary into a Fragment program.
  final program = await FragmentProgram.compile(
    spirv: (await rootBundle.load('assets/shaders/simple.sprv')).buffer,
  );

  // Turn it into a shader with given inputs (floatUniforms).
  final shader = program.shader(
    floatUniforms: Float32List.fromList(<double>[1]),
  );

  runApp(FlutterShaderTest(shader: shader));
}
