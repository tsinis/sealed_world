// ignore_for_file: avoid-non-ascii-symbols, for test assertions readability.
// ignore_for_file: prefer-match-file-name, testing protected method.

import "package:flutter/foundation.dart"
    show FlutterMemoryAllocations, ObjectCreated, ObjectDisposed, ObjectEvent;
import "package:flutter/widgets.dart";
import "package:flutter_test/flutter_test.dart";
import "package:material_ui/material_ui.dart"
    show MaterialApp, TextField, ThemeData;
import "package:world_countries/src/helpers/typed_locale_delegate.dart";
import "package:world_countries/src/model/iso/iso_collections.dart";
import "package:world_countries/src/model/iso/iso_maps.dart";
import "package:world_countries/src/model/typedefs.dart";
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

  group("returns the selected item", () {
    const picker = CountryPicker(countries: [testCountry]);

    testWidgets("from showInModalBottomSheet", (tester) async {
      final context = await tester.contextExtractor();
      final selected = picker.showInModalBottomSheet(context);
      await tester.pumpAndSettle();
      await tester.tapAndSettle(find.byType(CountryTile));

      expect(await selected, testCountry);
    });

    testWidgets("from showInDialog", (tester) async {
      final context = await tester.contextExtractor();
      final selected = picker.showInDialog(context);
      await tester.pumpAndSettle();
      await tester.tapAndSettle(find.byType(CountryTile));

      expect(await selected, testCountry);
    });

    testWidgets("from showInSearch on the root navigator", (tester) async {
      const nestedPage = Key("nested");
      await tester.pumpMaterialApp(
        Navigator(
          onGenerateRoute: (_) => PageRouteBuilder<void>(
            pageBuilder: (_, _, _) => const SizedBox(key: nestedPage),
          ),
        ),
      );
      final selected = picker.showInSearch(
        tester.element(find.byKey(nestedPage)),
        useRootNavigator: true,
      );
      await tester.pumpAndSettle();
      await tester.tapAndSettle(find.byType(CountryTile));

      expect(await selected, testCountry);
      expect(find.byKey(nestedPage), findsOneWidget);
    });
  });

  testWidgets("pops a route above the one of the picker without the item", (
    tester, // Dart 3.8 formatting.
  ) async {
    const routeAbove = Key("above");
    final context = await tester.contextExtractor();
    final popped = Navigator.of(context).push(
      PageRouteBuilder<bool>(
        pageBuilder: (_, _, _) => const SizedBox(key: routeAbove),
      ),
    );
    await tester.pumpAndSettle();

    const _BasicPickerTest().maybeSelectAndPop(testCountry, context);
    await tester.pumpAndSettle();
    expect(find.byKey(routeAbove), findsNothing);
    expect(await popped, isNull);
  });

  group("search text controller", () {
    testWidgets("is not created next to a given one", (tester) async {
      final alive = _trackControllers();
      final controller = TextEditingController();
      addTearDown(controller.dispose);
      await tester.pumpMaterialApp(
        CountryPicker(
          searchBar: TextField(
            autofillHints: const ["test"],
            controller: controller,
          ),
        ),
      );
      expect(_fieldController(tester), controller);

      await tester.pumpWidget(const SizedBox());
      expect(alive.controllers, {controller});
    });

    testWidgets("is disposed when the picker is", (tester) async {
      final alive = _trackControllers();
      await tester.pumpMaterialApp(const CountryPicker());
      expect(alive.controllers, hasLength(1));

      await tester.pumpWidget(const SizedBox());
      expect(alive.controllers, isEmpty);
    });

    testWidgets("replaces a given one that is removed", (tester) async {
      final alive = _trackControllers();
      final controller = TextEditingController(text: "Ger");
      addTearDown(controller.dispose);
      await tester.pumpMaterialApp(
        CountryPicker(
          searchBar: TextField(
            autofillHints: const ["test"],
            controller: controller,
          ),
        ),
      );
      await tester.pumpMaterialApp(const CountryPicker());
      expect(_fieldController(tester), isNot(controller));
      expect(_fieldController(tester)?.text, "Ger");

      await tester.pumpWidget(const SizedBox());
      expect(alive.controllers, {controller}, reason: "A given one is kept.");
    });

    testWidgets("is replaced by one given later", (tester) async {
      final alive = _trackControllers();
      final controller = TextEditingController();
      addTearDown(controller.dispose);
      await tester.pumpMaterialApp(const CountryPicker());
      await tester.pumpMaterialApp(
        CountryPicker(
          searchBar: TextField(
            autofillHints: const ["test"],
            controller: controller,
          ),
        ),
      );
      await tester.enterText(find.byType(TextField), "Ger");
      expect(controller.text, "Ger");

      await tester.pumpWidget(const SizedBox());
      expect(alive.controllers, {controller});
    });
  });

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
  const new({super.maps});

  @override
  String? maybeNameTranslation(WorldCountry item, BuildContext context) =>
      super.maybeNameTranslation(item, context);

  @override
  WorldCountry maybeSelectAndPop(WorldCountry item, BuildContext context) =>
      super.maybeSelectAndPop(item, context);
}

TextEditingController? _fieldController(WidgetTester tester) =>
    tester.widget<TextField>(find.byType(TextField)).controller;

_AliveControllers _trackControllers() {
  final alive = _AliveControllers();
  final allocations = FlutterMemoryAllocations.instance
    ..addListener(alive.handleEvent);
  addTearDown(() => allocations.removeListener(alive.handleEvent));

  return alive;
}

/// Tracks the text editing controllers created and not disposed in a test.
final class _AliveControllers {
  final controllers = <TextEditingController>{};

  void handleEvent(ObjectEvent event) {
    final object = event.object;
    if (object is! TextEditingController) return;
    // ignore: avoid-collection-mutating-methods, it's the point of a tracker.
    if (event is ObjectCreated) controllers.add(object);
    // ignore: avoid-collection-mutating-methods, it's the point of a tracker.
    if (event is ObjectDisposed) controllers.remove(object);
  }
}
