import "package:flutter/rendering.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_flags/src/helpers/extensions/elements_properties_copy_with.dart";
import "package:world_flags/src/model/elements/elements_properties.dart";
import "package:world_flags/src/model/shape.dart";

void main() => group("ElementsPropertiesCopyWith", () {
  const original = ElementsProperties(
    Color(0xFFFF0000),
    shape: Star(),
    heightFactor: 0.5,
    widthFactor: 0.3,
    angle: 45,
  );

  test("copyWith returns same values without updates", () {
    final copy = original.copyWith();
    expect(copy.mainColor, original.mainColor);
    expect(copy.shape, original.shape);
    expect(copy.heightFactor, original.heightFactor);
    expect(copy.widthFactor, original.widthFactor);
    expect(copy.angle, original.angle);
    expect(copy.offset, original.offset);
    expect(copy.child, original.child);
  });

  test("copyWith returns updated values", () {
    final copy = original.copyWith(
      mainColor: const Color(0xFF00FF00),
      heightFactor: 0.8,
    );
    expect(copy.mainColor, const Color(0xFF00FF00));
    expect(copy.heightFactor, 0.8);
    expect(copy.shape, original.shape);
    expect(copy.widthFactor, original.widthFactor);
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
