import "dart:ui";

import "package:flutter_test/flutter_test.dart";
import "package:world_flags/src/model/elements/custom_elements_properties.dart";

void main() => group("$CustomElementsProperties", () {
  const value = CustomElementsProperties(
    Color(0xffffffff),
    heightFactor: 1.5,
    offset: Offset(0.4, 0.5),
  );

  test(
    "toString",
    () => expect(
      value.toString(),
      "$CustomElementsProperties(Color(alpha: 1.0000, red: 1.0000, green: "
      "1.0000, blue: 1.0000, colorSpace: ColorSpace.sRGB), "
      "heightFactor: 1.5, otherColors: [], offset: Offset(0.4, 0.5),)",
    ),
  );
});
