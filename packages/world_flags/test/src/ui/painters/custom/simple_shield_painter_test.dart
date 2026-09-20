// The deprecated constructors are the subject here, so they are used on
// purpose and the divider drawing they select has to stay covered.
// ignore_for_file: deprecated_member_use_from_same_package

import "package:flutter/rendering.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_flags/src/model/elements/custom_elements_properties.dart";
import "package:world_flags/world_flags.dart"
    show SimpleShieldPainter, UnionJackPainter;

import "../../../../helpers/recording_canvas.dart";

void main() {
  const size = Size(200, 100);
  const properties = [
    CustomElementsProperties(
      Color(0xff102030),
      otherColors: [
        Color(0xff111111),
        Color(0xff222222),
        Color(0xff333333),
        Color(0xff444444),
        Color(0xff555555),
      ],
      heightFactor: 0.5,
      widthFactor: 0.4,
    ),
  ];

  group("$SimpleShieldPainter", () {
    test("draws the quarters and nothing else without dividers", () {
      final canvas = RecordingCanvas();

      SimpleShieldPainter.withoutDividers(
        properties,
        size.aspectRatio,
      ).paintFlagElements(canvas, size);

      expect(canvas.ops[#drawLine], isNull, reason: "No dividers were asked.");
      expect(canvas.ops[#drawRect], 4, reason: "One per quarter.");
      expect(canvas.ops[#drawPath], 1, reason: "The shield is filled once.");
      expect(canvas.openSaves, isZero);
    });

    test("strokes the shield when it is outlined", () {
      final plain = RecordingCanvas();
      final outlined = RecordingCanvas();

      SimpleShieldPainter.withoutDividers(
        properties,
        size.aspectRatio,
      ).paintFlagElements(plain, size);
      SimpleShieldPainter.outlinedWithoutDividers(
        properties,
        size.aspectRatio,
      ).paintFlagElements(outlined, size);

      expect(outlined.ops[#drawPath], (plain.ops[#drawPath] ?? 0) + 1);
    });

    test("crosses the shield when dividers are asked for", () {
      for (final painter in [
        SimpleShieldPainter.withDividers(properties, size.aspectRatio),
        SimpleShieldPainter.outlinedWithDividers(properties, size.aspectRatio),
        UnionJackPainter.halfWithDividers(properties, size.aspectRatio),
      ]) {
        final canvas = RecordingCanvas();

        painter.paintFlagElements(canvas, size);

        expect(
          canvas.ops[#drawLine],
          2,
          reason: "$painter halves the shield both ways.",
        );
        expect(canvas.openSaves, isZero, reason: "$painter balances its saves");
      }
    });
  });

  group("$UnionJackPainter", () {
    test("paints the jack over the shield unless it is full", () {
      final half = RecordingCanvas();
      final full = RecordingCanvas();

      UnionJackPainter.half(properties, size.aspectRatio).paint(half, size);
      UnionJackPainter.full(properties, size.aspectRatio).paint(full, size);

      expect(
        half.drawCount,
        greaterThan(full.drawCount),
        reason: "Only the half jack draws a shield behind itself.",
      );
      expect(half.openSaves, isZero);
      expect(full.openSaves, isZero);
    });
  });
}
