import "package:flutter/rendering.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_flags/src/helpers/extensions/custom_elements_properties_copy_with.dart";
import "package:world_flags/src/model/elements/custom_elements_properties.dart";

void main() => group("CustomElementsPropertiesCopyWith", () {
  const original = CustomElementsProperties(
    Color(0xFFFF0000),
    otherColors: [Color(0xFF00FF00), Color(0xFF0000FF)],
    heightFactor: 0.5,
    widthFactor: 0.3,
    angle: 45,
  );

  test("copyWith returns same values without updates", () {
    final copy = original.copyWith();
    expect(copy.mainColor, original.mainColor);
    expect(copy.otherColors, original.otherColors);
    expect(copy.heightFactor, original.heightFactor);
    expect(copy.widthFactor, original.widthFactor);
    expect(copy.angle, original.angle);
    expect(copy.offset, original.offset);
  });

  test("copyWith returns updated values", () {
    final copy = original.copyWith(
      mainColor: const Color(0xFF00FF00),
      otherColors: const [Color(0xFFFFFF00)],
      heightFactor: 0.8,
    );
    expect(copy.mainColor, const Color(0xFF00FF00));
    expect(copy.otherColors, const [Color(0xFFFFFF00)]);
    expect(copy.heightFactor, 0.8);
    expect(copy.widthFactor, original.widthFactor);
    expect(copy.angle, original.angle);
  });

  test("copyWith updates offset", () {
    final copy = original.copyWith(offset: const Offset(10, 20));
    expect(copy.offset, const Offset(10, 20));
    expect(copy.mainColor, original.mainColor);
  });

  test("copyWith resets widthFactor to null with negative value", () {
    final copy = original.copyWith(widthFactor: -1);
    expect(copy.widthFactor, isNull);
    expect(copy.mainColor, original.mainColor);
  });

  test("copyWith resets angle to null with negative value", () {
    final copy = original.copyWith(angle: -1);
    expect(copy.angle, isNull);
    expect(copy.mainColor, original.mainColor);
  });
});
