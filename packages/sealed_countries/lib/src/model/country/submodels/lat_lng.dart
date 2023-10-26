import "package:sealed_currencies/sealed_currencies.dart";

import "../../../helpers/extensions/country_submodels/lat_lng_extension.dart";

/// A geographic point on the Earth's surface, defined by its latitude and
/// longitude.
///
/// The `LatLng` class is a simple value object that represents a geographic
/// point on the Earth's surface. It consists of a latitude and longitude pair,
/// each of which is represented as a `double` value.
///
/// Example usage:
///
/// ```dart
/// final point = LatLng(37.7749, -122.4194);
/// print(point.latitude); // Prints: 37.7749
/// print(point.longitude); // Prints: -122.4194
/// ```
final class LatLng implements JsonEncodable<LatLng> {
  /// Creates a new `LatLng` object with the given latitude and longitude.
  const LatLng(this.latitude, this.longitude);

  /// Creates a new `LatLng` object with the given latitude and longitude.
  ///
  /// The `latitude` and `longitude` parameters are required and represent the
  /// latitude and longitude of the geographic point, respectively.
  const LatLng.named({required this.latitude, required this.longitude});

  /// The latitude of this geographic point, in degrees.
  final double latitude;

  /// The longitude of this geographic point, in degrees.
  final double longitude;

  @override
  String toString() => "$LatLng($latitude, $longitude)";

  @override
  String toJson({JsonCodec codec = const JsonCodec()}) => codec.encode(toMap());

  @override
  bool operator ==(covariant LatLng other) {
    if (identical(this, other)) return true;

    return other.latitude == latitude && other.longitude == longitude;
  }

  @override
  int get hashCode => latitude.hashCode ^ longitude.hashCode;
}
