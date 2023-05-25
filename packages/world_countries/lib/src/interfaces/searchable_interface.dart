/// An interface for classes that can be searched.
abstract interface class SearchableInterface<T extends Object?> {
  /// Constructor for the [SearchableInterface] class.
  ///
  /// * [searchIn] is a function that takes an item and returns an iterable of
  ///   strings to search in.
  /// * [caseSensitiveSearch] is a boolean indicating whether the search should
  ///   be case-sensitive.
  /// * [startWithSearch] is a boolean indicating whether the search field
  ///   should only search by starting with the search string.
  const SearchableInterface({
    required this.searchIn,
    this.caseSensitiveSearch = false,
    this.startWithSearch = true,
  });

  /// A function that takes an item and returns an iterable of strings to search
  /// in.
  final Iterable<String> Function(T item) searchIn;

  /// A boolean indicating whether the search should be case-sensitive.
  final bool caseSensitiveSearch;

  /// A boolean indicating whether the search field
  /// should only search by starting with the search string.
  final bool startWithSearch;
}
