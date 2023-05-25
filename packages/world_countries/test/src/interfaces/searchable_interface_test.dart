import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/interfaces/searchable_interface.dart";

class _SearchableInterfaceTest implements SearchableInterface<String> {
  const _SearchableInterfaceTest({
    required this.searchIn,
    this.caseSensitiveSearch = false,
    this.startWithSearch = true,
  });
  @override
  final Iterable<String> Function(String item) searchIn;
  @override
  final bool caseSensitiveSearch;
  @override
  final bool startWithSearch;
}

void main() => group("$SearchableInterface", () {
      test(
        "constructor",
        () => expect(
          _SearchableInterfaceTest(
            searchIn: (_) => const [],
            caseSensitiveSearch: true,
            startWithSearch: false,
          ).startWithSearch,
          isFalse,
        ),
      );
    });
