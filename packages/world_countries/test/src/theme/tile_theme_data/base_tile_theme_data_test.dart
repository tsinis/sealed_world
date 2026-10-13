import "package:flutter/widgets.dart";
import "package:flutter_test/flutter_test.dart";
import "package:material_ui/material_ui.dart" show ThemeData;
import "package:world_countries/src/theme/tile_theme_data/base_tile_theme_data.dart";
import "package:world_flags/world_flags.dart" show WorldCountry;

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

  test("lerp switches to the other theme halfway", () {
    final other = BaseTileThemeData<WorldCountry>(
      itemBuilder: (_, tile) => tile,
    );
    const theme = BaseTileThemeData<WorldCountry>();

    expect(theme.lerp(other, 0.4), theme);
    expect(theme.lerp(other, 0.5), other);
    expect(theme.lerp(other, 1), other);
    expect(theme.lerp(null, 1), theme);
  });

  test("ThemeData.lerp keeps the tile theme of the end theme", () {
    final end = BaseTileThemeData<WorldCountry>(itemBuilder: (_, tile) => tile);
    final lerped = ThemeData.lerp(
      ThemeData(extensions: const [BaseTileThemeData<WorldCountry>()]),
      ThemeData(extensions: [end]),
      1,
    );

    expect(lerped.extension<BaseTileThemeData<WorldCountry>>(), end);
  });
});
