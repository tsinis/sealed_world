import "package:flutter/rendering.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_flags/src/model/elements/custom_elements_properties.dart";
import "package:world_flags/src/model/elements/elements_properties.dart";
import "package:world_flags/src/model/shape.dart";
import "package:world_flags/src/model/typedefs.dart";
import "package:world_flags/world_flags.dart"
    show
        AiaPainter,
        AlmondPainter,
        CustomDiagonalPainter,
        CustomElementsPainter,
        HrvPainter,
        PrtPainter,
        ShahadaPainter,
        SimpleBirdPainter,
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

  group("variant", () {
    const properties = [custom];
    for (final (first, second)
        in <(CustomElementsPainter, CustomElementsPainter)>[
          (
            AlmondPainter.gum(properties, 1.5),
            AlmondPainter.swz(properties, 1.5),
          ),
          (
            CustomDiagonalPainter.vertical(properties, 1.5),
            CustomDiagonalPainter.horizontal(properties, 1.5),
          ),
          (
            ShahadaPainter.sau(properties, 1.5),
            ShahadaPainter.afg(properties, 1.5),
          ),
          (
            SimpleBirdPainter.egy(properties, 1.5),
            SimpleBirdPainter.mda(properties, 1.5),
          ),
        ]) {
      test("of ${first.runtimeType} is compared on repaint", () {
        expect(first.shouldRepaint(second), isTrue);
        expect(first.shouldRepaint(first), isFalse);
      });
    }
  });

  test("badge paint falls back to the main color", () {
    final painter = _CustomElementsPainterTest(const [custom]);

    expect(painter.badgePaintOf(0).color, isSameColorAs(custom.mainColor));
    expect(painter.badgePaintOf(2).color, isSameColorAs(custom.mainColor));
  });

  test("paints a shield without a custom element", () {
    const shapeOnly = [
      ElementsProperties(Color(0xff000000), shape: Rectangle()),
    ];
    final painter = SimpleShieldPainter.outlinedWithoutDividers(shapeOnly, 1.5);
    final canvas = RecordingCanvas();

    expect(() => painter.paintFlagElements(canvas, size), returnsNormally);
    expect(canvas.drawCount, isPositive);
  });
});

/// A painter exposing the protected badge paint resolution.
final class _CustomElementsPainterTest extends CustomElementsPainter {
  new(ElementsProps properties) : super(properties, 1.5);

  Paint badgePaintOf(int index) => badgePaint(index);

  @override
  FlagParentBounds? paintFlagElements(Canvas canvas, Size size) => null;
}
