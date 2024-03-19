import "package:flutter/gestures.dart";
import "package:flutter/material.dart";

import "../constants/ui_constants.dart";
import "../interfaces/basic_picker_interface.dart";
import "../interfaces/indexed_list_view_interface.dart";
import "../models/locale/typed_locale.dart";

/// Holds the theme data for pickers.
///
/// This class defines the visual properties of picker widgets. It adheres to
/// [ThemeExtension] to allow for extending the base theme of the application
/// with picker-specific styling. It also implements [IndexedListViewInterface]
/// and [BasicPickerInterface] for consistent behavior and appearance across
/// various picker components.
///
/// Usage example:
/// ```dart
/// final pickersTheme = PickersThemeData(
///   padding: EdgeInsets.all(8),
///   searchBarPadding: EdgeInsets.symmetric(horizontal: 16),
///   showClearButton: false,
/// );
/// ```
class PickersThemeData extends ThemeExtension<PickersThemeData>
    implements IndexedListViewInterface, BasicPickerInterface {
  /// Creates a [PickersThemeData] instance with the given properties.
  const PickersThemeData({
    this.addRepaintBoundaries = true,
    this.addSemanticIndexes = true,
    this.cacheExtent,
    this.clipBehavior = Clip.hardEdge,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.direction = Axis.vertical,
    this.dragStartBehavior = DragStartBehavior.start,
    this.header,
    this.keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.min,
    this.padding,
    this.physics,
    this.primary,
    this.reverse = false,
    this.separator,
    this.showHeader = true,
    this.shrinkWrap = false,
    this.textBaseline,
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
    this.searchBarPadding = UiConstants.padding,
    this.showClearButton = true,
    this.searchBar,
    this.translation,
  });

  /// Creates a copy of this theme data but with the given fields replaced with
  /// the new values.
  ///
  /// If a field is not specified, the value from the current theme data
  /// instance is retained.
  ///
  /// This method is useful for obtaining a theme data instance with slightly
  /// altered properties, often in response to user interactions or
  /// configuration changes.
  ///
  /// Usage:
  /// ```dart
  /// final newTheme = pickerTheme.copyWith(padding: EdgeInsets.all(16));
  /// ```
  @override
  // ignore: long-parameter-list, a lot of parameters here.
  PickersThemeData copyWith({
    bool? showClearButton,
    TextField? searchBar,
    EdgeInsetsGeometry? searchBarPadding,
    TypedLocale? translation,
    Widget? separator,
    bool? showHeader,
    Widget? header,
    Axis? direction,
    MainAxisAlignment? mainAxisAlignment,
    MainAxisSize? mainAxisSize,
    CrossAxisAlignment? crossAxisAlignment,
    TextDirection? textDirection,
    VerticalDirection? verticalDirection,
    TextBaseline? textBaseline,
    Clip? clipBehavior,
    bool? reverse,
    bool? primary,
    bool? shrinkWrap,
    ScrollPhysics? physics,
    EdgeInsetsGeometry? padding,
    bool? addRepaintBoundaries,
    bool? addSemanticIndexes,
    double? cacheExtent,
    DragStartBehavior? dragStartBehavior,
    ScrollViewKeyboardDismissBehavior? keyboardDismissBehavior,
  }) =>
      PickersThemeData(
        addRepaintBoundaries: addRepaintBoundaries ?? this.addRepaintBoundaries,
        addSemanticIndexes: addSemanticIndexes ?? this.addSemanticIndexes,
        cacheExtent: cacheExtent ?? this.cacheExtent,
        clipBehavior: clipBehavior ?? this.clipBehavior,
        crossAxisAlignment: crossAxisAlignment ?? this.crossAxisAlignment,
        direction: direction ?? this.direction,
        dragStartBehavior: dragStartBehavior ?? this.dragStartBehavior,
        header: header ?? this.header,
        keyboardDismissBehavior:
            keyboardDismissBehavior ?? this.keyboardDismissBehavior,
        mainAxisAlignment: mainAxisAlignment ?? this.mainAxisAlignment,
        mainAxisSize: mainAxisSize ?? this.mainAxisSize,
        padding: padding ?? this.padding,
        physics: physics ?? this.physics,
        primary: primary ?? this.primary,
        reverse: reverse ?? this.reverse,
        separator: separator ?? this.separator,
        showHeader: showHeader ?? this.showHeader,
        shrinkWrap: shrinkWrap ?? this.shrinkWrap,
        textBaseline: textBaseline ?? this.textBaseline,
        textDirection: textDirection ?? this.textDirection,
        verticalDirection: verticalDirection ?? this.verticalDirection,
        searchBarPadding: searchBarPadding ?? this.searchBarPadding,
        showClearButton: showClearButton ?? this.showClearButton,
        searchBar: searchBar ?? this.searchBar,
        translation: translation ?? this.translation,
      );

  @override
  ThemeExtension<PickersThemeData> lerp(
    covariant ThemeExtension<PickersThemeData>? other,
    double t,
  ) =>
      this;

  @override
  final bool showClearButton;

  @override
  final TextField? searchBar;

  @override
  final EdgeInsetsGeometry? searchBarPadding;

  @override
  final TypedLocale? translation;

  @override
  final Widget? separator;

  @override
  final bool? showHeader;

  @override
  final Widget? header;

  @override
  final Axis direction;

  @override
  final MainAxisAlignment mainAxisAlignment;

  @override
  final MainAxisSize mainAxisSize;

  @override
  final CrossAxisAlignment crossAxisAlignment;

  @override
  final TextDirection? textDirection;

  @override
  final VerticalDirection verticalDirection;

  @override
  final TextBaseline? textBaseline;

  @override
  final Clip clipBehavior;

  @override
  final bool reverse;

  @override
  final bool? primary;

  @override
  final bool shrinkWrap;

  @override
  final ScrollPhysics? physics;

  @override
  final EdgeInsetsGeometry? padding;

  @override
  final bool addRepaintBoundaries;

  @override
  final bool addSemanticIndexes;

  @override
  final double? cacheExtent;

  @override
  final DragStartBehavior dragStartBehavior;

  @override
  final ScrollViewKeyboardDismissBehavior keyboardDismissBehavior;
}
