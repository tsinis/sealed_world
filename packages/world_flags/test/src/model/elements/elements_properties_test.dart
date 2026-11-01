import "dart:ui";

import "package:flutter_test/flutter_test.dart";
import "package:world_flags/src/model/elements/elements_properties.dart";

void main() => group("$ElementsProperties", () {
  const value = ElementsProperties(
    Color(0xffffffff),
    heightFactor: 1.5,
    offset: Offset(0.4, 0.5),
    shape: null,
  );

  test(
    "toString",
    () => expect(
      value.toString(),
      "$ElementsProperties(Color(alpha: 1.0000, red: 1.0000, green: "
      "1.0000, blue: 1.0000, colorSpace: ColorSpace.sRGB), "
      "heightFactor: 1.5, offset: Offset(0.4, 0.5),)",
    ),
  );

  group("asserts", () {
    const negative = -1.0;
    test(
      "negative heightFactor",
      () => expect(
        () => ElementsProperties(
          const Color(0xffffffff),
          shape: null,
          heightFactor: negative,
        ),
        throwsAssertionError,
      ),
    );

    test(
      "negative widthFactor",
      () => expect(
        () => ElementsProperties(
          const Color(0xffffffff),
          shape: null,
          widthFactor: negative,
        ),
        throwsAssertionError,
      ),
    );
  });
});
