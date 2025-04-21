// ignore_for_file: unnecessary_async, just a test.

import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/helpers/typed_locale_delegate.dart";
import "package:world_countries/src/models/locale/typed_locale.dart";
import "package:world_countries/src/theme/pickers_theme_data.dart";
import "package:world_countries/src/theme/tile_theme_data/country_tile_theme_data.dart";
import "package:world_countries/src/widgets/country/country_picker.dart";
import "package:world_countries/src/widgets/country/country_tile.dart";
import "package:world_flags/world_flags.dart";

import "../../../helpers/widget_tester_extension.dart";

void main() => group("$CountryPicker", () {
  test("copyWith", () {
    const picker = CountryPicker();
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
      const CountryPicker(),
      (item) => item.namesNative.first.common,
    ),
  );

  testWidgets(
    "builder from theme",
    (tester) async => tester.testPickerBody(
      const CountryPicker(),
      (item) => item.translations.first.common,
      theme: CountryTileThemeData(
        builder:
            (properties, {isDense}) =>
                Text(properties.item.translations.first.common),
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
        searchIn: (_, _) => const [],
        showClearButton: false,
        showSearchBar: false,
      ),
      (item) => item.namesNative.first.common,
      testSelection: false,
    ),
  );

  testWidgets("throws assert on empty $TypedLocale in theme", (tester) async {
    bool assertionThrown = false;
    final originalOnError = FlutterError.onError;

    FlutterError.onError = (details) {
      if (details.exception is AssertionError &&
          details.exception.toString().contains(
            "The $TypedLocale passed to the `translation` parameter in "
            "$PickersThemeData lacks a translation",
          )) {
        assertionThrown = true;
      } else {
        originalOnError?.call(details);
      }
    };

    try {
      await tester.pumpMaterialApp(
        const CountryPicker(),
        const PickersThemeData(translation: TypedLocale(LangEng())),
      );

      expect(assertionThrown, isTrue);
    } finally {
      FlutterError.onError = originalOnError;
    }
  });

  testWidgets("throws assert on empty $TypedLocale in picker", (tester) async {
    bool assertionThrown = false;
    final originalOnError = FlutterError.onError;

    FlutterError.onError = (details) {
      if (details.exception is AssertionError &&
          details.exception.toString().contains(
            "The $TypedLocale passed to the `translation` parameter in the "
            "$CountryPicker lacks a",
          )) {
        assertionThrown = true;
      } else {
        originalOnError?.call(details);
      }
    };

    try {
      await tester.pumpMaterialApp(
        const CountryPicker(translation: TypedLocale(LangEng())),
      );

      expect(assertionThrown, isTrue);
    } finally {
      FlutterError.onError = originalOnError;
    }
  });

  testWidgets("throws assert on empty $TypedLocaleDelegate", (tester) async {
    bool assertionThrown = false;
    final originalOnError = FlutterError.onError;

    FlutterError.onError = (details) {
      if (details.exception is AssertionError &&
          details.exception.toString().contains(
            """The $TypedLocaleDelegate passed to the app's `localizationsDelegates`""",
          )) {
        assertionThrown = true;
      } else {
        originalOnError?.call(details);
      }
    };

    try {
      await tester.pumpMaterialApp(
        const CountryPicker(),
        null,
        const TypedLocaleDelegate.selectiveCache(),
      );
      await tester.pump();

      expect(assertionThrown, isTrue);
    } finally {
      FlutterError.onError = originalOnError;
    }
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

      final tile = find.byType(CountryFlag);
      expect(tile, findsNothing);
      await tester.tapAndSettle(find.byIcon(Icons.search));
      await tester.enterText(
        find.byType(TextField).first,
        firstCountry.internationalName,
      );
      await tester.pumpAndSettle();
      expect(
        find.byWidgetPredicate(
          (widget) => widget is CountryFlag && widget.country == firstCountry,
        ),
        findsWidgets,
      );
      expect(
        find.byWidgetPredicate(
          (widget) => widget is CountryFlag && widget.country == lastCountry,
        ),
        findsNothing,
      );
      expect(
        find.byWidgetPredicate(
          (widget) =>
              widget is CountryFlag && widget.country == neverFoundCountry,
        ),
        findsNothing,
      );
    });

    testWidgets("with onSearchResultsBuilder", (tester) async {
      await tester.pumpMaterialApp(
        SearchAnchor.bar(
          suggestionsBuilder:
              CountryPicker(
                onSearchResultsBuilder:
                    (query, _) =>
                        query.isEmpty ? const [] : [firstCountry, lastCountry],
              ).searchSuggestions,
        ),
      );

      final tile = find.byType(CountryFlag);
      expect(tile, findsNothing);
      await tester.tapAndSettle(find.byIcon(Icons.search));
      await tester.enterText(
        find.byType(TextField).first,
        firstCountry.internationalName,
      );
      await tester.pumpAndSettle();
      expect(
        find.byWidgetPredicate(
          (widget) => widget is CountryFlag && widget.country == firstCountry,
        ),
        findsWidgets,
      );
      expect(
        find.byWidgetPredicate(
          (widget) => widget is CountryFlag && widget.country == lastCountry,
        ),
        findsWidgets,
      );
      expect(
        find.byWidgetPredicate(
          (widget) =>
              widget is CountryFlag && widget.country == neverFoundCountry,
        ),
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
    expect(
      find.text(countries.first.namesNative.first.common),
      findsNWidgets(2), // TODO: Refactor with semantic label.
    );
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
      findsNWidgets(2), // TODO: Refactor with semantic label.
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
