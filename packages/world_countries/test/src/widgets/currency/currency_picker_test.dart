// ignore_for_file: unnecessary_async, missing-test-assertion
import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/helpers/typed_locale_delegate.dart";
import "package:world_countries/src/models/iso/iso_maps.dart";
import "package:world_countries/src/models/typedefs.dart";
import "package:world_countries/src/theme/pickers_theme_data.dart";
import "package:world_countries/src/theme/tile_theme_data/currency_tile_theme_data.dart";
import "package:world_countries/src/widgets/currency/currency_picker.dart";
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
    await tester.pump(Duration.zero);
  });

  testWidgets("searchSuggestions()", (tester) async {
    await tester.pumpMaterialApp(
      SearchAnchor.bar(
        suggestionsBuilder: const CurrencyPicker().searchSuggestions,
      ),
      null,
      const TypedLocaleDelegate(asyncTranslationCacheProcessing: false),
    );
    final tile = find.byType(CurrencyTile);
    expect(tile, findsNothing);
    await tester.pumpAndSettle();
    await tester.tapAndSettle(find.byIcon(Icons.search));
    expect(tile, findsWidgets);
    await tester.tapAndSettle(tile.first);
    // ignore: avoid-duplicate-test-assertions, tile will be missing after.
    expect(tile, findsNothing);
  });

  group("maps", () {
    const danishKrone = FiatDkk();
    const danishFlag = BasicFlag(flagDnkProperties);
    const greenlandicFlag = BasicFlag(flagGrlProperties);
    final widgetMaps = IsoMaps(
      currencyTranslations: {danishKrone: danishKrone.namesNative.first},
      currencyFlags: const {danishKrone: greenlandicFlag},
    );
    final themeMaps = IsoMaps(
      currencyTranslations: {danishKrone: danishKrone.namesNative.first},
      currencyFlags: const {danishKrone: danishFlag},
    );

    testWidgets("uses widget maps to render flags", (tester) async {
      await tester.pumpMaterialApp(
        CurrencyPicker(currencies: const [danishKrone], maps: widgetMaps),
      );
      await tester.pumpAndSettle();
      final tileText = find.text(danishKrone.namesNative.first);
      expect(tileText, findsWidgets);

      final greenlandFlagFinder = find.byWidgetPredicate(
        (widget) =>
            widget is BasicFlag &&
            widget.properties == greenlandicFlag.properties,
      );
      expect(greenlandFlagFinder, findsOneWidget);
    });

    testWidgets("uses theme maps when widget maps missing", (tester) async {
      await tester.pumpMaterialApp(
        const CurrencyPicker(currencies: [danishKrone]),
        PickersThemeData(maps: themeMaps),
      );
      await tester.pumpAndSettle();
      final tileText = find.text(danishKrone.namesNative.first);
      expect(tileText, findsWidgets);

      final danishFlagFinder = find.byWidgetPredicate(
        (widget) =>
            widget is BasicFlag && widget.properties == danishFlag.properties,
      );
      expect(danishFlagFinder, findsOneWidget);
    });

    testWidgets("prefers widget maps over theme maps", (tester) async {
      await tester.pumpMaterialApp(
        CurrencyPicker(currencies: const [danishKrone], maps: widgetMaps),
        PickersThemeData(maps: themeMaps),
      );
      await tester.pumpAndSettle();
      final tileText = find.text(danishKrone.namesNative.first);
      expect(tileText, findsWidgets);

      final greenlandFlagFinder = find.byWidgetPredicate(
        (widget) =>
            widget is BasicFlag &&
            widget.properties == greenlandicFlag.properties,
      );
      final danishFlagFinder = find.byWidgetPredicate(
        (widget) =>
            widget is BasicFlag && widget.properties == danishFlag.properties,
      );
      expect(greenlandFlagFinder, findsOneWidget);
      expect(danishFlagFinder, findsNothing);
    });
  });
});
