import "package:flutter/foundation.dart";

import "../constants/flag_constants.dart";
import "colors_properties.dart";
import "elements/elements_properties.dart";
import "flag_elements_type.dart";
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
///  vertical).
/// - [elementsProperties]: Additional elements on the flag.
/// - [url]: A URL associated with the flag, used for testing purposes.
/// - [baseElementType]: The type of the flag, used to determine the shape
/// or element.
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
  /// The [baseElementType] parameter is optional and specifies the element's
  /// type of the flag.
  const FlagProperties(
    this.stripeColors, {
    this.aspectRatio = FlagConstants.defaultAspectRatio,
    this.stripeOrientation = StripeOrientation.horizontal,
    this.baseElementType,
    this.elementsProperties,
    this.isSimplified = false,
    this.url = "",
  }) : assert(
         stripeColors != const <ColorsProperties>[],
         "`stripeColors` should not be empty!",
       ),
       assert(
         baseElementType == null ||
             (elementsProperties != null &&
                 elementsProperties != const <ElementsProperties>[]),
         "If `baseElementType` is specified, `elementsProperties` must not be "
         "null or empty!",
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

  /// Indicates whether the flag is simplified (e.g. elements are not detailed).
  /// If `true`, the flag is simplified, meaning it may not include all
  /// details or elements, so it's not suitable for rendering in bigger sizes.
  /// If `false`, the flag is not simplified, meaning it includes all details
  /// and elements, so it's suitable for rendering in any size.
  final bool isSimplified;

  /// A URL associated with the flag, used for testing purposes.
  @visibleForTesting
  final String url;

  /// The base flag's element type. It typically corresponds to the flag's
  /// [elementsProperties] first shape, but it can be different (e.g.
  /// multi-element).
  ///
  /// * If not `null`, it indicates the type of elements that can be described
  /// with a simple geometric shapes reference (e.g. a star, triangle, etc.).
  /// * If `null`, and [elementsProperties] is also `null`, the flag has no
  /// elements (it's a basic flag with stripes).
  /// * If `null`, and [elementsProperties] is not `null`, the flag has custom
  /// elements (that cannot be described with a simple geometric shapes
  /// reference, e.g. an eagle symbol).
  final FlagElementsType? baseElementType;

  @override
  String toString() =>
      "FlagProperties($stripeColors, aspectRatio: $aspectRatio, "
      "stripeOrientation: $stripeOrientation, isSimplified: $isSimplified"
      """${elementsProperties == null ? '' : ', elementsProperties: $elementsProperties'}"""
      "${baseElementType == null ? '' : ', baseElementType: $baseElementType'}"
      ", url: $url)";
}
