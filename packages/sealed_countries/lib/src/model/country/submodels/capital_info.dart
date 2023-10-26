import "package:sealed_currencies/sealed_currencies.dart";

import "../../../helpers/extensions/country_submodels/capital_info_extension.dart";
import "capital.dart";
import "lat_lng.dart";

/// A class that represents information about a country's capital.
///
/// The `CapitalInfo` class is a simple value object that represents information
/// about a country's capital. It consists of a `Capital` object that represents
/// the name of the capital, and a `LatLng` object that represents the location
/// of the de facto capital. Both fields are required.
///
/// Example usage:
///
/// ```dart
/// const capital = Capital("Ramallah", deJure: "Jerusalem");
/// const latLng = LatLng(31.9, 35.2);
/// const capitalInfo = CapitalInfo(capital: capital, latLng: latLng);
/// print(capitalInfo.capital); // Prints: Capital("Ramallah")
/// print(capitalInfo.latLng); // Prints: LatLng(latitude: 31.9, longitude: 35.2)
/// ```
final class CapitalInfo implements JsonEncodable<CapitalInfo> {
  /// Creates a new `CapitalInfo` object with the given capital
  /// and location values.
  ///
  /// Both the `capital` and `latLng` parameters are required.
  const CapitalInfo({required this.capital, required this.latLng});

  /// The capital city of the country.
  final Capital capital;

  /// The location of the de facto capital.
  final LatLng latLng;

  @override
  String toString({bool short = true}) =>
      """$CapitalInfo(capital: ${capital.toString(short: short)}, latLng: $latLng)""";

  @override
  String toJson({JsonCodec codec = const JsonCodec()}) => codec.encode(toMap());

  @override
  bool operator ==(covariant CapitalInfo other) {
    if (identical(this, other)) return true;

    return other.capital == capital && other.latLng == latLng;
  }

  @override
  int get hashCode => capital.hashCode ^ latLng.hashCode;
}
