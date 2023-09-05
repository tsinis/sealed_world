import "package:flutter/foundation.dart";
import "package:flutter/widgets.dart" show BuildContext;

import "../models/item_properties.dart";
import "../widgets/base_widgets/stateful_indexed_list_view.dart";

mixin PropertiesConvertibleMixin<T extends Object>
    on StatefulIndexedListView<T> {
  ItemProperties<T> properties(BuildContext context, int index) =>
      filteredProperties(items, context, index);

  @protected
  ItemProperties<T> filteredProperties(
    Iterable<T> filtered,
    BuildContext context,
    int index,
  ) {
    final sortedItems = sort != null
        ? List<T>.unmodifiable(filtered.toList(growable: false)..sort(sort))
        : filtered;
    final item = sortedItems.elementAt(index);
    final isChosen = chosen?.contains(item) ?? false;
    final isDisabled = disabled?.contains(item) ?? false;

    return ItemProperties(
      context,
      item,
      index: index,
      isChosen: isChosen,
      isDisabled: isDisabled,
    );
  }
}
