import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_countries/world_countries.dart";
import "package:world_flags/world_flags.dart" as flags;

void main() {
  group("FlagThemeData bridge", () {
    tearDown(flags.FlagTheme.debugResetFallbackResolvers);

    testWidgets(
      "provides theme data to flags without FlagTheme wrapper, "
      "proving ensureBridge works",
      (tester) async {
        const expectedHeight = 42.0;
        const expectedDecoration = BoxDecoration(color: Colors.red);
        final properties = const CountryAfg().flagProperties;
        if (properties == null) fail("Flag properties are null.");

        await tester.pumpWidget(
          MaterialApp(
            theme: ThemeData(
              extensions: const [
                FlagThemeData(
                  height: expectedHeight,
                  decoration: expectedDecoration,
                ),
              ],
            ),
            home: Scaffold(body: flags.BasicFlag(properties)),
          ),
        );

        final flagFinder = find.byType(flags.BasicFlag);
        expect(flagFinder, findsOneWidget);

        final sizedBoxFinder = find
            .descendant(of: flagFinder, matching: find.byType(SizedBox))
            .first;

        final sizedBox = tester.widget<SizedBox>(sizedBoxFinder);
        expect(sizedBox.height, expectedHeight);

        final decoratedBoxFinder = find
            .descendant(of: flagFinder, matching: find.byType(DecoratedBox))
            .first;
        final decoratedBox = tester.widget<DecoratedBox>(decoratedBoxFinder);
        expect(decoratedBox.decoration, expectedDecoration);
      }, // Dart 3.8 formatting.
    );

    testWidgets(
      "provides theme data to flags rendered via IsoTile in pickers",
      (tester) async {
        const expectedHeight = 50.0;
        const expectedDecoration = BoxDecoration(color: Colors.blue);
        const country = CountryAfg();
        final properties = country.flagProperties;
        if (properties == null) fail("Flag properties are null.");
        final flag = flags.BasicFlag(properties);

        // We wrap the Tile in Builder so we have a context to pass to
        // ItemProperties and resolve the flagTheme via context.flagTheme
        // (which pickers use).
        await tester.pumpWidget(
          MaterialApp(
            theme: ThemeData(
              extensions: const [
                FlagThemeData(
                  height: expectedHeight,
                  decoration: expectedDecoration,
                ),
              ],
            ),
            home: Scaffold(
              body: Builder(
                builder: (context) => CountryTile.fromProperties(
                  ItemProperties(context, country, index: 0),
                  leadingFlag: flag,
                  flagTheme:
                      context.flagTheme, // Explicitly passing what picker pass.
                ),
              ),
            ),
          ),
        );

        final flagFinder = find.byType(flags.BasicFlag);
        expect(flagFinder, findsWidgets);

        final sizedBoxFinder = find
            .descendant(of: flagFinder, matching: find.byType(SizedBox))
            .first;

        final sizedBox = tester.widget<SizedBox>(sizedBoxFinder);
        expect(sizedBox.height, expectedHeight);

        final decoratedBoxFinder = find
            .descendant(of: flagFinder, matching: find.byType(DecoratedBox))
            .first;
        final decoratedBox = tester.widget<DecoratedBox>(decoratedBoxFinder);
        expect(decoratedBox.decoration, expectedDecoration);
      },
    );

    testWidgets("Inherited FlagTheme overrides ThemeExtension correctly", (
      tester,
    ) async {
      const extensionHeight = 42.0;
      const inheritedHeight = 100.0;
      final properties = const CountryAfg().flagProperties;
      if (properties == null) fail("Flag properties are null.");

      await tester.pumpWidget(
        MaterialApp(
          theme: ThemeData(
            extensions: const [FlagThemeData(height: extensionHeight)],
          ),
          home: Scaffold(
            body: flags.FlagTheme(
              data: const flags.DecoratedFlagData(height: inheritedHeight),
              child: flags.BasicFlag(properties),
            ),
          ),
        ),
      );

      final flagFinder = find.byType(flags.BasicFlag);
      final sizedBoxFinder = find
          .descendant(of: flagFinder, matching: find.byType(SizedBox))
          .first;

      final sizedBox = tester.widget<SizedBox>(sizedBoxFinder);
      expect(sizedBox.height, inheritedHeight);
    });
  });
}
