// ignore_for_file: avoid-passing-default-values

import "package:flutter/foundation.dart";
import "package:flutter/widgets.dart";
import "package:sealed_countries/sealed_countries.dart" show IsoStandardized;

import "../debug/iso_diagnostics_property.dart";
import "../helpers/extensions/basic_flag_extension_copy_with.dart";
import "decorated_flag_widget.dart";
import "effects/flag_shader_delegate.dart";
import "flags/basic_flag.dart";

/// A widget that displays a flag for a given ISO object.
///
/// The [IsoFlag] widget can be used to display either a simplified or a
/// custom flag for a specified ISO object. It supports various customization
/// options such as height, width, aspect ratio, decoration (and its position),
/// padding, and a child widget.
///
/// Example usage:
/// ```dart
/// IsoFlag(
///   isoObject,
///   const {}, // Map of flags for ISO objects.
///   height: 50,
///   decoration: BoxDecoration(border: Border.all(color: Colors.black)),
/// )
/// ```
@optionalTypeArgs
class IsoFlag<T extends IsoStandardized, F extends BasicFlag>
    extends DecoratedFlagWidget {
  /// Creates a [IsoFlag] widget with a simplified flag representation.
  ///
  /// - [item]: The item for which the flag is to be displayed.
  /// - [_map]: A map of flags for ISO objects.
  /// - [alternativeMap]: A map of non-official or alternative flags of the ISO.
  /// - [aspectRatio]: The aspect ratio of the flag.
  /// - [decoration]: The decoration to paint behind the flag.
  /// - [decorationPosition]: The position of the decoration.
  /// - [padding]: The padding around the flag.
  /// - [orElse]: A widget to display if the flag is not found in the map.
  /// - [height]: The height of the flag. If `null`, the height from the flag
  ///  theme is used.
  /// - [width]: The width of the flag. If `null`, the width from the flag theme
  ///  is used.
  /// - [child]: A widget to display in the foreground of the flag.
  /// - [key]: The key for the widget.
  const IsoFlag(
    this.item,
    this._map, {
    Map<T, F>? alternativeMap,
    this.orElse,
    this.shader,
    super.height,
    super.width,
    super.aspectRatio,
    super.decoration,
    super.decorationPosition,
    super.padding,
    super.child,
    super.key,
  }) : _alternativeMap = alternativeMap;

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

  /// Optional shader delegate applied when painting the stripes.
  final FlagShaderDelegate? shader;

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
          "child",
          child,
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
      );
  }

  @override
  Widget build(BuildContext context) =>
      basicFlag?.copyWith(
        key: Key(debugLabel),
        aspectRatio: aspectRatio,
        decoration: decoration,
        decorationPosition: decorationPosition,
        padding: padding,
        height: height,
        width: width,
        child: child,
      ) ??
      orElse ??
      const SizedBox.shrink();
}
