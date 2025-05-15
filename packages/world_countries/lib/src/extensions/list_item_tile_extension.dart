import "package:flutter/material.dart";

import "../widgets/generic_widgets/list_item_tile.dart";

/// Extension on [ListItemTile] to provide additional functionality.
extension ListItemTileExtension<T extends Object> on ListItemTile<T> {
  /// A boolean indicating whether the tile is selected (or favorited).
  bool get isChosen => selected;

  /// A boolean indicating whether the tile is disabled.
  bool get isDisabled => !enabled;

  /// The icon to display when the tile is selected.
  Widget? get chosenIcon => trailing;

  /// Returns a copy of this [ListItemTile] with the given fields replaced by
  /// new values.
  // ignore: avoid-high-cyclomatic-complexity, widgets have many properties.
  ListItemTile<T> copyWith({
    T? item,
    ValueSetter<T>? onPressed,
    bool? excludeSemantics,
    String? semanticsIdentifier,
    Widget? chosenIcon,
    bool? isChosen,
    bool? isDisabled,
    Key? key,
    Color? splashColor,
    Widget? leading,
    TextStyle? leadingAndTrailingTextStyle,
    bool? internalAddSemanticForOnTap,
    Widget? title,
    TextStyle? titleTextStyle,
    Widget? subtitle,
    TextStyle? subtitleTextStyle,
    bool? isThreeLine,
    bool? dense,
    VisualDensity? visualDensity,
    ShapeBorder? shape,
    ListTileStyle? style,
    Color? selectedColor,
    Color? iconColor,
    Color? textColor,
    EdgeInsetsGeometry? contentPadding,
    GestureLongPressCallback? onLongPress,
    ValueChanged<bool>? onFocusChange,
    MouseCursor? mouseCursor,
    Color? focusColor,
    Color? hoverColor,
    FocusNode? focusNode,
    bool? autofocus,
    Color? tileColor,
    Color? selectedTileColor,
    bool? enableFeedback,
    double? horizontalTitleGap,
    double? minVerticalPadding,
    double? minLeadingWidth,
    double? minTileHeight,
    ListTileTitleAlignment? titleAlignment,
  }) => ListItemTile<T>(
    item ?? this.item,
    onPressed: onPressed ?? this.onPressed,
    excludeSemantics: excludeSemantics ?? this.excludeSemantics,
    semanticsIdentifier: semanticsIdentifier ?? this.semanticsIdentifier,
    chosenIcon: chosenIcon ?? trailing ?? const Icon(Icons.beenhere_outlined),
    isChosen: isChosen ?? selected,
    isDisabled: isDisabled ?? !enabled,
    key: key ?? this.key,
    leading: leading ?? this.leading,
    leadingAndTrailingTextStyle:
        leadingAndTrailingTextStyle ?? this.leadingAndTrailingTextStyle,
    title: title ?? this.title,
    titleTextStyle: titleTextStyle ?? this.titleTextStyle,
    subtitle: subtitle ?? this.subtitle,
    subtitleTextStyle: subtitleTextStyle ?? this.subtitleTextStyle,
    isThreeLine: isThreeLine ?? this.isThreeLine,
    dense: dense ?? this.dense,
    visualDensity: visualDensity ?? this.visualDensity,
    shape: shape ?? this.shape,
    style: style ?? this.style,
    selectedColor: selectedColor ?? this.selectedColor,
    iconColor: iconColor ?? this.iconColor,
    textColor: textColor ?? this.textColor,
    contentPadding: contentPadding ?? this.contentPadding,
    onLongPress: onLongPress ?? this.onLongPress,
    onFocusChange: onFocusChange ?? this.onFocusChange,
    mouseCursor: mouseCursor ?? this.mouseCursor,
    focusColor: focusColor ?? this.focusColor,
    hoverColor: hoverColor ?? this.hoverColor,
    focusNode: focusNode ?? this.focusNode,
    autofocus: autofocus ?? this.autofocus,
    tileColor: tileColor ?? this.tileColor,
    selectedTileColor: selectedTileColor ?? this.selectedTileColor,
    enableFeedback: enableFeedback ?? this.enableFeedback,
    horizontalTitleGap: horizontalTitleGap ?? this.horizontalTitleGap,
    minVerticalPadding: minVerticalPadding ?? this.minVerticalPadding,
    minLeadingWidth: minLeadingWidth ?? this.minLeadingWidth,
    minTileHeight: minTileHeight ?? this.minTileHeight,
    splashColor: splashColor ?? this.splashColor,
    titleAlignment: titleAlignment ?? this.titleAlignment,
    internalAddSemanticForOnTap:
        internalAddSemanticForOnTap ?? this.internalAddSemanticForOnTap,
  );
}
