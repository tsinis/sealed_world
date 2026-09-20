// Stage 1 bridge: this file intentionally uses the deprecated FlagThemeData
// shim that bridges Material ThemeExtension to FlagTheme. It will be removed
// in Stage 2 alongside the shim itself.
import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/theme/flag_theme_data.dart";
import "package:world_flags/world_flags.dart" as a;

void main() => group("$FlagThemeData in world_countries", () {
  tearDown(a.FlagTheme.debugResetFallbackResolvers);

  test("implements a.DecoratedFlagInterface", () {
    const theme = FlagThemeData(height: 20);
    expect(theme, isA<a.DecoratedFlagInterface>());
    expect(theme.height, 20);
  });

  test("type getter triggers bridge", () {
    expect(a.FlagTheme.fallbackResolvers, isEmpty);
    const theme = FlagThemeData();
    final type = theme.type;
    expect(type, isA<Type>());
    expect(a.FlagTheme.fallbackResolvers, isNotEmpty);
  });

  testWidgets("bridges Material ThemeExtension to FlagTheme.maybeOf", (
    tester,
  ) async {
    const theme = FlagThemeData(height: 28);
    a.DecoratedFlagInterface? resolved;

    await tester.pumpWidget(
      MaterialApp(
        theme: ThemeData(extensions: const [theme]),
        home: Builder(
          builder: (context) {
            resolved = a.FlagTheme.maybeOf(context);

            return const SizedBox();
          },
        ),
      ),
    );

    expect(resolved?.height, 28);
  });

  test("lerp works as expected", () {
    const start = FlagThemeData(height: 100);
    const end = FlagThemeData(height: 200);

    final result = start.lerp(end, 0.5);
    expect(result.height, 150);
    expect(result, isA<FlagThemeData>());
  });
});
