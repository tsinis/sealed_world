// ignore_for_file: prefer-class-destructuring

import "package:flutter/foundation.dart";
import "package:flutter/widgets.dart" show BuildContext;

/// Immutable class that represents the properties of an item in a list.
@immutable
class ItemProperties<T extends Object> {
  /// Constructor for the [ItemProperties] class.
  ///
  /// * [context] is the build context for the item.
  /// * [index] is the index of the item in the list.
  /// * [item] is the item itself.
  /// * [isChosen] is a boolean indicating whether the item is currently chosen.
  /// * [isDisabled] is a boolean indicating whether the item is currently
  ///   disabled.
  const ItemProperties(
    this.context,
    this.item, {
    required this.index,
    this.isChosen = false,
    this.isDisabled = false,
  });

  /// The build context for the item.
  final BuildContext context;

  /// The index of the item in the list.
  final int index;

  /// The item itself.
  final T item;

  /// A boolean indicating whether the item is currently chosen.
  final bool isChosen;

  /// A boolean indicating whether the item is currently disabled.
  final bool isDisabled;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ItemProperties<T> &&
        other.context == context &&
        other.index == index &&
        other.isDisabled == isDisabled &&
        other.isChosen == isChosen &&
        other.item == item;
  }

  @override
  int get hashCode =>
      context.hashCode ^
      index.hashCode ^
      isDisabled.hashCode ^
      isChosen.hashCode ^
      item.hashCode;

  @override
  String toString() =>
      "ItemProperties($item, index: $index, "
      "isChosen: $isChosen, isDisabled: $isDisabled)";

  /// Creates a new [ItemProperties] object with the same properties as this
  /// one, but with some of them potentially overridden.
  ///
  /// * [context] is the new build context for the item.
  /// * [item] is the new item itself.
  /// * [index] is the new index of the item in the list.
  /// * [isChosen] is the new boolean indicating whether the item is currently
  ///   chosen.
  /// * [isDisabled] is the new boolean indicating whether the item is currently
  ///   disabled.
  @optionalTypeArgs
  // ignore: long-parameter-list, class has 5 properties.
  ItemProperties<T> copyWith({
    BuildContext? context,
    T? item,
    int? index,
    bool? isChosen,
    bool? isDisabled,
  }) => ItemProperties<T>(
    context ?? this.context,
    item ?? this.item,
    index: index ?? this.index,
    isChosen: isChosen ?? this.isChosen,
    isDisabled: isDisabled ?? this.isDisabled,
  );
}
