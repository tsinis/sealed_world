import "package:flutter/widgets.dart";

abstract class StatefulSearchable<T extends Object> extends StatefulWidget {
  const StatefulSearchable({
    required this.searchIn,
    required this.textController,
    this.caseSensitiveSearch = false,
    this.startWithSearch = true,
    super.key,
  });

  final TextEditingController textController;
  final Iterable<String> Function(T item) searchIn;
  final bool caseSensitiveSearch;
  final bool startWithSearch;
}
