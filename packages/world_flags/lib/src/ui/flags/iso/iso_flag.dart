// ignore_for_file: avoid-passing-default-values

import "package:flutter/foundation.dart";
import "package:flutter/widgets.dart";
import "package:sealed_countries/sealed_countries.dart" show IsoStandardized;

import "../../../debug/iso_diagnostics_property.dart";
import "../../../helpers/extensions/basic_flag_extension_copy_with.dart";
import "../../../helpers/extensions/world_flags_build_context_extension.dart";
import "../../decorated_flag_widget.dart";
import "../../effects/flag_shader_delegate.dart";
import "../../effects/flag_shader_surface.dart";
import "../basic_flag.dart";

/// A widget that displays a flag for a given ISO object.
///
/// The [IsoFlag] widget can be used to display either a simplified or a
/// custom flag for a specified ISO object. It supports various customization
/// options such as height, width, aspect ratio, decoration (and its position),
/// padding, and a child widget.
///
/// Example usage:
/// ```dart
/// import 'package:flutter/material.dart';
/// import 'package:world_flags/world_flags.dart';
///
/// void main() {
///   final country = WorldCountry.list.first;
///   IsoFlag(
///     country,
///     smallSimplifiedFlagsMap,
///     height: 50,
///     decoration: BoxDecoration(border: Border.all()),
///   );
/// }
/// ```
@optionalTypeArgs
class IsoFlag<T extends IsoStandardized, F extends BasicFlag>
    extends DecoratedFlagWidget {
  /// Creates a [IsoFlag] widget with a simplified flag representation.
  ///
  /// - [item]: The item for which the flag is to be displayed.
  /// - [_map]: A map of flags for ISO objects.
  /// - [_alternativeMap]: A map of non-official or alternative flags of ISO.
  /// - [aspectRatio]: The aspect ratio of the flag.
  /// - [decoration]: The decoration to paint behind the flag.
  /// - [decorationPosition]: The position of the decoration.
  /// - [padding]: The padding around the flag.
  /// - [orElse]: A widget to display if the flag is not found in the map.
  /// - [height]: The height of the flag. If `null`, the height from the flag
  ///  theme is used.
  /// - [width]: The width of the flag. If `null`, the width from the flag theme
  ///  is used.
  /// - [shader]: An optional shader delegate the flag is painted through.
  /// - [flagChild]: A widget to display in the foreground of the flag.
  /// - [semanticLabel]: A description of the flag for accessibility.
  /// - [key]: The key for the widget.
  const new(
    this.item,
    this._map, {
    this._alternativeMap,
    this.orElse,
    this.shader,
    super.height,
    super.width,
    super.aspectRatio,
    super.decoration,
    super.decorationPosition,
    super.padding,
    super.flagChild,
    @Deprecated("Use flagChild instead. Will be removed in next major version.")
    super.child,
    this.semanticLabel,
    super.key,
  });

  final Map<T, F> _map;
  final Map<T, F>? _alternativeMap;

  /// The item for which the flag is to be displayed.
  final T item;

  /// A map of flags for ISO objects.
  ///
  /// This map is used to look up the flag for the specified [item].
  Map<T, F> get map => _map;

  /// Map of non-official or alternative flags of the ISO objects.
  Map<T, F>? get alternativeMap => _alternativeMap;

  /// A widget to display if the flag is not found in the map.
  final Widget? orElse;

  /// Optional shader delegate the flag is painted through.
  ///
  /// When provided, the flag is rendered by a [FlagShaderSurface] with this
  /// delegate, while its size, padding, decoration and child are preserved.
  /// The delegate is owned by the caller, who is responsible for disposing it.
  final FlagShaderDelegate? shader;

  /// A description of the flag for accessibility, announced by screen readers
  /// (i.e. the name of the country). If `null`, the flag is announced as an
  /// image without description, so provide it if no text describes the flag.
  final String? semanticLabel;

  @override
  String toStringShort() => "IsoFlag($debugLabel)";

  /// Returns the [BasicFlag] for the specified item from the main map
  /// or the alternative map if available.
  F? get basicFlag => _alternativeMap?[item] ?? _map[item];

  /// Returns a debug label for the flag, which is the ISO code by default.
  @protected
  String get debugLabel => item.code;

  @override
  // ignore: avoid-long-functions, a lot of properties to show.
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    const theme = "not provided, using value from FlagThemeData or";
    const ifNull = "$theme null, if theme is also not provided";

    properties
      ..add(IsoDiagnosticsProperty(item, additionalData: debugLabel))
      ..add(DoubleProperty("width", width, ifNull: ifNull))
      ..add(DoubleProperty("height", height, ifNull: ifNull))
      ..add(
        DoubleProperty(
          "aspectRatio",
          aspectRatio,
          ifNull: "$theme flag's aspect ratio (${basicFlag?.flagAspectRatio})",
          defaultValue: null,
        ),
      )
      ..add(
        ObjectFlagProperty<Widget>(
          "flagChild",
          flagChild,
          ifNull: "no foreground widget",
        ),
      )
      ..add(
        ObjectFlagProperty<Widget>(
          "orElse",
          orElse,
          ifNull: "no fallback widget",
        ),
      )
      ..add(
        DiagnosticsProperty<BoxDecoration>(
          "decoration",
          decoration,
          ifNull: "$theme const $BoxDecoration() otherwise",
          defaultValue: null,
        ),
      )
      ..add(
        DiagnosticsProperty<DecorationPosition>(
          "decorationPosition",
          decorationPosition,
          ifNull: "$theme ${DecorationPosition.foreground} otherwise",
          defaultValue: null,
        ),
      )
      ..add(
        DiagnosticsProperty<EdgeInsetsGeometry>(
          "padding",
          padding,
          ifNull: "$theme ${EdgeInsets.zero} otherwise",
          defaultValue: null,
        ),
      )
      ..add(
        FlagProperty(
          "any ${item.internationalName} item flag found",
          value: basicFlag != null,
          ifTrue: "yes",
          ifFalse: "not found in both maps",
        ),
      )
      ..add(
        FlagProperty(
          "uses alternative flag for this ${item.internationalName} item",
          value: _alternativeMap?[item] != null,
          ifTrue: "yes",
          ifFalse: "no",
        ),
      )
      ..add(
        DiagnosticsProperty<int>(
          "total flags available in _map",
          _map.length,
          description: "${_map.length} flags in main map",
        ),
      )
      ..add(
        DiagnosticsProperty<int>(
          "total flags available in _alternativeMap",
          _alternativeMap?.length,
          description: "${_alternativeMap?.length} flags in alt. map",
        ),
      )
      ..add(
        DiagnosticsProperty<Map<T, F>?>(
          "alternativeMap",
          alternativeMap,
          ifEmpty: "empty alternative flags map provided",
          ifNull: "no alternative flags map provided",
        ),
      )
      ..add(
        DiagnosticsProperty<Map<T, F>>(
          "map",
          map,
          ifEmpty: "empty flags map provided",
        ),
      )
      ..add(
        DiagnosticsProperty<FlagShaderDelegate?>(
          "shader",
          shader,
          ifNull: "no shader provided",
        ),
      )
      ..add(StringProperty("semanticLabel", semanticLabel, defaultValue: null));
  }

  /// Returns the [flag] painted through the [shader], if it's provided.
  ///
  /// The flag keeps its size, padding, decoration and child: its stripes,
  /// elements and painters are painted by a [FlagShaderSurface] instead
  /// (clipped to the shape of the decoration), with the child (if any) laid
  /// out above it.
  @protected
  BasicFlag withShader(BuildContext context, BasicFlag flag) {
    final delegate = shader;
    if (delegate == null) return flag;

    final theme = context.flagTheme;
    final themeDecoration = theme?.decoration;
    // The surface paints the painters of the flag, with its (theme) decoration.
    final surface = FlagShaderSurface(
      item,
      map: {
        item: flag.decoration == null && themeDecoration != null
            ? flag.copyWith(decoration: themeDecoration)
            : flag,
      },
      shader: delegate,
    );
    final BasicFlag(
      :flagAspectRatio,
      flagChild: child,
      :foregroundWidgetBuilder,
      :properties,
    ) = flag;
    final foreground =
        child ??
        foregroundWidgetBuilder?.call(
          properties.elementsProperties,
          flagAspectRatio,
        ) ??
        theme?.flagChild;

    return flag.copyWith(
      // Both are painted by the surface, so nothing is painted outside of it.
      backgroundPainter: const _EmptyPainter(),
      foregroundPainter: const _EmptyPainter(),
      flagChild: foreground == null
          ? surface
          : Stack(fit: StackFit.expand, children: [surface, foreground]),
    );
  }

  @override
  Widget build(BuildContext context) {
    final flag = basicFlag?.copyWith(
      key: Key(debugLabel),
      aspectRatio: aspectRatio,
      decoration: decoration,
      decorationPosition: decorationPosition,
      padding: padding,
      height: height,
      width: width,
      flagChild: flagChild,
      semanticLabel: semanticLabel,
    );

    return flag == null
        ? (orElse ?? const SizedBox.shrink())
        // ignore: avoid-returning-widgets, it's a modified copy of the flag.
        : withShader(context, flag);
  }
}

/// Paints nothing, used in place of the stripes when a shader paints the flag.
final class _EmptyPainter extends CustomPainter {
  const new();

  @override
  // ignore: no-empty-block, the shader surface child paints the flag instead.
  void paint(Canvas canvas, Size size) {}

  @override
  bool shouldRepaint(_EmptyPainter oldDelegate) => false;
}
