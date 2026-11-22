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
        CxrPainter,
        HrvPainter,
        MacPainter,
        PrtPainter,
        ShahadaPainter,
        SimpleBirdPainter,
        SimpleShieldPainter,
        SvnPainter,
        TaegukgiPainter,
        VirPainter;

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
          (
            SimpleBirdPainter.mda(properties, 1.5),
            SimpleBirdPainter.vir(properties, 1.5),
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

  group("proportional bounds", () {
    final painter = _CustomElementsPainterTest(const [custom]);

    test("are of the custom element by default", () {
      final bounds = painter.boundsOf(size, 1);

      // Fitted into 0.4 of the width (120) and 0.5 of the height (100).
      expect(bounds, const Rect.fromLTWH(100, 50, 100, 100));
    });

    test("are of the given element", () {
      const other = CustomElementsProperties(
        Color(0xff405060),
        offset: Offset(0.5, -0.5),
        heightFactor: 0.2,
      );
      final bounds = painter.boundsOf(size, 2, element: other);

      expect(bounds, const Rect.fromLTWH(185, 30, 80, 40));
    });
  });

  group("an emblem without extent", () {
    const flat = [CustomElementsProperties(Color(0xff102030), heightFactor: 0)];
    for (final painter in <CustomElementsPainter>[
      MacPainter(flat, 1.5),
      SvnPainter(flat, 1.5),
    ]) {
      test("${painter.runtimeType} skips the stars in it", () {
        final canvas = RecordingCanvas();

        expect(() => painter.paint(canvas, size), returnsNormally);
      });
    }
  });

  group("$CxrPainter", () {
    const map = CustomElementsProperties(Color(0xff1c8a42), heightFactor: 0.36);
    const bird = CustomElementsProperties(Color(0xffffc639), heightFactor: 0.5);

    test("paints the bird of the second custom element", () {
      final canvas = RecordingCanvas();
      CxrPainter(const [map, bird], 2).paint(canvas, size);

      expect(canvas.drawCount, 2);
      expect(canvas.layers.last.color, isSameColorAs(bird.mainColor));
    });

    test("skips the bird without a second custom element", () {
      final canvas = RecordingCanvas();
      CxrPainter(const [map], 2).paint(canvas, size);

      expect(canvas.drawCount, 1);
      expect(canvas.layers.single.color, isSameColorAs(map.mainColor));
    });
  });

  test("$VirPainter sizes its eagle from the element", () {
    expect(
      _virEagleHeight(size, 0.45),
      closeTo(_virEagleHeight(size, 0.9) / 2, 1),
    );
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

  Rect boundsOf(Size size, double ratio, {ElementsProperties? element}) =>
      proportionalBounds(size, ratio, element: element);

  @override
  FlagParentBounds? paintFlagElements(Canvas canvas, Size size) => null;
}

/// The height of the eagle a [VirPainter] paints with the [heightFactor].
double _virEagleHeight(Size size, double heightFactor) {
  const eagle = Color(0xfff4c53d);
  final properties = [
    CustomElementsProperties(
      eagle,
      otherColors: const [
        Color(0xff162667),
        Color(0xffa60032),
        Color(0xff0081c6),
        Color(0xff369443),
      ],
      heightFactor: heightFactor,
      widthFactor: 0.6,
    ),
  ];
  final canvas = RecordingCanvas();
  VirPainter(properties, 1.5).paint(canvas, size);

  return canvas.layers
      .where((layer) => layer.color.toARGB32() == eagle.toARGB32())
      .map((layer) => layer.path.getBounds())
      .reduce((all, bounds) => all.expandToInclude(bounds))
      .height;
}
