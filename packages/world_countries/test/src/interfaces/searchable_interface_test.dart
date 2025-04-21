import "package:flutter/widgets.dart" show BuildContext;
import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/interfaces/searchable_interface.dart";
import "package:world_countries/src/models/typedefs.dart";

class _SearchableInterfaceTest implements SearchableInterface<String> {
  const _SearchableInterfaceTest({
    required this.searchIn,
    this.caseSensitiveSearch = false,
    this.startWithSearch = true,
    this.onSearchResultsBuilder,
  });
  @override
  final Iterable<String> Function(String item, BuildContext context) searchIn;
  @override
  final bool caseSensitiveSearch;
  @override
  final bool startWithSearch;
  @override
  final Iterable<String> Function(String query, SearchMap<String> map)?
  onSearchResultsBuilder;
}

void main() => group("$SearchableInterface", () {
  test(
    "constructor",
    () => expect(
      _SearchableInterfaceTest(
        searchIn: (_, _) => const [],
        caseSensitiveSearch: true,
        startWithSearch: false,
        onSearchResultsBuilder: (_, _) => const [],
      ).startWithSearch,
      isFalse,
    ),
  );
});
