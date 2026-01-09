// ignore_for_file: unnecessary_async, missing-test-assertion
import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/helpers/typed_locale_delegate.dart";
import "package:world_countries/src/theme/tile_theme_data/currency_tile_theme_data.dart";
import "package:world_countries/src/widgets/currency/currency_picker.dart";
import "package:world_countries/src/widgets/currency/currency_tile.dart";
import "package:world_countries/src/widgets/generic_widgets/list_item_tile.dart";
import "package:world_flags/world_flags.dart";

import "../../../helpers/widget_tester_extension.dart";

void main() => group("$CurrencyPicker", () {
  test("copyWith", () {
    const picker = CurrencyPicker();
    expect(picker.onSelect, isNull);
    final newPicker = picker.copyWith(onSelect: (item) => item.toString());
    newPicker.onSelect?.call(picker.items.first);
    expect(newPicker.onSelect, isNotNull);
    final newestPicker = newPicker.copyWith(onSelect: print);
    expect(newestPicker.onSelect, isNotNull);
    expect(newestPicker.copyWith(), isNot(newestPicker));
  });

  testWidgets(
    "scroll from first to last item and tap",
    (tester) async => tester.testPickerBody(
      const CurrencyPicker(),
      (item) => item.namesNative.first,
    ),
  );

  testWidgets(
    "builder from theme",
    (tester) async => tester.testPickerBody(
      const CurrencyPicker(),
      (item) => item.namesNative.first,
      theme: CurrencyTileThemeData(
        itemBuilder: (properties, _) => Text(properties.item.namesNative.first),
      ),
    ),
  );

  testWidgets(
    "scroll from first to last item and without selection test",
    (tester) async => tester.testPickerBody(
      const CurrencyPicker(),
      (item) => item.namesNative.first,
      testSelection: false,
    ),
  );

  testWidgets(
    "test behavior in dialog",
    (tester) async => tester.testPickerInDialog(
      const CurrencyPicker(),
      (item) => item.namesNative.first,
    ),
  );

  testWidgets(
    "test behavior in search",
    (tester) async => tester.testPickerInSearch(
      const CurrencyPicker(),
      (item) => item.namesNative.first,
    ),
  );

  testWidgets(
    "test behavior in modal bottom sheet",
    (tester) async => tester.testPickerInModal(
      const CurrencyPicker(),
      (item) => item.namesNative.first,
    ),
  );

  testWidgets("throw assert on empty $TypedLocaleDelegate", (tester) async {
    await tester.pumpMaterialApp(
      SearchAnchor.bar(
        suggestionsBuilder: const CurrencyPicker().searchSuggestions,
      ),
      null,
      const TypedLocaleDelegate.selectiveCache(),
    );
    final tile = find.byType(CurrencyTile);
    expect(tile, findsNothing);

    await expectLater(
      tester.tapAndSettle(find.byIcon(Icons.search)),
      throwsAssertionError,
    );
  });

  testWidgets("searchSuggestions()", (tester) async {
    await tester.pumpMaterialApp(
      SearchAnchor.bar(
        suggestionsBuilder: const CurrencyPicker().searchSuggestions,
      ),
      null,
      const TypedLocaleDelegate(asyncTranslationCacheProcessing: false),
    );
    final tile = find.byType(ListItemTile<FiatCurrency>);
    expect(tile, findsNothing);
    await tester.pumpAndSettle();
    await tester.tapAndSettle(find.byIcon(Icons.search));
    expect(tile, findsWidgets);
    await tester.tapAndSettle(tile.first);
    // ignore: avoid-duplicate-test-assertions, tile will be missing after.
    expect(tile, findsNothing);
  });

  group("adaptiveFlags", () {
    const danishKrone = FiatDkk();
    const greenland = CountryGrl();
    const danishFlag = BasicFlag(flagDnkProperties);
    const greenlandicFlag = BasicFlag(flagGrlProperties);
    const eurFlag = StarFlag(flagEurProperties);

    testWidgets("uses localeCountry to ignore platform locale", (tester) async {
      await tester.pumpMaterialApp(
        CurrencyPicker.adaptiveFlags(
          currencies: const [danishKrone],
          localeCountry: greenland,
        ),
      );
      await tester.pumpAndSettle();
      final tile = find.widgetWithText(
        CurrencyTile,
        danishKrone.namesNative.first,
      );
      expect(tile, findsOneWidget);
      final greenlandFlagFinder = find.byWidgetPredicate(
        (e) => e is BasicFlag && e.properties == greenlandicFlag.properties,
      );
      expect(greenlandFlagFinder, findsOneWidget);
      final danishFlagFinder = find.byWidgetPredicate(
        (e) => e is BasicFlag && e.properties == danishFlag.properties,
      );
      expect(danishFlagFinder, findsNothing);
    });

    testWidgets("uses platform locale if localeCountry isn't provided", (
      tester,
    ) async {
      // ignore: avoid-mutating-parameters, it's a test.
      final testDispatcher = tester.binding.platformDispatcher
        ..localesTestValue = const [
          Locale.fromSubtags(languageCode: "kl", countryCode: "GL"),
        ];
      addTearDown(testDispatcher.clearLocalesTestValue);

      await tester.pumpMaterialApp(
        CurrencyPicker.adaptiveFlags(currencies: const [danishKrone]),
      );
      final tile = find.widgetWithText(
        CurrencyTile,
        danishKrone.namesNative.first,
      );
      expect(tile, findsOneWidget);
      final greenlandFlagFinder = find.byWidgetPredicate(
        (e) => e is BasicFlag && e.properties == greenlandicFlag.properties,
      );
      expect(greenlandFlagFinder, findsOneWidget);
      final danishFlagFinder = find.byWidgetPredicate(
        (e) => e is BasicFlag && e.properties == danishFlag.properties,
      );
      expect(danishFlagFinder, findsNothing);
    });

    testWidgets(
      "respects flags provided in flagsMap and does not override them",
      (tester) async {
        await tester.pumpMaterialApp(
          CurrencyPicker.adaptiveFlags(
            currencies: const [danishKrone],
            flagsMap: const {danishKrone: eurFlag},
          ),
        );
        await tester.pumpAndSettle();
        final tile = find.widgetWithText(
          CurrencyTile,
          danishKrone.namesNative.first,
        );
        expect(tile, findsOneWidget);
        final eurFlagFinder = find.byWidgetPredicate(
          (e) => e is BasicFlag && e.properties == eurFlag.properties,
        );
        expect(eurFlagFinder, findsOneWidget);
        final danishFlagFinder = find.byWidgetPredicate(
          (e) => e is BasicFlag && e.properties == danishFlag.properties,
        );
        expect(danishFlagFinder, findsNothing);
      },
    );

    testWidgets("uses defaultFlagsMap for specific currencies", (tester) async {
      const euro = FiatEur();

      await tester.pumpMaterialApp(
        CurrencyPicker.adaptiveFlags(currencies: const [euro]),
      );
      await tester.pumpAndSettle();
      final tile = find.widgetWithText(CurrencyTile, euro.namesNative.first);
      expect(tile, findsOneWidget);
      final eurFlagFinder = find.byWidgetPredicate(
        (e) => e is BasicFlag && e.properties == flagEurProperties,
      );
      expect(eurFlagFinder, findsOneWidget);
      final danishFlagFinder = find.byWidgetPredicate(
        (e) => e is BasicFlag && e.properties == danishFlag.properties,
      );
      expect(danishFlagFinder, findsNothing);
    });

    testWidgets("flagMapper can customize the final flag", (tester) async {
      const customKey = Key("customized_flag");
      await tester.pumpMaterialApp(
        CurrencyPicker.adaptiveFlags(
          currencies: const [danishKrone],
          flagMapper: (flag, _, _) =>
              StarFlag(flagEurProperties, key: customKey, child: flag),
        ),
      );
      await tester.pumpAndSettle();
      final tileFinder = find.widgetWithText(
        CurrencyTile,
        danishKrone.namesNative.first,
      );
      expect(tileFinder, findsOneWidget);
      final customWidgetFinder = find.descendant(
        of: tileFinder,
        matching: find.byKey(customKey),
      );
      expect(customWidgetFinder, findsOneWidget);
    });

    testWidgets("showInModalBottomSheet shows a picker with adaptive flags", (
      tester,
    ) async {
      final picker = CurrencyPicker.adaptiveFlags(
        currencies: const [danishKrone],
        localeCountry: greenland,
      );

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Builder(
              builder: (context) => ElevatedButton(
                onPressed: () async => picker.showInModalBottomSheet(context),
                child: const Text("Show"),
              ),
            ),
          ),
        ),
      );

      await tester.tapAndSettle(find.byType(ElevatedButton));
      final tile = find.widgetWithText(
        CurrencyTile,
        danishKrone.namesNative.first,
      );
      expect(tile, findsOneWidget);

      final greenlandFlagFinder = find.byWidgetPredicate(
        (e) => e is BasicFlag && e.properties == greenlandicFlag.properties,
      );
      expect(greenlandFlagFinder, findsOneWidget);
    });
  });
});
