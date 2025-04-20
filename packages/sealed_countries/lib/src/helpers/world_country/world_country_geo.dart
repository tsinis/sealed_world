import "../../model/country/country.dart";

/// Provides extension methods for geographic calculations related to a
/// [WorldCountry] object.
extension WorldCountryGeo on WorldCountry {
  /// The multiplier to convert square kilometers to square miles.
  static const imperialAreaMultiplier = 0.38610_216;

  /// Returns an unmodifiable list of [WorldCountry] objects representing the
  /// countries that share a land border with this country.
  ///
  /// If the [bordersCodes] property of the [WorldCountry] object is `null` or
  /// empty, returns `null`. Otherwise, returns an unmodifiable list of
  /// [WorldCountry] objects representing the countries whose [code] property is
  /// present in the [bordersCodes] list.
  List<WorldCountry>? get borders {
    final codes = bordersCodes;
    if (codes == null || codes.isEmpty) return null;

    return List.unmodifiable(codes.map(WorldCountry.fromCode));
  }

  /// Returns the area of the country in square miles.
  ///
  /// Returns the product of the [areaMetric] property of the [WorldCountry]
  /// object and the constant [imperialAreaMultiplier], which is the multiplier
  /// to convert square kilometers to square miles.
  double get areaImperial => areaMetric * imperialAreaMultiplier;
}
