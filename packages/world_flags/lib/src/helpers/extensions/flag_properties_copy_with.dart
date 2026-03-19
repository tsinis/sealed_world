import "../../model/colors_properties.dart";
import "../../model/elements/elements_properties.dart";
import "../../model/flag_elements_type.dart";
import "../../model/flag_properties.dart";
import "../../model/stripe_orientation.dart";

/// An extension on [FlagProperties] to provide a [copyWith] method for
/// creating a new instance of [FlagProperties] with modified properties.
extension FlagPropertiesCopyWith on FlagProperties {
  /// {@macro copy_with_method}
  ///
  /// - [stripeColors]: The list of colors for the stripes of the flag.
  /// - [aspectRatio]: The aspect ratio of the flag.
  /// - [stripeOrientation]: The orientation of the stripes.
  /// - [elementsProperties]: Additional elements on the flag. Pass an empty
  ///   list to reset to `null`.
  /// - [baseElementType]: The type of the flag element.
  /// - [isSimplified]: Whether the flag is simplified.
  // ignore: avoid-incomplete-copy-with, only missing `url` which is debug info.
  FlagProperties copyWith({
    List<ColorsProperties>? stripeColors,
    double? aspectRatio,
    StripeOrientation? stripeOrientation,
    List<ElementsProperties>? elementsProperties,
    FlagElementsType? baseElementType,
    bool? isSimplified,
  }) => FlagProperties(
    stripeColors ?? this.stripeColors,
    aspectRatio: aspectRatio ?? this.aspectRatio,
    stripeOrientation: stripeOrientation ?? this.stripeOrientation,
    elementsProperties: (elementsProperties?.isEmpty ?? false)
        ? null
        : (elementsProperties ?? this.elementsProperties),
    baseElementType: baseElementType ?? this.baseElementType,
    isSimplified: isSimplified ?? this.isSimplified,
  );
}
