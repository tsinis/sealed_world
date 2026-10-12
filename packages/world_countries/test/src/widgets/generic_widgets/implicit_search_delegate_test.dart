// ignore_for_file: prefer-match-file-name, a helper of the tests below.

import "dart:collection" show UnmodifiableListView;

import "package:flutter/widgets.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/model/search_data.dart";
import "package:world_countries/src/model/typedefs.dart";
import "package:world_countries/src/widgets/generic_widgets/implicit_search_delegate.dart";

import "../../../helpers/widget_tester_extension.dart";

void main() => group("$ImplicitSearchDelegate", () {
  final delegate = ImplicitSearchDelegate(
    const [1],
    resultsBuilder: (_, _, _) => const SizedBox(),
    searchIn: (i, _) => SearchData.empty(code: i.toString()),
    resultValidator: (_) => false,
    searchMap: const <int, SearchData>{},
  );

  testWidgets("buildResults", (tester) async {
    final context = await tester.contextExtractor();

    expect(delegate.buildResults(context), isA<SizedBox>());
  });

  group("filters the items only once per query", () {
    final searchMap = {
      for (final i in _numbers) i: SearchData.empty(code: "$i"),
    };

    testWidgets("with the search results builder", (tester) async {
      final reads = _Reads();
      final context = await tester.contextExtractor();
      _delegate(reads, searchMap, onSearchResultsBuilder: reads.whereAll)
        ..query = "1"
        ..buildSuggestions(context);

      expect(reads.found, _numbers);
      expect(reads.count, _numbers.length);
    });

    testWidgets("without a search map", (tester) async {
      final reads = _Reads();
      final context = await tester.contextExtractor();
      _delegate(reads, const {})
        ..query = "2"
        ..buildSuggestions(context);

      expect(reads.found, [2]);
      expect(reads.count, _numbers.length);
    });

    testWidgets("ignoring spaces around the query", (tester) async {
      final reads = _Reads();
      final context = await tester.contextExtractor();
      _delegate(reads, searchMap)
        ..query = " 3 "
        ..buildSuggestions(context);

      expect(reads.found, [3]);
    });
  });
});

const _numbers = [1, 2, 3];

ImplicitSearchDelegate<int> _delegate(
  _Reads reads,
  SearchMap<int> searchMap, {
  Iterable<int> Function(String query, SearchMap<int> map)?
  onSearchResultsBuilder,
}) {
  final delegate = ImplicitSearchDelegate<int>(
    _numbers,
    resultsBuilder: reads.results,
    searchIn: reads.searchIn,
    searchMap: searchMap,
    onSearchResultsBuilder: onSearchResultsBuilder,
  );
  addTearDown(delegate.dispose);

  return delegate;
}

/// Counts the reads of the items while they are searched.
final class _Reads {
  int count = 0;
  UnmodifiableListView<int> _results = UnmodifiableListView(const []);

  /// Reads the results the way a list view does: by length and index.
  List<int> get found => List.generate(_results.length, (i) => _results[i]);

  SearchData searchIn(int item, BuildContext _) {
    count += 1;

    return SearchData.empty(code: "$item");
  }

  Iterable<int> whereAll(String _, SearchMap<int> map) =>
      map.keys.where(_isCounted);

  Widget results(BuildContext _, UnmodifiableListView<int> list, String _) {
    _results = list;

    return const SizedBox();
  }

  bool _isCounted(int _) {
    count += 1;

    return true;
  }
}
