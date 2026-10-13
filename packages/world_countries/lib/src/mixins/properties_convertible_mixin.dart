import "dart:collection" show UnmodifiableListView;

import "package:flutter/foundation.dart";
import "package:flutter/widgets.dart" show BuildContext, Widget;
import "package:meta/meta.dart" show useResult;

import "../model/item_properties.dart";
import "../widgets/base_widgets/stateful_indexed_list_view.dart";

/// A mixin that provides methods for converting items into [ItemProperties].
mixin PropertiesConvertibleMixin<T extends Object, W extends Widget>
    on StatefulIndexedListView<T, W> {
  /// The lists returned by [sortedItems], with the [sort] that sorted them,
  /// so that no row read from such a list sorts all the items again.
  static final _sortedBy = Expando<Object>("sortedBy");

  /// Returns the [ItemProperties] for an item at the specified [index].
  ///
  /// The [context] parameter is the build context for the item.
  @optionalTypeArgs
  ItemProperties<T> properties(
    BuildContext context,
    int index, [
    Iterable<T>? source,
  ]) => filteredProperties(source ?? resolvedItems(context), context, index);

  /// Returns the [items] as a list, in the order they are displayed in: sorted
  /// with [sort] (if provided).
  ///
  /// Rows are read by index, so a list is created once here, instead of
  /// walking (or sorting) the [items] again for every row. The [properties]
  /// and [filteredProperties] of the returned list do not sort it again.
  @protected
  @useResult
  List<T> sortedItems(Iterable<T> items) {
    final compare = sort;
    if (compare == null) {
      return items is List<T> ? items : List.unmodifiable(items);
    }
    if (items is List<T> && identical(_sortedBy[items], compare)) return items;

    final sorted = UnmodifiableListView(
      items.toList(growable: false)..sort(compare),
    );
    // ignore: avoid-collection-mutating-methods, marks the list it created.
    _sortedBy[sorted] = compare;

    return sorted;
  }

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
    final compare = sort;
    final isSorted = compare == null || identical(_sortedBy[filtered], compare);
    final item = (isSorted ? filtered : sortedItems(filtered)).elementAt(index);
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
