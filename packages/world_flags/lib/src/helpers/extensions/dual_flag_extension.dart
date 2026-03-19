// ignore_for_file: avoid-passing-default-values

import "package:flutter/widgets.dart";
import "package:sealed_countries/sealed_countries.dart" show IsoStandardized;

import "../../ui/effects/flag_shader_delegate.dart";
import "../../ui/flags/basic_flag.dart";
import "../../ui/flags/iso/dual_flag.dart";

/// An extension on [DualFlag] to provide a [copyWith] method for creating a
/// new instance of [DualFlag] with modified properties.
extension DualFlagExtension<T extends IsoStandardized, F extends BasicFlag>
    on DualFlag<T, F> {
  /// Creates a copy of this [DualFlag] but with the given fields replaced with
  /// the new values.
  ///
  /// - [item]: The item for which the flag is to be displayed.
  /// - [map]: A map of flags for ISO objects.
  /// - [alternativeMap]: A map of non-official or alternative flags of the ISO.
  /// - [orElse]: A widget to display if the flag is not found in the map.
  /// - [height]: The height of the flag.
  /// - [width]: The width of the flag.
  /// - [aspectRatio]: The aspect ratio of the flag.
  /// - [decoration]: The decoration to paint behind the flag.
  /// - [decorationPosition]: The position of the decoration.
  /// - [padding]: The padding around the flag.
  /// - [splitAngle]: The angle of the split line in degrees.
  /// - [clipSecondary]: Whether to clip the secondary flag or the primary flag.
  /// - [clipBehavior]: The clip behavior for the split edge.
  /// - [child]: A widget to display in the foreground of the flag.
  /// - [key]: The key for the widget.
  DualFlag<T, F> copyWith({
    T? item,
    Map<T, F>? map,
    Map<T, F>? alternativeMap,
    Widget? orElse,
    double? height,
    double? width,
    double? aspectRatio,
    BoxDecoration? decoration,
    DecorationPosition? decorationPosition,
    EdgeInsetsGeometry? padding,
    FlagShaderDelegate? shader,
    int? splitAngle,
    bool? clipSecondary,
    Clip? clipBehavior,
    Widget? child,
    Key? key,
  }) => DualFlag<T, F>(
    item ?? this.item,
    map ?? this.map,
    alternativeMap: alternativeMap ?? this.alternativeMap,
    aspectRatio: (aspectRatio?.isNegative ?? false)
        ? null
        : (aspectRatio ?? this.aspectRatio),
    clipBehavior: clipBehavior ?? this.clipBehavior,
    clipSecondary: clipSecondary ?? this.clipSecondary,
    decoration: decoration ?? this.decoration,
    decorationPosition: decorationPosition ?? this.decorationPosition,
    height: (height?.isNegative ?? false) ? null : (height ?? this.height),
    key: key ?? this.key,
    orElse: orElse ?? this.orElse,
    padding: padding ?? this.padding,
    shader: shader ?? this.shader,
    splitAngle: splitAngle ?? this.splitAngle,
    width: (width?.isNegative ?? false) ? null : (width ?? this.width),
    child: child ?? this.child,
  );
}
