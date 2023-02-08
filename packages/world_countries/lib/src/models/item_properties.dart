import "package:flutter/widgets.dart" show BuildContext, immutable;

@immutable
class ItemProperties<T extends Object> {
  const ItemProperties(
    this.context,
    this.item, {
    required this.index,
    this.isChosen = false,
    this.isDisabled = false,
  });

  final BuildContext context;
  final int index;
  final T item;
  final bool isChosen;
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
      """ItemProperties($item, index: $index, isChosen: $isChosen, isDisabled: $isDisabled)""";

  // ignore: long-parameter-list, class has 5 properties.
  ItemProperties<T> copyWith({
    BuildContext? context,
    T? item,
    int? index,
    bool? isChosen,
    bool? isDisabled,
  }) =>
      ItemProperties<T>(
        context ?? this.context,
        item ?? this.item,
        index: index ?? this.index,
        isChosen: isChosen ?? this.isChosen,
        isDisabled: isDisabled ?? this.isDisabled,
      );
}
