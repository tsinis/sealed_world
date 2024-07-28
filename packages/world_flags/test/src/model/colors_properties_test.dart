import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_flags/src/model/colors_properties.dart";

void main() => group("$ColorsProperties", () {
      const ratio = 1;
      const color = Colors.blue;
      const invalidRatio = -ratio;

      test(
        "toString",
        () => expect(
          const ColorsProperties(color).toString(),
          "$ColorsProperties(MaterialColor(primary value: Color(0xff2196f3)), "
          "ratio: 1)",
        ),
      );

      group("default constructor", () {
        test("should create an instance with valid ratio", () {
          const colorsProperties = ColorsProperties(color);

          expect(colorsProperties.color, color);
          expect(colorsProperties.ratio, ratio);
        });

        test(
          "should throw $AssertionError for invalid ratio",
          () => expect(
            () => ColorsProperties(color, ratio: invalidRatio),
            throwsA(isA<AssertionError>()),
          ),
        );
      });

      group("fromIntColor constructor", () {
        const bitColor = 0xFF0000FF;
        test("should create an instance with valid ratio", () {
          final colorsProperties = ColorsProperties.fromIntColor(bitColor);

          expect(colorsProperties.color, const Color(bitColor));
          expect(colorsProperties.ratio, ratio);
        });

        test(
          "should throw $AssertionError for invalid ratio",
          () => expect(
            () => ColorsProperties.fromIntColor(bitColor, ratio: invalidRatio),
            throwsA(isA<AssertionError>()),
          ),
        );
      });
    });
