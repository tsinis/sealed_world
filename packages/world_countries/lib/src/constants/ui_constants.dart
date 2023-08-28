import "package:flutter/material.dart";

/// A utility class that contains constants related to the user interface (UI).
sealed class UiConstants {
  /// The default color used in the UI.
  static const color = Colors.grey;

  /// The default duration used for theme changes.
  static const duration = kThemeChangeDuration;

  /// The default padding used in the UI.
  static const padding = EdgeInsets.only(left: point, top: point, right: point);

  /// The default point used in the UI.
  static const point = 8.0;

  /// The default radius used in the UI.
  static const radius = Radius.circular(point);

  /// The default search icon used in the UI.
  static const searchIcon = Icon(Icons.search_outlined);

  /// The default curve used for switching in animations.
  static const switchInCurve = Curves.easeIn;

  /// The default curve used for switching out animations.
  static const switchOutCurve = Curves.easeOut;

  /// The default text input action used in the UI.
  static const textInputAction = TextInputAction.search;

  /// The minimum width used in the UI.
  static const minWidth = UiConstants.point * 6;

  /// The default constraints used in the UI.
  static const constraints = BoxConstraints(minWidth: minWidth);

  /// The default shape used in the UI.
  static const shape = RoundedRectangleBorder(
    borderRadius: BorderRadius.vertical(top: radius),
  );

  /// The default input decoration used in the UI.
  static const inputDecoration =
      InputDecoration(prefixIcon: searchIcon, border: OutlineInputBorder());

  /// The default placeholder used in the UI.
  static const placeholder = SizedBox.shrink();
}
