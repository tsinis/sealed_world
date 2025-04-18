import "package:sealed_currencies/sealed_currencies.dart";

import "../../../helpers/extensions/country_submodels/maps_extension.dart";

/// A class that represents URLs for Google Maps and OpenStreetMap.
///
/// The [Maps] class is a simple wrapper around two string URLs for Google Maps
/// and OpenStreetMap. The URL prefixes are provided as static constants, while
/// URL generation functionality is available through the [MapsExtension].
///
/// Example usage:
///
/// ```dart
/// final maps = Maps(googleMaps: "abcdefg", openStreetMaps: "123456789");
/// print(maps.googleMapsUrl); // Output: "https://goo.gl/maps/abcdefg"
/// print(maps.openStreetMapsUrl); // Output: "https://www.openstreetmap.org/123456789"
/// ```
final class Maps implements JsonEncodable<Maps> {
  /// Creates a new [Maps] object with the given Google Maps and OpenStreetMap
  /// IDs.
  ///
  /// The [googleMaps] and [openStreetMaps] parameters must be non-empty
  /// strings.
  const Maps({required this.googleMaps, required this.openStreetMaps})
    : assert(googleMaps.length > 0, "`googleMaps` should not be empty!"),
      assert(
        openStreetMaps.length > 0,
        "`openStreetMaps` should not be empty!",
      );

  /// The Google Maps ID for this [Maps] object.
  final String googleMaps;

  /// The OpenStreetMap ID for this [Maps] object.
  final String openStreetMaps;

  /// The URL prefix for Google Maps URLs.
  static const googleMapsPrefix = "https://goo.gl/maps/";

  /// The URL prefix for OpenStreetMap URLs.
  static const openStreetMapsPrefix = "https://www.openstreetmap.org/";

  @override
  String toString() =>
      'Maps(googleMaps: "$googleMaps", openStreetMaps: "$openStreetMaps")';

  @override
  String toJson({JsonCodec codec = const JsonCodec()}) => codec.encode(toMap());

  @override
  bool operator ==(covariant Maps other) {
    if (identical(this, other)) return true;

    return other.googleMaps == googleMaps &&
        other.openStreetMaps == openStreetMaps;
  }

  @override
  int get hashCode => googleMaps.hashCode ^ openStreetMaps.hashCode;
}
