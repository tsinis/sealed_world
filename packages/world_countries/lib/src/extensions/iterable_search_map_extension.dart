import "package:flutter/material.dart";

import "../models/typedefs.dart";

extension IterableSearchMapExtension<T extends Object> on Iterable<T> {
  SearchMap<T> searchMap(
    BuildContext context,
    Iterable<String> Function(T, BuildContext) search,
  ) => SearchMap<T>.unmodifiable({
    for (final item in this) item: search(item, context).toSet(),
  });

  Iterable<T> searchResults(SearchMap<T> map, bool Function(String) test) =>
      where((item) => map[item]?.any(test) ?? false);
}
