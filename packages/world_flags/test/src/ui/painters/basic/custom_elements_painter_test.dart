import "package:flutter/rendering.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_flags/src/model/elements/custom_elements_properties.dart";
import "package:world_flags/src/model/elements/elements_properties.dart";
import "package:world_flags/src/model/shape.dart";
import "package:world_flags/world_flags.dart"
    show
        AiaPainter,
        CustomElementsPainter,
        HrvPainter,
        PrtPainter,
        SimpleShieldPainter,
        TaegukgiPainter;

import "../../../../helpers/recording_canvas.dart";

void main() => group("$CustomElementsPainter", () {
  const size = Size(300, 200);
  const custom = CustomElementsProperties(
    Color(0xff102030),
    heightFactor: 0.5,
    widthFactor: 0.4,
  );

  group("palette without enough colors", () {
    // ElementsPainter asserts on the list length, so it can't be `const`.
    for (final painter in <CustomElementsPainter>[
      AiaPainter(const [custom], 1.5),
      HrvPainter(const [custom], 1.5),
      PrtPainter(const [custom], 1.5),
      TaegukgiPainter(const [custom], 1.5),
      SimpleShieldPainter.outlinedWithoutDividers(const [custom], 1.5),
    ]) {
      test("${painter.runtimeType} falls back to the main color", () {
        final canvas = RecordingCanvas();

        expect(() => painter.paint(canvas, size), returnsNormally);
        expect(canvas.drawCount, isPositive);
      });
    }
  });

  test("reads the custom element even if a shape goes first", () {
    const shapeFirst = [
      ElementsProperties(Color(0xff000000), shape: Rectangle()),
      custom,
    ];
    final painter = SimpleShieldPainter.withoutDividers(shapeFirst, 1.5);
    final canvas = RecordingCanvas();

    expect(() => painter.paintFlagElements(canvas, size), returnsNormally);
    expect(canvas.drawCount, isPositive);
  });
});
