import "package:flutter/widgets.dart";
import "package:sealed_countries/sealed_countries.dart";

import "../../world_flags.dart" show smallSimplifiedFlagsMap;
import "../helpers/extensions/basic_flag_extension_copy_with.dart";
import "../helpers/extensions/world_flags_build_context_extension.dart";
import "../interfaces/decorated_flag_interface.dart";
import "flags/basic_flag.dart";

/// A widget that displays a flag for a given country.
///
/// The [CountryFlag] widget can be used to display either a simplified or a
/// custom flag for a specified country. It supports various customization
/// options such as height, width, aspect ratio, decoration, padding, and a
/// child widget.
///
/// Example usage:
/// ```dart
/// CountryFlag.simplified(
///   country,
///   height: 50,
///   decoration: BoxDecoration(border: Border.all(color: Colors.black)),
/// )
/// ```
class CountryFlag extends StatelessWidget implements DecoratedFlagInterface {
  /// Creates a [CountryFlag] widget with a simplified flag representation.
  ///
  /// - [country]: The country for which the flag is to be displayed.
  /// - [height]: The height of the flag. If null, the height from the flag
  ///  theme is used.
  /// - [width]: The width of the flag. If null, the width from the flag theme
  ///  is used.
  /// - [aspectRatio]: The aspect ratio of the flag.
  /// - [decoration]: The decoration to paint behind the flag.
  /// - [decorationPosition]: The position of the decoration.
  /// - [padding]: The padding around the flag.
  /// - [orElse]: A widget to display if the flag is not found in the map.
  /// - [child]: A widget to display in the foreground of the flag.
  const CountryFlag.simplified(
    this.country, {
    this.height,
    this.width,
    this.aspectRatio,
    this.decoration,
    this.decorationPosition,
    this.padding,
    this.orElse,
    this.child,
    super.key,
  }) : _map = smallSimplifiedFlagsMap;

  /// Creates a [CountryFlag] widget with a custom flag representation.
  ///
  /// - [country]: The country for which the flag is to be displayed.
  /// - [map]: A map of custom flags.
  /// - [height]: The height of the flag. If null, the height from the flag
  /// theme is used.
  /// - [width]: The width of the flag. If null, the width from the flag theme
  /// is used.
  /// - [aspectRatio]: The aspect ratio of the flag.
  /// - [decoration]: The decoration to paint behind the flag.
  /// - [decorationPosition]: The position of the decoration.
  /// - [padding]: The padding around the flag.
  /// - [orElse]: A widget to display if the flag is not found in the map.
  /// - [child]: A widget to display in the foreground of the flag.
  const CountryFlag.custom(
    this.country,
    this._map, {
    this.height,
    this.width,
    this.aspectRatio,
    this.decoration,
    this.decorationPosition,
    this.padding,
    this.orElse,
    this.child,
    super.key,
  });

  /// A map of flags for different countries.
  ///
  /// This map is used to look up the flag for the specified [country].
  final Map<WorldCountry, BasicFlag> _map;

  /// The country for which the flag is to be displayed.
  final WorldCountry country;

  /// A widget to display if the flag is not found in the map.
  final Widget? orElse;

  /// The width of the flag.
  ///
  /// If null, the width from the flag theme is used.
  final double? width;

  /// The height of the flag.
  ///
  /// If null, the height from the flag theme is used.
  final double? height;

  /// A widget to display in the foreground of the flag.
  final Widget? child;

  @override
  final double? aspectRatio;

  @override
  final BoxDecoration? decoration;

  @override
  final DecorationPosition? decorationPosition;

  @override
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) => SizedBox(
        width: width ?? context.flagTheme?.width,
        height: height ?? context.flagTheme?.height,
        child: _map[country]?.copyWith(
              decorationPosition: decorationPosition,
              aspectRatio: aspectRatio,
              decoration: decoration,
              foregroundWidget: child,
            ) ??
            orElse,
      );
}
