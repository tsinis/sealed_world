import "package:flutter/foundation.dart";

import "../constants/flag_constants.dart";
import "colors_properties.dart";
import "elements/elements_properties.dart";
import "stripe_orientation.dart";

/// A class representing the properties of a flag.
///
/// This class is immutable and provides properties for the colors of the
/// stripes, the aspect ratio, the orientation of the stripes, additional
/// elements, and a URL.
///
/// Example usage:
/// ```dart
/// import 'package:world_flags/world_flags.dart';
///
/// void main() {
///   const flagProps = FlagProperties(
///     [ColorsProperties(Colors.red), ColorsProperties(Colors.white)],
///     aspectRatio: 2,
///     stripeOrientation: StripeOrientation.vertical,
///   );
///   print(flagProps);
/// }
/// ```
///
/// The properties include:
/// - [stripeColors]: The list of colors for the stripes of the flag.
/// - [aspectRatio]: The aspect ratio of the flag, given as width to height.
/// - [stripeOrientation]: The orientation of the stripes (horizontal or
///       vertical).
/// - [elementsProperties]: Additional elements on the flag.
/// - [url]: A URL associated with the flag, used for testing purposes.
@immutable
class FlagProperties {
  /// Creates a new instance of [FlagProperties].
  ///
  /// The [stripeColors] parameter is required and specifies the colors of the
  /// stripes. The [aspectRatio] parameter is optional and defaults to
  /// [FlagConstants.defaultAspectRatio]. The [stripeOrientation] parameter is
  /// optional and defaults to [StripeOrientation.horizontal]. The
  /// [elementsProperties] parameter is optional and specifies additional
  /// elements on the flag. The [url] parameter is optional and defaults to an
  /// empty string. It is used for testing purposes.
  const FlagProperties(
    this.stripeColors, {
    this.aspectRatio = FlagConstants.defaultAspectRatio,
    this.stripeOrientation = StripeOrientation.horizontal,
    this.elementsProperties,
    this.url = "",
  }) : assert(
         stripeColors != const <ColorsProperties>[],
         "`stripeColors` should not be empty!",
       );

  /// The list of colors for the stripes of the flag.
  final List<ColorsProperties> stripeColors;

  /// Additional elements on the flag.
  final List<ElementsProperties>? elementsProperties;

  /// The aspect ratio of the flag.
  ///
  /// The aspect ratio is conventionally given as height to width, but in this
  /// package (and in computer graphics in general) it is given as width to
  /// height.
  final double aspectRatio;

  /// The orientation of the stripes (horizontal, vertical and diagonals).
  final StripeOrientation stripeOrientation;

  /// A URL associated with the flag, used for testing purposes.
  @visibleForTesting
  final String url;

  @override
  String toString() =>
      "FlagProperties($stripeColors, aspectRatio: $aspectRatio, "
      "stripeOrientation: $stripeOrientation, url: $url"
      """${elementsProperties == null ? '' : ', elementsProperties: $elementsProperties'},)""";
}
