import "package:flutter/widgets.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/theme/tile_theme_data/base_tile_theme_data.dart";

void main() => group("$BaseTileThemeData", () {
  const original = BaseTileThemeData();

  test("copyWith", () {
    final copy = original.copyWith(
      itemBuilder: (_, tile) => Text("${tile.runtimeType}"),
    );

    expect(original, isNot(copy));
    expect(original.itemBuilder, isNull);
    expect(copy.itemBuilder, isNotNull);
  });

  test("lerp", () => expect(original.lerp(original, 1), original));
});
