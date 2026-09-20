// ignore_for_file: prefer-class-destructuring, prefer-private-named-parameters

import "dart:ui" as ui show lerpDouble;

import "package:flutter/material.dart";
import "package:world_flags/world_flags.dart" as a;

/// A Material [ThemeExtension] that provides flag theming data.
///
/// Place this in `ThemeData.extensions` to configure the default appearance
/// of flags across your application.
final class FlagThemeData
    implements a.DecoratedFlagInterface, ThemeExtension<FlagThemeData> {
  /// Creates a new [FlagThemeData].
  const new({
    double? aspectRatio,
    this.decoration,
    this.decorationPosition,
    this.padding,
    this.height,
    this.width,
    @Deprecated(
      "Use flagChild instead. Will be removed in the next major version.",
    )
    Widget? child,
    Widget? flagChild,
  }) : assert(height == null || height > 0, "`height` must be greater than 0"),
       assert(width == null || width > 0, "`width` must be greater than 0"),
       assert(
         aspectRatio == null || aspectRatio > 0,
         "`aspectRatio` must be greater than 0",
       ),
       flagChild = flagChild ?? child,
       _aspectRatio = aspectRatio;

  /// Creates a fallback instance with all fields `null`.
  const new fallback()
    : decoration = null,
      decorationPosition = null,
      padding = null,
      height = null,
      width = null,
      flagChild = null,
      _aspectRatio = null;

  /// Creates an instance with pre-defined defaults for small flags.
  const new small({
    double? aspectRatio,
    this.decoration = const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(4)),
    ),
    this.decorationPosition,
    this.padding,
    this.height = 18,
    this.width,
    @Deprecated(
      "Use flagChild instead. Will be removed in the next major version.",
    )
    Widget? child,
    Widget? flagChild,
  }) : assert(height == null || height > 0, "`height` must be greater than 0"),
       assert(width == null || width > 0, "`width` must be greater than 0"),
       assert(
         aspectRatio == null || aspectRatio > 0,
         "`aspectRatio` must be greater than 0",
       ),
       flagChild = flagChild ?? child,
       _aspectRatio = aspectRatio;

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
    "Use flagChild instead. Will be removed in the next major version.",
  )
  @override
  Widget? get child => flagChild;

  final double? _aspectRatio;

  @override
  double? get aspectRatio => specifiedAspectRatio;

  /// The specified aspect ratio of the flag.
  double? get specifiedAspectRatio => _aspectRatio;

  // Bridge registration.
  static a.DecoratedFlagInterface? _resolver(BuildContext context) =>
      Theme.of(context).extensions.values
          .whereType<FlagThemeData>()
          .firstOrNull;

  /// Registers the Material -> FlagTheme bridge.
  /// Idempotent by closure identity.
  static void ensureBridge() {
    if (!a.FlagTheme.fallbackResolvers.contains(_resolver)) {
      // ignore: avoid-collection-mutating-methods, intentional registration.
      a.FlagTheme.fallbackResolvers.add(_resolver);
    }
  }

  // ThemeExtension overrides.
  @override
  Object get type {
    ensureBridge();

    return FlagThemeData;
  }

  @override
  FlagThemeData copyWith({
    double? aspectRatio,
    BoxDecoration? decoration,
    DecorationPosition? decorationPosition,
    EdgeInsetsGeometry? padding,
    double? height,
    double? width,
    @Deprecated(
      "Use flagChild instead. Will be removed in the next major version.",
    )
    Widget? child,
    Widget? flagChild,
  }) => FlagThemeData(
    aspectRatio: (aspectRatio?.isNegative ?? false)
        ? null
        : (aspectRatio ?? _aspectRatio),
    decoration: decoration ?? this.decoration,
    decorationPosition: decorationPosition ?? this.decorationPosition,
    padding: padding ?? this.padding,
    height: (height?.isNegative ?? false) ? null : (height ?? this.height),
    width: (width?.isNegative ?? false) ? null : (width ?? this.width),
    flagChild: flagChild ?? child ?? this.flagChild,
  );

  @override
  FlagThemeData lerp(covariant FlagThemeData? other, double t) {
    if (other == null) return this;

    return FlagThemeData(
      aspectRatio: ui.lerpDouble(_aspectRatio, other._aspectRatio, t),
      decoration: BoxDecoration.lerp(decoration, other.decoration, t),
      decorationPosition: t < 0.5
          ? decorationPosition
          : other.decorationPosition,
      padding: EdgeInsetsGeometry.lerp(padding, other.padding, t),
      height: ui.lerpDouble(height, other.height, t),
      width: ui.lerpDouble(width, other.width, t),
      flagChild: t < 0.5 ? flagChild : other.flagChild,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is FlagThemeData &&
        other._aspectRatio == _aspectRatio &&
        other.decoration == decoration &&
        other.decorationPosition == decorationPosition &&
        other.padding == padding &&
        other.height == height &&
        other.width == width &&
        other.flagChild == flagChild;
  }

  @override
  int get hashCode => Object.hash(
    _aspectRatio,
    decoration,
    decorationPosition,
    padding,
    height,
    width,
    flagChild,
  );

  @override
  String toString() =>
      "FlagThemeData(aspectRatio: $_aspectRatio, "
      "${decoration == null ? '' : 'decoration: $decoration, '}"
      """${decorationPosition == null ? '' : 'decorationPosition: $decorationPosition, '}"""
      "${padding == null ? '' : 'padding: $padding, '}"
      "${height == null ? '' : 'height: $height, '}"
      "${width == null ? '' : 'width: $width, '}"
      "${flagChild == null ? '' : 'flagChild: $flagChild,'})";
}
