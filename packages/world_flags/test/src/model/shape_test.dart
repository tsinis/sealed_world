import "package:_sealed_world_tests/sealed_world_tests.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_flags/src/model/shape.dart";

void main() => group("$Shape", () {
  group("constructors", () {
    test(
      "creates $Triangle with no parameters",
      () => expect(const Triangle(), isA<Triangle>()),
    );

    test("creates $Rectangle with 2.0 aspect ratio", () {
      const instance = Rectangle(aspectRatio: 2);
      expect(instance.aspectRatio, 2);
    });

    test("creates $Star with 2 points", () {
      const instance = Star(points: 2);
      expect(instance.points, 2);
    });

    test(
      "creates $Ellipse with no parameters",
      () => expect(const Ellipse(), isA<Ellipse>()),
    );

    test("creates $Moon with 2.0 radius", () {
      const instance = Moon(radius: 2);
      expect(instance.radius, 2);
    });

    test("creates bottom left to top right $DiagonalLine", () {
      const instance = DiagonalLine(isTopRightToBottomLeft: false);
      expect(instance.isTopRightToBottomLeft, isFalse);
    });
  });

  group("asserts", () {
    const negative = -1.0;

    assertTest(
      "$Rectangle negative aspectRatio",
      () => Rectangle(aspectRatio: negative),
    );
    assertTest("$Star negative points", () => Star(points: negative.toInt()));

    assertTest("$Moon negative radius", () => Moon(radius: negative));
  });
});
