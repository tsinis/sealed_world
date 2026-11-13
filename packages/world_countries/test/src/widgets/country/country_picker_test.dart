// ignore_for_file: unnecessary_async, async_return_with_no_await, it's a test.

import "package:flutter/rendering.dart"
    show ItemExtentBuilder, SliverLayoutDimensions;
import "package:flutter/widgets.dart";
import "package:flutter_test/flutter_test.dart";
import "package:material_ui/material_ui.dart"
    show Icons, SearchAnchor, TextField;
import "package:world_countries/src/helpers/typed_locale_delegate.dart";
import "package:world_countries/src/model/iso/iso_maps.dart";
import "package:world_countries/src/model/search_data.dart";
import "package:world_countries/src/model/typedefs.dart";
import "package:world_countries/src/theme/pickers_theme_data.dart";
import "package:world_countries/src/theme/tile_theme_data/country_tile_theme_data.dart";
import "package:world_countries/src/widgets/country/country_picker.dart";
import "package:world_flags/world_flags.dart";

import "../../../helpers/widget_tester_extension.dart";

void main() => group("$CountryPicker", () {
  group("itemExtentBuilder", () {
    testWidgets("reaches the list over the theme", (tester) async {
      await tester.pumpMaterialApp(
        const CountryPicker(
          itemExtentBuilder: WidgetTesterExtension.itemExtent,
        ),
        const PickersThemeData(itemExtentBuilder: _themeExtent),
      );

      expect(_listExtent(tester), WidgetTesterExtension.itemExtent);
      expect(tester.getSize(find.byType(CountryTile).first).height, 48);
    });

    testWidgets("reaches the list of search results", (tester) async {
      await tester.pumpMaterialApp(
        const CountryPicker(
          itemExtentBuilder: WidgetTesterExtension.itemExtent,
        ),
        const PickersThemeData(itemExtentBuilder: _themeExtent),
      );
      await tester.enterText(find.byType(TextField), "Ger");
      await tester.pumpAndSettle();

      expect(_listExtent(tester), WidgetTesterExtension.itemExtent);
      expect(tester.getSize(find.byType(CountryTile).first).height, 48);
    });

    testWidgets("falls back to the theme", (tester) async {
      await tester.pumpMaterialApp(
        const CountryPicker(),
        const PickersThemeData(itemExtentBuilder: _themeExtent),
      );
      expect(_listExtent(tester), _themeExtent);
    });

    testWidgets("works in a shrink-wrapped picker", (tester) async {
      await tester.pumpMaterialApp(
        const CountryPicker(
          shrinkWrap: true,
          itemExtentBuilder: WidgetTesterExtension.itemExtent,
        ),
      );
      expect(tester.takeException(), isNull);
      expect(find.byType(CountryTile), findsWidgets);
    });
  });

  test("copyWith updates and keeps itemExtentBuilder", () {
    final picker = const CountryPicker().copyWith(
      itemExtentBuilder: WidgetTesterExtension.itemExtent,
    );
    expect(picker.itemExtentBuilder, WidgetTesterExtension.itemExtent);
    expect(
      picker.copyWith().itemExtentBuilder,
      WidgetTesterExtension.itemExtent,
    );
  });

  test("copyWith", () {
    const picker = CountryPicker();
    expect(picker.onSelect, isNull);
    final newPicker = picker.copyWith(onSelect: (item) => item.toString());
    newPicker.onSelect?.call(picker.resolvedItems().first);
    expect(newPicker.onSelect, isNotNull);
    final newestPicker = newPicker.copyWith(onSelect: print);
    expect(newestPicker.onSelect, isNotNull);
    expect(newestPicker.copyWith(), isNot(newestPicker));
  });

  testWidgets("defaultItems hands the cache over as a list", (tester) async {
    const picker = CountryPicker(
      maps: IsoMaps(countryTranslations: {CountryUsa(): "USA"}),
    );
    await tester.pumpMaterialApp(picker);

    final items = picker.resolvedItems(
      tester.element(find.byType(CountryPicker)),
    );
    // Rows are read by index, so the keys are handed over as a list rather
    // than walked from the start for every row.
    expect(items, isA<List<WorldCountry>>());
    expect(items, [const CountryUsa()]);
  });

  test("defaultItems falls back to every country without a cache", () {
    expect(const CountryPicker().resolvedItems(), same(WorldCountry.list));
  });

  testWidgets("copyWith itemBuilder fallback to defaultBuilder", (
    tester, // Dart 3.8 formatting.
  ) async {
    const testText = "Original";
    final picker = CountryPicker(
      countries: const [CountryUsa()],
      itemBuilder: (props, tile) => const Text(testText),
    );
    const newTestText = "New";
    final newPicker = picker.copyWith(
      itemBuilder: (props, tile) => const Text(newTestText),
    );

    await tester.pumpMaterialApp(newPicker);
    expect(find.text(newTestText), findsWidgets);
    expect(find.text(testText), findsNothing);
  });

  testWidgets("copyWith itemBuilder chains to existing", (tester) async {
    const testText = "Chained";
    final picker = CountryPicker(
      countries: const [CountryUsa()],
      itemBuilder: (props, tile) => const Text(testText),
    );
    final newPicker = picker.copyWith();

    await tester.pumpMaterialApp(newPicker);
    expect(find.text(testText), findsWidgets);
  });

  testWidgets(
    "scroll from first to last item and tap",
    (tester) async => tester.testPickerBody(
      const CountryPicker(),
      (item) => item.namesNative.first.common,
    ),
  );

  testWidgets(
    "builder from theme",
    (tester) async => tester.testPickerBody(
      const CountryPicker(),
      (item) => item.namesNative.first.common,
      theme: CountryTileThemeData(
        itemBuilder: (properties, _) =>
            Text(properties.item.namesNative.first.common),
      ),
    ),
  );

  testWidgets(
    "test behavior in dialog",
    (tester) async => tester.testPickerInDialog(
      const CountryPicker(),
      (item) => item.namesNative.first.common,
    ),
  );

  testWidgets(
    "test behavior in search",
    (tester) async => tester.testPickerInSearch(
      const CountryPicker(),
      (item) => item.namesNative.first.common,
    ),
  );

  testWidgets(
    "test behavior in modal bottom sheet",
    (tester) async => tester.testPickerInModal(
      const CountryPicker(),
      (item) => item.namesNative.first.common,
    ),
  );

  testWidgets(
    "showSearchBar: false and without selection test",
    (tester) async => tester.testPickerBody(
      CountryPicker(
        searchIn: (_, _) => SearchData.empty(),
        showClearButton: false,
        showSearchBar: false,
      ),
      (item) => item.namesNative.first.common,
      testSelection: false,
    ),
  );

  testWidgets("throws assert on empty $IsoMaps in theme", (tester) async {
    bool assertionThrown = false;
    final originalOnError = FlutterError.onError;

    FlutterError.onError = (details) {
      if (details.exception is AssertionError &&
          details.exception.toString().contains(
            "The $IsoMaps passed to the `maps` contains an empty",
          )) {
        assertionThrown = true;
      } else {
        originalOnError?.call(details);
      }
    };

    try {
      await tester.pumpMaterialApp(
        const CountryPicker(),
        const PickersThemeData(maps: IsoMaps()),
      );

      expect(assertionThrown, isTrue);
    } finally {
      FlutterError.onError = originalOnError;
    }
  });

  testWidgets("throws assert on empty $IsoMaps in picker", (tester) async {
    bool assertionThrown = false;
    final originalOnError = FlutterError.onError;

    FlutterError.onError = (details) {
      if (details.exception is AssertionError &&
          details.exception.toString().contains(
            "The $IsoMaps passed to the `maps` contains an empty",
          )) {
        assertionThrown = true;
      } else {
        originalOnError?.call(details);
      }
    };

    try {
      await tester.pumpMaterialApp(const CountryPicker(maps: IsoMaps()));

      expect(assertionThrown, isTrue);
    } finally {
      FlutterError.onError = originalOnError;
    }
  });

  testWidgets("throws assert on empty $TypedLocaleDelegate", (tester) async {
    await tester.pumpMaterialApp(
      SearchAnchor.bar(
        suggestionsBuilder: const CountryPicker().searchSuggestions,
      ),
      null,
      const TypedLocaleDelegate.selectiveCache(),
    );
    final tile = find.byType(CountryTile);
    expect(tile, findsNothing);

    await expectLater(
      tester.tapAndSettle(find.byIcon(Icons.search)),
      throwsAssertionError,
    );
    await tester.pump(Duration.zero);
  });

  group("searchSuggestions()", () {
    const firstCountry = CountryPrk();
    const lastCountry = CountryKor();
    const neverFoundCountry = CountryAbw();

    testWidgets("tap on tile", (tester) async {
      await tester.pumpMaterialApp(
        SearchAnchor.bar(
          suggestionsBuilder: const CountryPicker().searchSuggestions,
        ),
      );
      final tile = find.byType(CountryTile);
      expect(tile, findsNothing);
      await tester.tapAndSettle(find.byIcon(Icons.search));
      expect(tile, findsWidgets);
      await tester.tapAndSettle(tile.first);
      // ignore: avoid-duplicate-test-assertions, tile will be missing after.
      expect(tile, findsNothing);
    });

    testWidgets("default search", (tester) async {
      await tester.pumpMaterialApp(
        SearchAnchor.bar(
          suggestionsBuilder: const CountryPicker().searchSuggestions,
        ),
      );

      final tile = find.byType(CountryTile);
      expect(tile, findsNothing);
      await tester.tapAndSettle(find.byIcon(Icons.search));
      await tester.enterText(
        find.byType(TextField).first,
        firstCountry.internationalName,
      );
      await tester.pumpAndSettle();
      expect(find.text(firstCountry.namesNative.first.common), findsWidgets);
      expect(find.text(lastCountry.namesNative.first.common), findsNothing);
      expect(
        find.text(neverFoundCountry.namesNative.first.common),
        findsNothing,
      );
    });

    testWidgets("with onSearchResultsBuilder", (tester) async {
      await tester.pumpMaterialApp(
        SearchAnchor.bar(
          suggestionsBuilder: CountryPicker(
            onSearchResultsBuilder: (query, _) =>
                query.isEmpty ? const [] : [firstCountry, lastCountry],
          ).searchSuggestions,
        ),
      );

      final tile = find.byType(CountryTile);
      expect(tile, findsNothing);
      await tester.tapAndSettle(find.byIcon(Icons.search));
      await tester.enterText(
        find.byType(TextField).first,
        firstCountry.internationalName,
      );
      await tester.pumpAndSettle();
      expect(find.text(firstCountry.namesNative.first.common), findsWidgets);
      expect(find.text(lastCountry.namesNative.first.common), findsWidgets);
      expect(
        find.text(neverFoundCountry.namesNative.first.common),
        findsNothing,
      );
    });
  });

  testWidgets("in $WidgetsApp with sorted countries", (tester) async {
    final countries = List.of(WorldCountry.list)
      ..sort((a, b) => a.population.compareTo(b.population));
    await tester.pumpWidgetsApp(
      CountryPicker(
        countries: countries,
        chosen: [countries.last],
        disabled: [countries.first],
        showSearchBar: false,
      ),
    );
    expect(find.byType(CountryPicker), findsOneWidget);
    expect(find.text(countries.first.namesNative.first.common), findsOneWidget);
    expect(find.text(countries.last.namesNative.first.common), findsNothing);
  });

  testWidgets("in $WidgetsApp with sorted via sort param", (tester) async {
    final countries = List.of(WorldCountry.list);
    await tester.pumpWidgetsApp(
      CountryPicker(
        countries: countries,
        chosen: [countries.last],
        disabled: [countries.first],
        showSearchBar: false,
        sort: (a, b) => a.population.compareTo(b.population),
      ),
    );
    final sortedCountries = List.of(WorldCountry.list)
      ..sort((a, b) => a.population.compareTo(b.population));
    expect(find.byType(CountryPicker), findsOneWidget);
    expect(
      find.text(sortedCountries.first.namesNative.first.common),
      findsOneWidget,
    );
    expect(
      find.text(sortedCountries.last.namesNative.first.common),
      findsNothing,
    );
  });

  testWidgets("in $WidgetsApp with empty countries", (tester) async {
    await tester.pumpWidgetsApp(
      const CountryPicker(
        countries: [],
        emptyStatePlaceholder: Placeholder(),
        showClearButton: false,
        showSearchBar: false,
      ),
    );
    expect(find.byType(CountryPicker), findsOneWidget);
    expect(find.byType(Placeholder), findsOneWidget);
  });
});

/// A theme extent, different from [WidgetTesterExtension.itemExtent].
double _themeExtent(int index, SliverLayoutDimensions _) => 10;

/// The item extent builder of the (only) list of a picker.
ItemExtentBuilder? _listExtent(WidgetTester tester) =>
    tester.widget<ListView>(_listView).itemExtentBuilder;

/// The (only) list of a picker.
// ignore: avoid-explicit-type-declaration, vs specify_nonobvious_property_types.
final Finder _listView = find.byType(ListView);
