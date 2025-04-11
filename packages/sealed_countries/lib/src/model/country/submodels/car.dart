import "package:sealed_currencies/sealed_currencies.dart";

import "../../../helpers/extensions/country_submodels/car_extension.dart";

/// A class that represents a car.
///
/// The [Car] class is a simple value object that represents a car. It consists
/// of a [String] value that represents the sign of the car, and a [bool] value
/// that indicates whether the cars in specific country are right-side or
/// left-side driven. The [sign] field may be `null` or a non-empty string, and
/// the [isRightSide] field defaults to `true`.
///
/// Example usage:
///
/// ```dart
/// final car = const Car(sign: "NEP", isRightSide: false);
/// print(car.sign); // Prints: "NEP"
/// print(car.isRightSide); // Prints: false
/// ```
final class Car implements JsonEncodable<Car> {
  /// Creates a new [Car] object with the given sign and side values.
  ///
  /// The [sign] parameter may be `null` or a non-empty string.
  const Car({this.sign, this.isRightSide = true})
    : assert(sign == null || sign.length > 0, "`sign` should not be empty!");

  /// Indicates whether the car is right-side or left-side drive.
  final bool isRightSide;

  /// The sign of the car.
  final String? sign;

  @override
  String toString() =>
      'Car(${sign == null ? '' : 'sign: "$sign", '}isRightSide: $isRightSide)';

  @override
  String toJson({JsonCodec codec = const JsonCodec()}) => codec.encode(toMap());

  @override
  bool operator ==(covariant Car other) {
    if (identical(this, other)) return true;

    return other.isRightSide == isRightSide && other.sign == sign;
  }

  @override
  int get hashCode => isRightSide.hashCode ^ sign.hashCode;
}
