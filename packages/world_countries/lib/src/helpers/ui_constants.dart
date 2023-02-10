import "package:flutter/material.dart";

class UiConstants {
  const UiConstants._();

  static const point = 8.0;
  static const color = Colors.grey;
  static const padding = EdgeInsets.only(left: point, top: point, right: point);
  static const radius = Radius.circular(point);
  static const searchIcon = Icon(Icons.search_outlined);
  static const duration = kThemeChangeDuration;
  static const switchOutCurve = Curves.easeOut;
  static const switchInCurve = Curves.easeIn;
  static const shape = RoundedRectangleBorder(
    borderRadius: BorderRadius.vertical(top: radius),
  );
  static const inputDecoration =
      InputDecoration(prefixIcon: searchIcon, border: OutlineInputBorder());

  static const placeholder = SizedBox.shrink();
}
