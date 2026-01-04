// ignore_for_file: avoid-passing-default-values

import "package:sealed_countries/sealed_countries.dart";

// ignore: avoid-importing-entrypoint-exports, only shows maps.
import "../../world_flags.dart" show smallSimplifiedFlagsMap;
import "flags/basic_flag.dart";
import "iso_flag.dart";

/// A widget that displays a flag for a given country.
///
/// The [CountryFlag] widget can be used to display either a simplified or a
/// custom flag for a specified country. It supports various customization
/// options such as height, width, aspect ratio, decoration (and its position),
/// padding, and a child widget.
///
/// Example usage:
/// ```dart
/// CountryFlag.simplified(
///   country,
///   height: 50,
///   decoration: BoxDecoration(border: Border.all(color: Colors.black)),
/// )
/// ```
class CountryFlag extends IsoFlag<WorldCountry, BasicFlag> {
  /// Creates a [CountryFlag] widget with a simplified flag representation.
  ///
  /// - [country]: The country for which the flag is to be displayed.
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
  const CountryFlag.simplified(
    WorldCountry country, {
    super.alternativeMap,
    super.height,
    super.width,
    super.aspectRatio,
    super.decoration,
    super.decorationPosition,
    super.padding,
    super.shader,
    super.orElse,
    super.child,
    super.key,
  }) : super(country, smallSimplifiedFlagsMap);

  /// Creates a [CountryFlag] widget with a custom flag representation.
  ///
  /// - [item]: The country for which the flag is to be displayed.
  /// - [_map]: A map of flags for ISO countries.
  /// - [alternativeMap]: A map of custom flags.
  /// - [aspectRatio]: The aspect ratio of the flag.
  /// - [decoration]: The decoration to paint behind the flag.
  /// - [decorationPosition]: The position of the decoration.
  /// - [padding]: The padding around the flag.
  /// - [orElse]: A widget to display if the flag is not found in the map.
  /// - [height]: The height of the flag. If `null`, the height from the flag
  /// theme is used.
  /// - [width]: The width of the flag. If `null`, the width from the flag theme
  /// is used.
  /// - [child]: A widget to display in the foreground of the flag.
  /// - [key]: The key for the widget.
  const CountryFlag.custom(
    super.item,
    super._map, {
    super.alternativeMap,
    super.aspectRatio,
    super.decoration,
    super.decorationPosition,
    super.padding,
    super.height,
    super.width,
    super.shader,
    super.orElse,
    super.child,
    super.key,
  });

  @override
  String toStringShort() => "CountryFlag($debugLabel)";

  @override
  String get debugLabel => item.emoji;
}
