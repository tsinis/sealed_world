import "package:flutter/material.dart";

import "../../helpers/ui_constants.dart";

class ListItemTile<T extends Object> extends ListTile {
  const ListItemTile(
    this.item, {
    this.index = 0,
    this.onPressed,
    Widget? chosenIcon = const Icon(Icons.beenhere_outlined),
    bool isChosen = false,
    bool isDisabled = false,
    super.key,
    super.leading,
    super.leadingAndTrailingTextStyle,
    super.minLeadingWidth,
    super.subtitle,
    super.title,
  }) : super(selected: isChosen, enabled: !isDisabled, trailing: chosenIcon);

  @protected
  static const overriddenStyle = TextStyle(color: Colors.grey);

  @protected
  static const fontSize = UiConstants.point * 3;

  final int index;
  final ValueSetter<T>? onPressed;

  @protected
  final T item;

  @override
  Widget build(BuildContext context) => Material(
        // Reference: https://github.com/flutter/flutter/issues/86584.
        type: MaterialType.transparency,
        child: ListTile(
          leading: leading,
          title: title,
          subtitle: subtitle,
          trailing: selected ? trailing : null,
          leadingAndTrailingTextStyle: leadingAndTrailingTextStyle ??
              const TextStyle(fontSize: fontSize),
          enabled: enabled,
          onTap: enabled ? () => onPressed?.call(item) : null,
          selected: selected,
          minLeadingWidth: minLeadingWidth ?? fontSize + UiConstants.point,
        ),
      );
}
