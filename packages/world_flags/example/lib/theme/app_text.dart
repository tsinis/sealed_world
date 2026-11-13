import "package:flutter/foundation.dart";
import "package:flutter/widgets.dart";

import "app_colors.dart";

/// Text styles of the example app: the Material 3 type scale with the system
/// font of the platform, like Material's `Typography.material2021`.
abstract final class AppText {
  // ignore: avoid-explicit-type-declaration, vs specify_nonobvious_property_types
  static final TextStyle bodyLarge = _style(
    fontSize: 16,
    height: 1.5,
    spacing: 0.5,
  );
  // ignore: avoid-explicit-type-declaration, vs specify_nonobvious_property_types
  static final TextStyle bodyMedium = _style(
    fontSize: 14,
    height: 1.43,
    spacing: 0.25,
  );
  // ignore: avoid-explicit-type-declaration, vs specify_nonobvious_property_types
  static final TextStyle bodySmall = _style(
    fontSize: 12,
    height: 1.33,
    spacing: 0.4,
  );
  // ignore: avoid-explicit-type-declaration, vs specify_nonobvious_property_types
  static final TextStyle titleSmall = _style(
    fontSize: 14,
    height: 1.43,
    spacing: 0.1,
    fontWeight: FontWeight.w500,
  );
  // ignore: avoid-explicit-type-declaration, vs specify_nonobvious_property_types
  static final TextStyle titleLarge = _style(
    fontSize: 22,
    height: 1.27,
    spacing: 0,
    isDisplay: true,
  );

  static const _linuxFallback = [
    "Ubuntu",
    "Adwaita Sans",
    "Cantarell",
    "DejaVu Sans",
    "Liberation Sans",
    "Arial",
  ];

  static String _familyOf(TargetPlatform platform, {required bool isDisplay}) =>
      switch (platform) {
        TargetPlatform.iOS =>
          isDisplay ? "CupertinoSystemDisplay" : "CupertinoSystemText",
        TargetPlatform.macOS => ".AppleSystemUIFont",
        TargetPlatform.windows => "Segoe UI",
        TargetPlatform.android ||
        TargetPlatform.fuchsia ||
        TargetPlatform.linux => "Roboto",
      };

  static TextStyle _style({
    required double fontSize,
    required double height,
    required double spacing,
    FontWeight fontWeight = FontWeight.w400,
    bool isDisplay = false,
  }) {
    final platform = defaultTargetPlatform;

    return TextStyle(
      inherit: false,
      color: AppColors.surfaceContent,
      fontFamily: _familyOf(platform, isDisplay: isDisplay),
      fontFamilyFallback: platform == TargetPlatform.linux
          ? _linuxFallback
          : null,
      fontSize: fontSize,
      fontWeight: fontWeight,
      letterSpacing: spacing,
      textBaseline: TextBaseline.alphabetic,
      height: height,
      leadingDistribution: TextLeadingDistribution.even,
      decoration: TextDecoration.none,
    );
  }
}
