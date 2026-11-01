import "package:flutter/widgets.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_flags/src/model/colors_properties.dart";
import "package:world_flags/src/model/flag_elements_type.dart";
import "package:world_flags/src/model/flag_properties.dart";

void main() => group("$FlagProperties", () {
  const value = FlagProperties([ColorsProperties(Color(0xff000000))]);

  test(
    "toString",
    () => expect(
      value.toString(),
      startsWith("$FlagProperties([ColorsProperties"),
    ),
  );

  test(
    "stripeColors empty",
    () => expect(() => FlagProperties(const []), throwsAssertionError),
  );

  test(
    "baseElementType is not null but elementsProperties is null",
    () => expect(
      () => FlagProperties(baseElementType: FlagElementsType.star, const [
        ColorsProperties(Color(0xff000000)),
      ]),
      throwsAssertionError,
    ),
  );

  test(
    "baseElementType is not null but elementsProperties is empty",
    () => expect(
      () => FlagProperties(
        const [ColorsProperties(Color(0xff000000))],
        baseElementType: FlagElementsType.star,
        elementsProperties: const [],
      ),
      throwsAssertionError,
    ),
  );
});
