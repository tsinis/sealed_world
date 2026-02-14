import "package:flutter/material.dart"
    show ListTileStyle, ListTileTitleAlignment, VisualDensity;
import "package:flutter/widgets.dart";
import "package:meta/meta.dart" show useResult;
import "package:world_flags/world_flags.dart";

import "../widgets/generic_widgets/iso_tile.dart";

/// Extension on [IsoTile] to provide additional functionality.
extension IsoTileExtension<T extends IsoTranslated> on IsoTile<T> {
  /// Returns a copy of this [IsoTile] with the given fields replaced by
  /// new values.
  @useResult
  // ignore: avoid-high-cyclomatic-complexity, widgets have many properties.
  IsoTile<T> copyWith({
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
    Text? title,
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
    WidgetStatesController? statesController,
    FlagThemeData? flagTheme,
  }) => IsoTile<T>(
    item ?? this.item,
    onPressed: onPressed ?? this.onPressed,
    flagTheme: flagTheme ?? this.flagTheme,
    excludeSemantics: excludeSemantics ?? this.excludeSemantics,
    semanticsIdentifier: semanticsIdentifier ?? this.semanticsIdentifier,
    chosenIcon: chosenIcon ?? trailing,
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
    splashColor: splashColor ?? this.splashColor,
    titleAlignment: titleAlignment ?? this.titleAlignment,
    minTileHeight: minTileHeight ?? this.minTileHeight,
    internalAddSemanticForOnTap:
        internalAddSemanticForOnTap ?? this.internalAddSemanticForOnTap,
    statesController: statesController ?? this.statesController,
  );
}
