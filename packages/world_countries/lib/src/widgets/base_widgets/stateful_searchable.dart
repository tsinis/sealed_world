import "package:flutter/widgets.dart";

import "../../interfaces/searchable_interface.dart";

abstract class StatefulSearchable<T extends Object> extends StatefulWidget
    implements SearchableInterface<T> {
  const StatefulSearchable({
    required this.searchIn,
    required this.textController,
    this.caseSensitiveSearch = false,
    this.startWithSearch = true,
    super.key,
  });

  final TextEditingController textController;

  @override
  final Iterable<String> Function(T item) searchIn;
  @override
  final bool caseSensitiveSearch;
  @override
  final bool startWithSearch;
}
