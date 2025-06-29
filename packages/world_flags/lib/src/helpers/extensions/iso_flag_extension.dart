// ignore_for_file: avoid-passing-default-values

import "package:flutter/widgets.dart";
import "package:sealed_countries/sealed_countries.dart" show IsoStandardized;

import "../../ui/flags/basic_flag.dart";
import "../../ui/iso_flag.dart";

/// An extension on [IsoFlag] to provide a [copyWith] method for creating a
/// new instance of [IsoFlag] with modified properties.
extension IsoFlagExtension<T extends IsoStandardized, F extends BasicFlag>
    on IsoFlag<T, F> {
  /// Creates a copy of this [IsoFlag] but with the given fields replaced with
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
  /// - [child]: A widget to display in the foreground of the flag.
  /// - [key]: The key for the widget.
  IsoFlag<T, F> copyWith({
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
    Widget? child,
    Key? key,
  }) => IsoFlag(
    item ?? this.item,
    map ?? this.map,
    alternativeMap: alternativeMap ?? this.alternativeMap,
    orElse: orElse ?? this.orElse,
    height: height ?? this.height,
    width: width ?? this.width,
    aspectRatio: aspectRatio ?? this.aspectRatio,
    decoration: decoration ?? this.decoration,
    decorationPosition: decorationPosition ?? this.decorationPosition,
    padding: padding ?? this.padding,
    key: key ?? this.key,
    child: child ?? this.child,
  );
}
