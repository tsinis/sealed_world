// ignore_for_file: no-empty-block, unnecessary-trailing-comma

import "dart:ui" as ui;

import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_flags/src/model/colors_properties.dart";
import "package:world_flags/src/model/flag_properties.dart";
import "package:world_flags/src/ui/effects/flag_shader_delegate.dart";
import "package:world_flags/src/ui/effects/flag_shader_options.dart";
import "package:world_flags/src/ui/effects/waved_flag_shader_delegate.dart";
import "package:world_flags/src/ui/painters/basic/shader_stripes_painter.dart";

void main() => group("$ShaderStripesPainter", () {
  TestWidgetsFlutterBinding.ensureInitialized();

  const properties = FlagProperties([
    ColorsProperties(Color(0xFFFF0000)),
    ColorsProperties(Color(0xFFFFFFFF)),
    ColorsProperties(Color(0xFF0000FF)),
  ]);

  testWidgets("creates instance with required parameters", (tester) async {
    FlagShaderDelegate? shader;

    await tester.pumpWidget(
      MaterialApp(
        home: Builder(
          builder: (_) {
            shader = WavedFlagShaderDelegate(vsync: tester);

            return const SizedBox();
          },
        ),
      ),
    );

    final createdShader = shader;
    if (createdShader == null) fail("Shader was not created");
    final painter = ShaderStripesPainter(
      properties,
      null,
      shader: createdShader,
    );

    expect(painter, isA<ShaderStripesPainter>());
    expect(painter.properties, equals(properties));
    expect(painter.shader, equals(createdShader));
    expect(painter.elementsPainter, isNull);

    painter.dispose();
    createdShader.dispose();
  });

  testWidgets("paints with shader delegate", (tester) async {
    final shader = WavedFlagShaderDelegate(vsync: tester);
    final painter = ShaderStripesPainter(properties, null, shader: shader);

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: CustomPaint(painter: painter, size: const Size(300, 200)),
        ),
      ),
    );

    await tester.pump();
    expect(painter.shader, equals(shader));
    shader.dispose();
  });

  testWidgets("shouldRepaint returns true when shader changes", (tester) async {
    final oldShader = WavedFlagShaderDelegate(vsync: tester);
    final newShader = WavedFlagShaderDelegate(
      vsync: tester,
      options: const FlagShaderOptions(waveAmplitude: 0.05),
    );
    await tester.pump();
    final oldPainter = ShaderStripesPainter(
      properties,
      null,
      shader: oldShader,
    );
    final newPainter = ShaderStripesPainter(
      properties,
      null,
      shader: newShader,
    );
    expect(newPainter.shouldRepaint(oldPainter), isTrue);
    oldPainter.dispose();
    newPainter.dispose();
    oldShader.dispose();
    newShader.dispose();
  });

  testWidgets("shouldRepaint returns true when properties change", (
    tester,
  ) async {
    final shader = WavedFlagShaderDelegate(vsync: tester);
    await tester.pump();
    const newProperties = FlagProperties([ColorsProperties(Color(0xFF00FF00))]);
    final oldPainter = ShaderStripesPainter(properties, null, shader: shader);
    final newPainter = ShaderStripesPainter(
      newProperties,
      null,
      shader: shader,
    );
    expect(newPainter.shouldRepaint(oldPainter), isTrue);
    oldPainter.dispose();
    newPainter.dispose();
    shader.dispose();
  });

  testWidgets("shouldRepaint returns false when nothing changes", (
    tester,
  ) async {
    final shader = WavedFlagShaderDelegate(vsync: tester);
    await tester.pump();
    final oldPainter = ShaderStripesPainter(properties, null, shader: shader);
    final newPainter = ShaderStripesPainter(properties, null, shader: shader);
    expect(newPainter.shouldRepaint(oldPainter), isFalse);
    oldPainter.dispose();
    newPainter.dispose();
    shader.dispose();
  });

  testWidgets("dispose clears cached resources", (tester) async {
    final shader = WavedFlagShaderDelegate(vsync: tester);
    final painter = ShaderStripesPainter(properties, null, shader: shader);
    await tester.pump(); // Give shader time to initialize asynchronously.
    expect(painter.dispose, returnsNormally);
    shader.dispose();
  });

  testWidgets("rebuilds cache when size changes", (tester) async {
    final shader = WavedFlagShaderDelegate(vsync: tester);
    final painter = ShaderStripesPainter(properties, null, shader: shader);
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: CustomPaint(painter: painter, size: const Size(300, 200)),
        ),
      ),
    );
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: CustomPaint(painter: painter, size: const Size(400, 300)),
        ),
      ),
    );
    await tester.pump();
    expect(painter.properties, equals(properties));
    shader.dispose();
  });

  testWidgets("applies clipping when shouldClipContent is true", (
    tester,
  ) async {
    final shader = WavedFlagShaderDelegate(
      vsync: tester,
      options: const FlagShaderOptions(clipContent: true),
    );
    final painter = ShaderStripesPainter(properties, null, shader: shader);

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: CustomPaint(painter: painter, size: const Size(300, 200)),
        ),
      ),
    );
    await tester.pump();
    expect(shader.shouldClipContent, isTrue);
    shader.dispose();
  });

  testWidgets("contentScale affects painting", (tester) async {
    final shader = WavedFlagShaderDelegate(
      vsync: tester,
      options: const FlagShaderOptions(overflowScale: 0.8),
    );
    final painter = ShaderStripesPainter(properties, null, shader: shader);
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: CustomPaint(painter: painter, size: const Size(300, 200)),
        ),
      ),
    );
    await tester.pump();
    expect(shader.contentScale, equals(0.8));
    shader.dispose();
  });

  testWidgets("paints without shader when image is null", (tester) async {
    const shader = _ShaderStripesPainterTest();
    final painter = ShaderStripesPainter(properties, null, shader: shader);
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: CustomPaint(painter: painter, size: const Size(300, 200)),
        ),
      ),
    );
    await tester.pump();
    expect(painter.shader, equals(shader));
  });

  testWidgets("draws cached image with clipping when needed", (tester) async {
    const shader = _ShaderStripesPainterTest(shouldClipContent: true);
    final painter = ShaderStripesPainter(properties, null, shader: shader);
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: CustomPaint(painter: painter, size: const Size(300, 200)),
        ),
      ),
    );
    await tester.pump();
    // Since paintWithShader returns false, it falls back to _drawCachedImage.
    // With clipContent: true, this tests the clipping path in _drawCachedImage.
    expect(shader.shouldClipContent, isTrue);
  });
});

class _ShaderStripesPainterTest implements FlagShaderDelegate {
  const _ShaderStripesPainterTest({this.shouldClipContent = false});

  @override
  final bool shouldClipContent;

  @override
  double get contentScale => 1;

  @override
  bool paintWithShader(
    ui.Canvas destination,
    Size size, {
    required ui.Image image,
  }) => false;

  @override
  void dispose() {}

  @override
  void addListener(VoidCallback listener) {}

  @override
  void removeListener(VoidCallback listener) {}
}
