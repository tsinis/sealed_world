import "package:flutter/foundation.dart";
import "package:flutter/widgets.dart" show BuildContext, Widget;

import "../models/item_properties.dart";
import "../widgets/base_widgets/stateful_indexed_list_view.dart";

/// A mixin that provides methods for converting items into [ItemProperties].
mixin PropertiesConvertibleMixin<T extends Object, W extends Widget>
    on StatefulIndexedListView<T, W> {
  /// Returns the [ItemProperties] for an item at the specified [index].
  ///
  /// The [context] parameter is the build context for the item.
  @optionalTypeArgs
  ItemProperties<T> properties(
    BuildContext context,
    int index, [
    Iterable<T>? source,
  ]) => filteredProperties(source ?? resolvedItems(context), context, index);

  /// Creates [ItemProperties] for an item at the specified [index] using the
  /// provided [filtered] items and [context].
  ///
  /// The [filtered] parameter is an iterable of items that have been filtered
  /// based on the current configuration. The [context] parameter is the build
  /// context for the item.
  @protected
  @optionalTypeArgs
  ItemProperties<T> filteredProperties(
    Iterable<T> filtered,
    BuildContext context,
    int index,
  ) {
    final sortedItems = sort == null
        ? filtered
        : List<T>.unmodifiable(filtered.toList(growable: false)..sort(sort));
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
