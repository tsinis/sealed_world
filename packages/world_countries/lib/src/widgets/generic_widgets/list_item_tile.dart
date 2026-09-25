// ignore_for_file: avoid-nullable-parameters-with-default-values

import "package:flutter/foundation.dart";
import "package:flutter/widgets.dart"
    show BuildContext, Icon, Semantics, TextStyle, Widget;
import "package:material_ui/material_ui.dart"
    show Icons, ListTile, Material, MaterialType;
import "package:world_flags/world_flags.dart"
    show IsoDiagnosticsProperty, IsoStandardized, MaybeWidget;

import "../../constants/ui_constants.dart";

/// A custom list tile widget that displays a list item.
class ListItemTile<T extends Object> extends ListTile {
  /// Constructor for the [ListItemTile] class.
  ///
  /// * [item] is the item to display in the list tile.
  /// * [onPressed] is the callback function to call when the tile is pressed.
  /// * [chosenIcon] is the icon to display when the tile is selected.
  /// * [isChosen] is a boolean indicating whether the tile is selected.
  /// * [isDisabled] is a boolean indicating whether the tile is disabled.
  const new(
    this.item, {
    this.onPressed,
    this.excludeSemantics = true,
    this.semanticsIdentifier,
    // ignore: provide-icon-semantic-label, could be specified by the developer.
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
    super.internalAddSemanticForOnTap,
    super.isThreeLine,
    super.key,
    super.leading,
    super.leadingAndTrailingTextStyle,
    super.minLeadingWidth,
    super.minTileHeight,
    super.minVerticalPadding,
    super.mouseCursor,
    super.onFocusChange,
    super.onLongPress,
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
    super.statesController,
  }) : super(selected: isChosen, enabled: !isDisabled, trailing: chosenIcon);

  /// Default font size.
  @protected
  // ignore: specify_nonobvious_property_types, it's obvious...
  static const fontSize = UiConstants.point * 3;

  /// The item to display in the list tile.
  final T item;

  /// The callback function to call when the tile is pressed.
  final ValueSetter<T>? onPressed;

  /// Whether to exclude subtitle and leading from semantics tree.
  final bool excludeSemantics;

  /// Optional string that describes the node for UI automation
  /// tools that work by querying the accessibility hierarchy, such as Android
  /// UI Automator, iOS XCUITest, or Appium. It's not exposed to users.
  final String? semanticsIdentifier;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
        item is IsoStandardized
            // ignore: avoid-type-casts, it's type checked above.
            ? IsoDiagnosticsProperty(item as IsoStandardized)
            : DiagnosticsProperty<T>("item", item),
      )
      ..add(ObjectFlagProperty<ValueSetter<T>?>.has("onPressed", onPressed))
      ..add(StringProperty("semanticsIdentifier", semanticsIdentifier))
      ..add(
        DiagnosticsProperty<bool>(
          "excludeSemantics",
          excludeSemantics,
          defaultValue: true,
        ),
      );
  }

  @override
  Widget build(BuildContext context) => Material(
    // Reference: https://github.com/flutter/flutter/issues/86584.
    type: MaterialType.transparency,
    child: ListTile(
      key: key,
      // A slot is passed through as it is when there is nothing to say about
      // it: an empty `Semantics` is still a render object, and the
      // accessibility tree walks every one of them on each frame a list
      // scrolls. A missing child keeps its node, though: `ListTile` lays out
      // a slot for any widget it is handed, so null instead would shift it.
      leading:
          MaybeWidget.orNull(
            leading,
            (found) => found,
            buildWhen: (_) => !excludeSemantics && semanticsIdentifier == null,
          ) ??
          Semantics(
            excludeSemantics: excludeSemantics,
            identifier: semanticsIdentifier,
            child: leading,
          ),
      title: title,
      subtitle:
          MaybeWidget.orNull(
            subtitle,
            (found) => found,
            buildWhen: (_) => !excludeSemantics,
          ) ??
          Semantics(excludeSemantics: excludeSemantics, child: subtitle),
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
      leadingAndTrailingTextStyle:
          leadingAndTrailingTextStyle ?? const TextStyle(fontSize: fontSize),
      contentPadding: contentPadding,
      enabled: enabled,
      onTap: enabled ? () => onPressed?.call(item) : null,
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
      minLeadingWidth: minLeadingWidth ?? (fontSize + UiConstants.point),
      titleAlignment: titleAlignment,
      statesController: statesController,
    ),
  );
}
