import "package:flutter/material.dart";

class UiConstants {
  const UiConstants._();

  static const color = Colors.grey;
  static const duration = kThemeChangeDuration;
  static const padding = EdgeInsets.only(left: point, top: point, right: point);
  static const point = 8.0;
  static const radius = Radius.circular(point);
  static const searchIcon = Icon(Icons.search_outlined);
  static const switchInCurve = Curves.easeIn;
  static const switchOutCurve = Curves.easeOut;
  static const textInputAction = TextInputAction.search;
  static const shape = RoundedRectangleBorder(
    borderRadius: BorderRadius.vertical(top: radius),
  );
  static const inputDecoration =
      InputDecoration(prefixIcon: searchIcon, border: OutlineInputBorder());

  static const placeholder = SizedBox.shrink();
}
