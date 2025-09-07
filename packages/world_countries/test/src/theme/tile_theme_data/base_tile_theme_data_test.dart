import "package:flutter/widgets.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/theme/tile_theme_data/base_tile_theme_data.dart";

void main() => group("$BaseTileThemeData", () {
  const original = BaseTileThemeData();

  test("copyWith", () {
    final copy = original.copyWith(builder: (_, {isDense}) => Text("$isDense"));

    expect(original, isNot(copy));
    expect(original.builder, isNull);
    expect(copy.builder, isNotNull);
  });

  // ignore: avoid-passing-self-as-argument, it's a test.
  test("lerp", () => expect(original.lerp(original, 1), original));
});
