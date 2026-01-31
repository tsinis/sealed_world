// ignore_for_file: avoid-non-ascii-symbols, for test assertions readability.
// ignore_for_file: prefer-match-file-name, testing protected method.

import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/helpers/typed_locale_delegate.dart";
import "package:world_countries/src/model/iso/iso_collections.dart";
import "package:world_countries/src/model/iso/iso_maps.dart";
import "package:world_countries/src/theme/pickers_theme_data.dart";
import "package:world_countries/src/widgets/country/country_picker.dart";
import "package:world_countries/src/widgets/pickers/basic_picker.dart";
import "package:world_flags/world_flags.dart";

import "../../../helpers/widget_tester_extension.dart";

void main() => group("$BasicPicker", () {
  const testCountry = CountryUsa();
  const anotherCountry = CountryGbr();
  const testTranslation = "United States";
  const testMap = IsoMaps(countryTranslations: {testCountry: testTranslation});

  group("maybeNameTranslation() asserts", () {
    group("direct `maps` parameter", () {
      testWidgets("throws when translation missing", (tester) async {
        const picker = _BasicPickerTest(
          maps: IsoMaps(countryTranslations: {anotherCountry: "Britain"}),
        );
        final context = await tester.contextExtractor();

        expect(
          () => picker.maybeNameTranslation(testCountry, context),
          throwsAssertionError,
        );
      });

      testWidgets("does not throw when translation exists", (tester) async {
        const picker = _BasicPickerTest(maps: testMap);
        final context = await tester.contextExtractor();

        final result = picker.maybeNameTranslation(testCountry, context);
        expect(result, equals(testTranslation));
      });

      testWidgets("returns null when no maps provided", (tester) async {
        const picker = _BasicPickerTest();
        final context = await tester.contextExtractor();

        final result = picker.maybeNameTranslation(testCountry, context);
        expect(result, isNull);
      });
    });

    group("theme `maps` parameter", () {
      testWidgets("throws when translation missing", (tester) async {
        const picker = _BasicPickerTest();
        await tester.pumpMaterialApp(
          const SizedBox(),
          const PickersThemeData(
            maps: IsoMaps(countryTranslations: {anotherCountry: "Britain"}),
          ),
        );
        final context = tester.element(find.byType(SizedBox));

        expect(
          () => picker.maybeNameTranslation(testCountry, context),
          throwsAssertionError,
        );
      });

      testWidgets("does not throw when translation exists", (tester) async {
        const picker = _BasicPickerTest();
        await tester.pumpMaterialApp(
          const SizedBox(),
          const PickersThemeData(maps: testMap),
        );
        final context = tester.element(find.byType(SizedBox));

        final result = picker.maybeNameTranslation(testCountry, context);
        expect(result, equals(testTranslation));
      });

      testWidgets("direct maps takes precedence over theme", (tester) async {
        const picker = _BasicPickerTest(
          maps: IsoMaps(countryTranslations: {testCountry: "Direct"}),
        );
        await tester.pumpMaterialApp(
          const SizedBox(),
          const PickersThemeData(
            maps: IsoMaps(countryTranslations: {testCountry: "Theme"}),
          ),
        );
        final context = tester.element(find.byType(SizedBox));

        final result = picker.maybeNameTranslation(testCountry, context);
        expect(result, equals("Direct"));
      });
    });

    group("global TypedLocaleDelegate", () {
      testWidgets("throws when translation missing", (tester) async {
        const picker = _BasicPickerTest();
        await tester.pumpWidget(
          MaterialApp(
            home: Builder(
              builder: (context) {
                expect(
                  () => picker.maybeNameTranslation(testCountry, context),
                  throwsAssertionError,
                );

                return const SizedBox();
              },
            ),
            localizationsDelegates: const [
              TypedLocaleDelegate(
                asyncTranslationCacheProcessing: false,
                isoCollections: IsoCollections(
                  countriesForTranslationCache: [anotherCountry],
                ),
              ),
            ],
            supportedLocales: const [Locale("en")],
          ),
        );
        await tester.pumpAndSettle();
      });

      testWidgets("does not throw when translation exists", (tester) async {
        const picker = _BasicPickerTest();
        String? result;

        await tester.pumpWidget(
          MaterialApp(
            home: Builder(
              builder: (context) {
                result = picker.maybeNameTranslation(testCountry, context);

                return const SizedBox();
              },
            ),
            localizationsDelegates: const [
              TypedLocaleDelegate(
                asyncTranslationCacheProcessing: false,
                isoCollections: IsoCollections(
                  countriesForTranslationCache: [testCountry],
                ),
              ),
            ],
            supportedLocales: const [Locale("en")],
          ),
        );
        await tester.pumpAndSettle();

        expect(result, isNotNull);
      });

      testWidgets("theme takes precedence over delegate", (tester) async {
        const picker = _BasicPickerTest();
        String? result;

        await tester.pumpWidget(
          MaterialApp(
            home: Builder(
              builder: (context) {
                result = picker.maybeNameTranslation(testCountry, context);

                return const SizedBox();
              },
            ),
            theme: ThemeData(
              extensions: const [
                PickersThemeData(
                  maps: IsoMaps(countryTranslations: {testCountry: "Theme"}),
                ),
              ],
            ),
            localizationsDelegates: const [
              TypedLocaleDelegate(
                asyncTranslationCacheProcessing: false,
                isoCollections: IsoCollections(
                  countriesForTranslationCache: [anotherCountry],
                ),
              ),
            ],
            supportedLocales: const [Locale("en")],
          ),
        );
        await tester.pumpAndSettle();

        expect(result, equals("Theme"));
      });
    });

    group("precedence order", () {
      testWidgets("direct > theme > global", (tester) async {
        const picker = _BasicPickerTest(
          maps: IsoMaps(countryTranslations: {testCountry: "Direct"}),
        );
        String? result;

        await tester.pumpWidget(
          MaterialApp(
            home: Builder(
              builder: (context) {
                result = picker.maybeNameTranslation(testCountry, context);

                return const SizedBox();
              },
            ),
            theme: ThemeData(
              extensions: const [
                PickersThemeData(
                  maps: IsoMaps(countryTranslations: {testCountry: "Theme"}),
                ),
              ],
            ),
            localizationsDelegates: const [
              TypedLocaleDelegate(
                asyncTranslationCacheProcessing: false,
                isoCollections: IsoCollections(
                  countriesForTranslationCache: [testCountry],
                ),
              ),
            ],
            supportedLocales: const [Locale("en")],
          ),
        );
        await tester.pumpAndSettle();

        expect(result, equals("Direct"));
      });

      testWidgets("returns null when no translations available", (
        tester, // Dart 3.8 formatting.
      ) async {
        const picker = _BasicPickerTest();
        final context = await tester.contextExtractor();

        final result = picker.maybeNameTranslation(testCountry, context);
        expect(result, isNull);
      });
    });
  });
});

/// Test subclass to expose protected method.
class _BasicPickerTest extends CountryPicker {
  const _BasicPickerTest({super.maps});

  @override
  String? maybeNameTranslation(WorldCountry item, BuildContext context) =>
      super.maybeNameTranslation(item, context);
}
