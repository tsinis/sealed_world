// ignore_for_file: prefer-class-destructuring

import "dart:ui" as ui show lerpDouble;

import "package:flutter/widgets.dart";

import "../interfaces/decorated_flag_interface.dart";

/// A class that holds visual configuration for flags.
///
/// Implements [DecoratedFlagInterface] to provide consistent visual properties
/// across flag widgets and flag themes.
@immutable
class DecoratedFlagData implements DecoratedFlagInterface {
  /// Creates a new [DecoratedFlagData] instance.
  ///
  /// - [aspectRatio]: The aspect ratio of the flag.
  /// - [decoration]: The decoration to paint around/behind the flag.
  /// - [decorationPosition]: The position of the decoration.
  /// - [padding]: The padding around the flag.
  /// - [height]: The height of the flag.
  /// - [width]: The width of the flag.
  /// - [flagChild]: An optional widget to display in the foreground of the
  ///   flag.
  const new({
    this.aspectRatio,
    this.decoration,
    this.decorationPosition,
    this.padding,
    this.height,
    this.width,
    this.flagChild,
  }) : assert(height == null || height > 0, "`height` must be greater than 0"),
       assert(width == null || width > 0, "`width` must be greater than 0"),
       assert(
         aspectRatio == null || aspectRatio > 0,
         "`aspectRatio` must be greater than 0",
       );

  @override
  final double? aspectRatio;

  @override
  final BoxDecoration? decoration;

  @override
  final DecorationPosition? decorationPosition;

  @override
  final EdgeInsetsGeometry? padding;

  @override
  final double? height;

  @override
  final double? width;

  @override
  final Widget? flagChild;

  @Deprecated(
    "Use flagChild instead. This resolves a naming collision with "
    "InheritedTheme.child. Will be removed in next major version.",
  )
  @override
  Widget? get child => flagChild;

  /// Creates a copy of this [DecoratedFlagData] with the given fields replaced.
  ///
  /// Passing negative numbers for [aspectRatio], [height], or [width] resets
  /// them to `null`. To clear object-type fields, pass `true` to the respective
  /// `clear...` parameters.
  DecoratedFlagData copyWith({
    double? aspectRatio,
    BoxDecoration? decoration,
    DecorationPosition? decorationPosition,
    EdgeInsetsGeometry? padding,
    double? height,
    double? width,
    Widget? flagChild,
    bool clearDecoration = false,
    bool clearDecorationPosition = false,
    bool clearPadding = false,
    bool clearFlagChild = false,
  }) => DecoratedFlagData(
    aspectRatio: (aspectRatio?.isNegative ?? false)
        ? null
        : (aspectRatio ?? this.aspectRatio),
    decoration: clearDecoration ? null : (decoration ?? this.decoration),
    decorationPosition: clearDecorationPosition
        ? null
        : (decorationPosition ?? this.decorationPosition),
    padding: clearPadding ? null : (padding ?? this.padding),
    height: (height?.isNegative ?? false) ? null : (height ?? this.height),
    width: (width?.isNegative ?? false) ? null : (width ?? this.width),
    flagChild: clearFlagChild ? null : (flagChild ?? this.flagChild),
  );

  /// Linearly interpolates between two [DecoratedFlagData] objects.
  // ignore: avoid-high-cyclomatic-complexity, 40 vs 41, not a big deal.
  static DecoratedFlagData? lerp(
    DecoratedFlagData? a,
    DecoratedFlagData? b,
    // ignore: prefer-correct-identifier-length, standard flutter lerp parameter.
    double t,
  ) {
    if (identical(a, b)) return a;
    if (a == null && b == null) return null;

    final rawAspectRatio = ui.lerpDouble(a?.aspectRatio, b?.aspectRatio, t);
    final rawHeight = ui.lerpDouble(a?.height, b?.height, t);
    final rawWidth = ui.lerpDouble(a?.width, b?.width, t);

    final safeAspectRatio = rawAspectRatio != null && rawAspectRatio > 0
        ? rawAspectRatio
        : null;
    final safeHeight = rawHeight != null && rawHeight > 0 ? rawHeight : null;
    final safeWidth = rawWidth != null && rawWidth > 0 ? rawWidth : null;

    return safeAspectRatio == null &&
            safeHeight == null &&
            safeWidth == null &&
            a?.decoration == null &&
            b?.decoration == null &&
            a?.padding == null &&
            b?.padding == null &&
            a?.flagChild == null &&
            b?.flagChild == null
        ? null
        : DecoratedFlagData(
            aspectRatio: safeAspectRatio,
            height: safeHeight,
            width: safeWidth,
            decoration: BoxDecoration.lerp(a?.decoration, b?.decoration, t),
            decorationPosition: t < 0.5
                ? a?.decorationPosition
                : b?.decorationPosition,
            padding: EdgeInsetsGeometry.lerp(a?.padding, b?.padding, t),
            flagChild: t < 0.5 ? a?.flagChild : b?.flagChild,
          );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is DecoratedFlagData &&
        other.aspectRatio == aspectRatio &&
        other.decoration == decoration &&
        other.decorationPosition == decorationPosition &&
        other.padding == padding &&
        other.height == height &&
        other.width == width &&
        other.flagChild == flagChild;
  }

  @override
  int get hashCode => Object.hash(
    aspectRatio,
    decoration,
    decorationPosition,
    padding,
    height,
    width,
    flagChild,
  );

  @override
  String toString() =>
      "DecoratedFlagData(aspectRatio: $aspectRatio, "
      "${decoration == null ? '' : 'decoration: $decoration, '}"
      """${decorationPosition == null ? '' : 'decorationPosition: $decorationPosition, '}"""
      "${padding == null ? '' : 'padding: $padding, '}"
      "${height == null ? '' : 'height: $height, '}"
      "${width == null ? '' : 'width: $width, '}"
      "${flagChild == null ? '' : 'flagChild: $flagChild,'})";
}
