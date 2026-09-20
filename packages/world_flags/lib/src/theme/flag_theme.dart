// ignore_for_file: prefer-class-destructuring

import "package:flutter/foundation.dart";
import "package:flutter/widgets.dart";

import "../interfaces/decorated_flag_interface.dart";

// Private data holder for FlagTheme.
final class _FlagThemeData implements DecoratedFlagInterface {
  const new({
    this.aspectRatio,
    this.decoration,
    this.decorationPosition,
    this.padding,
    this.height,
    this.width,
    this.flagChild,
  });

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

  @override
  Widget? get child => flagChild;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is _FlagThemeData &&
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
}

/// An inherited widget that defines the visual props for flags in its subtree.
///
/// This provides a widgets-level theme carrier for [DecoratedFlagInterface]
/// data, decoupled from the Material library.
final class FlagTheme extends InheritedTheme {
  /// Creates a [FlagTheme] by specifying individual flag properties.
  const new({
    required super.child,
    super.key,
    this.aspectRatio,
    this.decoration,
    this.decorationPosition,
    this.padding,
    this.height,
    this.width,
    this.flagChild,
  }) : _data = null;

  /// Creates a [FlagTheme] from an existing [DecoratedFlagInterface] instance.
  ///
  /// Follows Flutter conventions for accepting base/interface inputs.
  const new fromBase({
    required DecoratedFlagInterface this._data,
    required super.child,
    super.key,
  }) : aspectRatio = null,
       decoration = null,
       decorationPosition = null,
       padding = null,
       height = null,
       width = null,
       flagChild = null;

  /// Returns the [DecoratedFlagInterface] from the closest [FlagTheme]
  /// instance that encloses the given context.
  ///
  /// If no [FlagTheme] is found, it queries the [fallbackResolvers] in order.
  /// If no resolver provides a theme, it returns a default all-null instance.
  static DecoratedFlagInterface of(BuildContext context) =>
      maybeOf(context) ?? const _FlagThemeData();

  /// Returns the [DecoratedFlagInterface] from the closest [FlagTheme]
  /// instance that encloses the given context, or from the fallback resolvers.
  ///
  /// Returns `null` if no theme can be resolved.
  static DecoratedFlagInterface? maybeOf(BuildContext context) {
    final inherited = context.dependOnInheritedWidgetOfExactType<FlagTheme>();
    if (inherited != null) return inherited.data;

    for (final resolve in fallbackResolvers) {
      final resolvedData = resolve(context);
      if (resolvedData != null) return resolvedData;
    }

    return null;
  }

  /// Clears the fallback resolvers. Intended for use in test `tearDown`.
  @visibleForTesting
  // ignore: avoid-collection-mutating-methods, intentional for tests.
  static void debugResetFallbackResolvers() => fallbackResolvers.clear();

  final DecoratedFlagInterface? _data;

  /// The specified aspect ratio of the flag.
  final double? aspectRatio;

  /// The decoration of the flag.
  final BoxDecoration? decoration;

  /// The position of the decoration.
  final DecorationPosition? decorationPosition;

  /// The padding around the flag.
  final EdgeInsetsGeometry? padding;

  /// The height of the flag.
  final double? height;

  /// The width of the flag.
  final double? width;

  /// A widget to display in the foreground of the flag.
  final Widget? flagChild;

  /// Permanent public API for adapter packages (like `world_countries`) to
  /// bridge their own theme carrier (like Material `ThemeExtension`) into
  /// `world_flags`.
  static final fallbackResolvers =
      <DecoratedFlagInterface? Function(BuildContext)>[];

  /// The synthesized theme data.
  DecoratedFlagInterface get data =>
      _data ??
      _FlagThemeData(
        aspectRatio: aspectRatio,
        decoration: decoration,
        decorationPosition: decorationPosition,
        padding: padding,
        height: height,
        width: width,
        flagChild: flagChild,
      );

  @override
  bool updateShouldNotify(FlagTheme oldWidget) => data != oldWidget.data;

  @override
  Widget wrap(BuildContext context, Widget child) =>
      FlagTheme.fromBase(data: data, child: child);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty<DecoratedFlagInterface>("data", data))
      ..add(DoubleProperty("aspectRatio", aspectRatio))
      ..add(DiagnosticsProperty<BoxDecoration?>("decoration", decoration))
      ..add(
        EnumProperty<DecorationPosition?>(
          "decorationPosition",
          decorationPosition,
        ),
      )
      ..add(DiagnosticsProperty<EdgeInsetsGeometry?>("padding", padding))
      ..add(DoubleProperty("height", height))
      ..add(DoubleProperty("width", width));
  }
}
