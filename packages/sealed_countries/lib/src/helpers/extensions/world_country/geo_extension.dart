import "../../../../sealed_countries.dart";
import "../list_double_extension.dart";

extension GeoExtension on WorldCountry {
  static const imperialAreaMultiplier = 0.38610216;

  ({double latitude, double longitude})? get latitudeLongitude =>
      latLng.latitudeLongitude;

  List<WorldCountry>? get borders {
    final codes = bordersCodes;
    if (codes == null || codes.isEmpty) return null;

    return List.unmodifiable(codes.map<WorldCountry>(WorldCountry.fromCode));
  }

  double get areaImperial => areaMetric * imperialAreaMultiplier;
}
