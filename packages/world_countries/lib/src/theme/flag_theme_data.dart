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
    "Use flagChild instead. This resolves a naming collision with "
    "InheritedTheme.child. Will be removed in next major version.",
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
      Theme.of(context).extension<FlagThemeData>();

  /// Registers the Material -> FlagTheme bridge.
  /// Idempotent by closure identity.
  static void ensureBridge() {
    if (!a.FlagTheme.fallbackResolvers.contains(_resolver)) {
      // ignore: avoid-collection-mutating-methods, intentional registration.
      a.FlagTheme.fallbackResolvers.add(_resolver);
    }
  }

  // ThemeExtension overrides.
  /// Gets the type of this extension.
  ///
  /// Note: This has a deliberate side-effect of calling [ensureBridge].
  /// Flutter evaluates `.type` during `ThemeData` extension registration.
  /// By hooking into this, we automatically register the bridge to
  /// `world_flags` whenever this extension is added to a `ThemeData`,
  /// allowing users to use `const FlagThemeData(...)` without manual setup.
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
    bool clearDecoration = false,
    bool clearDecorationPosition = false,
    bool clearPadding = false,
    bool clearFlagChild = false,
  }) => FlagThemeData(
    aspectRatio: (aspectRatio?.isNegative ?? false)
        ? null
        : (aspectRatio ?? _aspectRatio),
    decoration: clearDecoration ? null : (decoration ?? this.decoration),
    decorationPosition: clearDecorationPosition
        ? null
        : (decorationPosition ?? this.decorationPosition),
    padding: clearPadding ? null : (padding ?? this.padding),
    height: (height?.isNegative ?? false) ? null : (height ?? this.height),
    width: (width?.isNegative ?? false) ? null : (width ?? this.width),
    flagChild: clearFlagChild ? null : (flagChild ?? child ?? this.flagChild),
  );

  @override
  FlagThemeData lerp(covariant FlagThemeData? other, double t) {
    if (identical(this, other)) return this;
    final otherTheme = other ?? const FlagThemeData.fallback();

    final rawAspectRatio = ui.lerpDouble(
      _aspectRatio,
      otherTheme._aspectRatio,
      t,
    );
    final rawHeight = ui.lerpDouble(height, otherTheme.height, t);
    final rawWidth = ui.lerpDouble(width, otherTheme.width, t);

    final safeAspectRatio = rawAspectRatio != null && rawAspectRatio > 0
        ? rawAspectRatio
        : null;
    final safeHeight = rawHeight != null && rawHeight > 0 ? rawHeight : null;
    final safeWidth = rawWidth != null && rawWidth > 0 ? rawWidth : null;

    return FlagThemeData(
      aspectRatio: safeAspectRatio,
      decoration: BoxDecoration.lerp(decoration, otherTheme.decoration, t),
      decorationPosition: t < 0.5
          ? decorationPosition
          : otherTheme.decorationPosition,
      padding: EdgeInsetsGeometry.lerp(padding, otherTheme.padding, t),
      height: safeHeight,
      width: safeWidth,
      flagChild: t < 0.5 ? flagChild : otherTheme.flagChild,
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
