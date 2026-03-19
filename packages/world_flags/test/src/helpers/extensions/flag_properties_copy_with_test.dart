import "package:flutter/rendering.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_flags/src/helpers/extensions/flag_properties_copy_with.dart";
import "package:world_flags/src/model/colors_properties.dart";
import "package:world_flags/src/model/elements/elements_properties.dart";
import "package:world_flags/src/model/flag_properties.dart";
import "package:world_flags/src/model/shape.dart";
import "package:world_flags/src/model/stripe_orientation.dart";

void main() => group("FlagPropertiesCopyWith", () {
  const original = FlagProperties([ColorsProperties(Color(0xFFFF0000))]);

  test("copyWith returns same values without updates", () {
    final copy = original.copyWith();
    expect(copy.stripeColors, original.stripeColors);
    expect(copy.aspectRatio, original.aspectRatio);
    expect(copy.stripeOrientation, original.stripeOrientation);
    expect(copy.elementsProperties, original.elementsProperties);
    expect(copy.baseElementType, original.baseElementType);
    expect(copy.isSimplified, original.isSimplified);
  });

  test("copyWith returns updated values", () {
    final copy = original.copyWith(
      aspectRatio: 2,
      stripeOrientation: StripeOrientation.vertical,
    );
    expect(copy.aspectRatio, 2);
    expect(copy.stripeOrientation, StripeOrientation.vertical);
    expect(copy.stripeColors, original.stripeColors);
  });

  test("copyWith resets elementsProperties to null with empty list", () {
    const withElements = FlagProperties(
      [ColorsProperties(Color(0xFFFF0000))],
      elementsProperties: [
        ElementsProperties(Color(0xFF0000FF), shape: Star()),
      ],
    );
    expect(withElements.elementsProperties, isNotNull);

    final copy = withElements.copyWith(elementsProperties: const []);
    expect(copy.elementsProperties, isNull);
    expect(copy.stripeColors, withElements.stripeColors);
  });
});
