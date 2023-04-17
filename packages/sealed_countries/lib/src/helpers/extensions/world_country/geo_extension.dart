import "../../../../sealed_countries.dart";
import "../list_double_extension.dart";

extension GeoExtension on WorldCountry {
  ({double latitude, double longitude})? get latitudeLongitude =>
      latLng.latitudeLongitude;

  List<WorldCountry>? get borders {
    final codes = bordersCodes;
    if (codes == null) return null;

    return List.unmodifiable(codes.map<WorldCountry>(WorldCountry.fromCode));
  }

  double get areaImperial => areaMetric * 0.38610216;
}
