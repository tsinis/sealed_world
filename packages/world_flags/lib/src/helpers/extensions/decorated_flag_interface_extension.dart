import "../../interfaces/decorated_flag_interface.dart";
import "aspect_ratio_extension.dart";

/// An extension on [DecoratedFlagInterface] that provides a method to calculate
/// the aspect ratio of the flag based on its width and height.
extension DecoratedFlagInterfaceExtension on DecoratedFlagInterface {
  /// The calculated aspect ratio of the flag based on its width and height.
  double? get calculatedAspectRatio => height.aspectRatio(width);
}
