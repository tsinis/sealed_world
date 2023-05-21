import "package:flutter/material.dart";

import "../../constants/ui_constants.dart";

/// A custom list tile widget that displays a list item.
class ListItemTile<T extends Object> extends ListTile {
  /// Constructor for the [ListItemTile] class.
  ///
  /// * [_item] is the item to display in the list tile.
  /// * [onPressed] is the callback function to call when the tile is pressed.
  /// * [chosenIcon] is the icon to display when the tile is selected.
  /// * [isChosen] is a boolean indicating whether the tile is selected.
  /// * [isDisabled] is a boolean indicating whether the tile is disabled.
  const ListItemTile(
    this._item, {
    this.onPressed,
    Widget? chosenIcon = const Icon(Icons.beenhere_outlined),
    bool isChosen = false,
    bool isDisabled = false,
    super.autofocus,
    super.contentPadding,
    super.dense,
    super.enableFeedback,
    super.focusColor,
    super.focusNode,
    super.horizontalTitleGap,
    super.hoverColor,
    super.iconColor,
    super.isThreeLine,
    super.key,
    super.leading,
    super.leadingAndTrailingTextStyle,
    super.minLeadingWidth,
    super.minVerticalPadding,
    super.mouseCursor,
    super.onFocusChange,
    super.onLongPress,
    super.onTap,
    super.selectedColor,
    super.selectedTileColor,
    super.shape,
    super.splashColor,
    super.style,
    super.subtitle,
    super.subtitleTextStyle,
    super.textColor,
    super.tileColor,
    super.title,
    super.titleAlignment,
    super.titleTextStyle,
    super.visualDensity,
  }) : super(selected: isChosen, enabled: !isDisabled, trailing: chosenIcon);

  /// Default font size.
  @protected
  static const fontSize = UiConstants.point * 3;

  /// The callback function to call when the tile is pressed.
  final ValueSetter<T>? onPressed;

  /// The item to display in the list tile.
  @protected
  final T _item;

  @override
  Widget build(BuildContext context) => Material(
        // Reference: https://github.com/flutter/flutter/issues/86584.
        type: MaterialType.transparency,
        child: ListTile(
          key: key,
          leading: leading,
          title: title,
          subtitle: subtitle,
          trailing: selected ? trailing : null,
          isThreeLine: isThreeLine,
          dense: dense,
          visualDensity: visualDensity,
          shape: shape,
          style: style,
          selectedColor: selectedColor,
          iconColor: iconColor,
          textColor: textColor,
          titleTextStyle: titleTextStyle,
          subtitleTextStyle: subtitleTextStyle,
          leadingAndTrailingTextStyle: leadingAndTrailingTextStyle ??
              const TextStyle(fontSize: fontSize),
          contentPadding: contentPadding,
          enabled: enabled,
          onTap: enabled ? () => onPressed?.call(_item) : null,
          onLongPress: onLongPress,
          onFocusChange: onFocusChange,
          mouseCursor: mouseCursor,
          selected: selected,
          focusColor: focusColor,
          hoverColor: hoverColor,
          splashColor: splashColor,
          focusNode: focusNode,
          autofocus: autofocus,
          tileColor: tileColor,
          selectedTileColor: selectedTileColor,
          enableFeedback: enableFeedback,
          horizontalTitleGap: horizontalTitleGap,
          minVerticalPadding: minVerticalPadding,
          minLeadingWidth: minLeadingWidth ?? fontSize + UiConstants.point,
          titleAlignment: titleAlignment,
        ),
      );
}
