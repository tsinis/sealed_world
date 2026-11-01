import "package:flutter/widgets.dart";
import "package:flutter_test/flutter_test.dart";
import "package:material_ui/material_ui.dart" show Colors;
import "package:world_flags/src/model/colors_properties.dart";

void main() => group("$ColorsProperties", () {
  const ratio = 1;
  const color = Colors.blue;
  const invalidRatio = -ratio;

  test(
    "toString",
    () => expect(
      const ColorsProperties(color).toString(),
      "$ColorsProperties(MaterialColor(primary value: Color(alpha: 1.0000, "
      "red: 0.1294, green: 0.5882, blue: 0.9529, colorSpace: "
      "ColorSpace.sRGB)), ratio: 1)",
    ),
  );

  group("default constructor", () {
    test("should create an instance with valid ratio", () {
      const colorsProperties = ColorsProperties(color);

      expect(colorsProperties.color, color);
      expect(colorsProperties.ratio, ratio);
    });

    test(
      "invalid ratio",
      () => expect(
        () => ColorsProperties(color, ratio: invalidRatio),
        throwsAssertionError,
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
      "invalid ratio",
      () => expect(
        () => ColorsProperties.fromIntColor(bitColor, ratio: invalidRatio),
        throwsAssertionError,
      ),
    );
  });
});
