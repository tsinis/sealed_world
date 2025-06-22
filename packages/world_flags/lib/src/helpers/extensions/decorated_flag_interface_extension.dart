import "../../interfaces/decorated_flag_interface.dart";

/// An extension on [DecoratedFlagInterface] that provides a method to calculate
/// the aspect ratio of the flag based on its width and height.
extension DecoratedFlagInterfaceExtension on DecoratedFlagInterface {
  /// The calculated aspect ratio of the flag based on its width and height.
  double? get calculatedAspectRatio =>
      width == null || height == null ? null : (width ?? 1) / (height ?? 1);
}
