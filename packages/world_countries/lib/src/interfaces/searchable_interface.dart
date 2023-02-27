class SearchableInterface<T extends Object?> {
  const SearchableInterface({
    required this.searchIn,
    this.caseSensitiveSearch = false,
    this.startWithSearch = true,
  });

  final Iterable<String> Function(T item) searchIn;
  final bool caseSensitiveSearch;
  final bool startWithSearch;
}
