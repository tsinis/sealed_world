// ignore_for_file: prefer-match-file-name, helpers of the tests below.

import "package:flutter/widgets.dart";
import "package:flutter_test/flutter_test.dart";
import "package:material_ui/material_ui.dart"
    show Icons, SearchAnchor, SearchBar, SearchController, TextField;
import "package:world_countries/src/model/iso/iso_maps.dart";
import "package:world_countries/src/model/search_data.dart";
import "package:world_countries/src/model/typedefs.dart";
import "package:world_countries/src/widgets/country/country_picker.dart";
import "package:world_countries/src/widgets/pickers/basic_picker.dart";
import "package:world_flags/world_flags.dart";

import "../../../helpers/widget_tester_extension.dart";

void main() => group("$BasicPicker search", () {
  const testCountry = CountryUsa();
  const anotherCountry = CountryGbr();

  group("searchSuggestions()", () {
    testWidgets("closes the view on a tap with a context of the page", (
      tester, // Dart 3.8 formatting.
    ) async {
      final selected = <WorldCountry>[];
      await tester.pumpMaterialApp(
        Builder(
          builder: (pageContext) => SearchAnchor.bar(
            suggestionsBuilder: (_, controller) =>
                CountryPicker(onSelect: selected.add)
                    .searchSuggestions(pageContext, controller),
          ),
        ),
      );
      await tester.tapAndSettle(find.byIcon(Icons.search));
      final tiles = find.byType(CountryTile);
      final country = tester.widget<CountryTile>(tiles.first).item;
      await tester.tapAndSettle(tiles.first);

      expect(tiles, findsNothing, reason: "The search view is closed.");
      expect(find.byType(SearchBar), findsOneWidget, reason: "The page stays.");
      expect(selected, [country]);
    });

    testWidgets("does not search without a query", (tester) async {
      final counter = _Counter();
      final context = await tester.contextExtractor();

      final found = await _suggested(
        CountryPicker(searchIn: counter.searchIn),
        context,
        " ",
      );
      expect(found, hasLength(WorldCountry.list.length));
      expect(counter.count, isZero);
    });

    testWidgets("sorts the results once", (tester) async {
      final oneSort = _Counter();
      final sorted = List.of(WorldCountry.list)..sort(oneSort.byCode);
      final counter = _Counter();
      final context = await tester.contextExtractor();

      final found = await _suggested(
        CountryPicker(sort: counter.byCode),
        context,
      );
      expect(found, sorted);
      expect(counter.count, oneSort.count);
    });

    testWidgets("matches by its own compareWithTextInput", (tester) async {
      final context = await tester.contextExtractor();

      final found = await _suggested(
        _SearchingPicker(_Counter()),
        context,
        "any",
      );
      expect(found, hasLength(WorldCountry.list.length));
    });

    testWidgets("builds the results of an empty query too", (tester) async {
      final context = await tester.contextExtractor();

      final found = await _suggested(
        CountryPicker(onSearchResultsBuilder: (_, _) => const [testCountry]),
        context,
      );
      expect(found, [testCountry]);
    });

    testWidgets("ignores spaces around the query", (tester) async {
      final context = await tester.contextExtractor();

      final found = await _suggested(
        const CountryPicker(),
        context,
        " ${anotherCountry.internationalName} ",
      );
      expect(found, contains(anotherCountry));
    });
  });

  group("search", () {
    const countries = [testCountry, anotherCountry];
    testWidgets("finds the translations of new maps", (tester) async {
      await tester.pumpMaterialApp(
        const CountryPicker(
          countries: countries,
          maps: IsoMaps(
            countryTranslations: {testCountry: "Foo", anotherCountry: "Bar"},
          ),
        ),
      );
      await tester.enterText(find.byType(TextField), "Qux");
      await tester.pumpAndSettle();
      expect(find.byType(CountryTile), findsNothing);

      await tester.pumpMaterialApp(
        const CountryPicker(
          countries: countries,
          maps: IsoMaps(
            countryTranslations: {testCountry: "Qux", anotherCountry: "Bar"},
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.byType(CountryTile), findsOneWidget);
    });

    testWidgets("is done by the current picker", (tester) async {
      final first = _Counter();
      final current = _Counter();
      await tester.pumpMaterialApp(_SearchingPicker(first, countries));
      await tester.pumpMaterialApp(_SearchingPicker(current, countries));
      await tester.enterText(find.byType(TextField), "a");

      expect(first.count, isZero, reason: "The first picker is replaced.");
      expect(current.count, countries.length);
    });

    testWidgets("is not done again for the same picker", (tester) async {
      final counter = _Counter();
      await tester.pumpMaterialApp(_SearchingPicker(counter, countries));
      await tester.enterText(find.byType(TextField), "a");
      final searches = counter.count;
      expect(searches, countries.length);

      await tester.pumpMaterialApp(_SearchingPicker(counter, countries));
      expect(counter.count, searches, reason: "Nothing is searched again.");
    });
  });
});

/// Returns the countries of the [CountryTile]s suggested for the [query].
Future<Iterable<WorldCountry>> _suggested(
  CountryPicker picker,
  BuildContext context, [
  String query = "",
]) async {
  final controller = SearchController()..text = query;
  addTearDown(controller.dispose);
  final suggestions = picker.searchSuggestions(context, controller);
  final tiles = suggestions is Future<Iterable<Widget>>
      ? await suggestions
      : suggestions;

  return tiles.whereType<CountryTile>().map((tile) => tile.item);
}

/// A picker that counts its default searches in the countries, and finds
/// every country for the "any" query.
class _SearchingPicker extends CountryPicker {
  const new(this._counter, [Iterable<WorldCountry>? countries])
    : super(countries: countries);

  final _Counter _counter;

  @override
  bool compareWithTextInput(TextEditingController controller, String item) =>
      controller.text.trim() == "any" ||
      super.compareWithTextInput(controller, item);

  @override
  SearchData defaultSearch(WorldCountry item, BuildContext context) {
    _counter.count += 1;

    return super.defaultSearch(item, context);
  }
}

/// Counts the searches (or comparisons) of the countries.
final class _Counter {
  int count = 0;

  int byCode(WorldCountry first, WorldCountry second) {
    count += 1;

    return second.code.compareTo(first.code);
  }

  SearchData searchIn(WorldCountry country, BuildContext _) {
    count += 1;

    return SearchData.empty(code: country.code);
  }
}
