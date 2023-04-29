import "../../../../sealed_countries.dart";

extension GeoExtension on WorldCountry {
  static const imperialAreaMultiplier = 0.38610216;

  List<WorldCountry>? get borders {
    final codes = bordersCodes;
    if (codes == null || codes.isEmpty) return null;

    return List.unmodifiable(codes.map<WorldCountry>(WorldCountry.fromCode));
  }

  double get areaImperial => areaMetric * imperialAreaMultiplier;
}
