import "package:_sealed_world_tests/sealed_world_tests.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_flags/src/model/shape.dart";

void main() => group("$Shape", () {
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
