class Maps {
  const Maps({required this.googleMaps, required this.openStreetMaps});

  final String googleMaps;
  final String openStreetMaps;

  // @visibleForTesting
  static const googleMapsPrefix = "https://goo.gl/maps/";
  // @visibleForTesting
  static const openStreetMapsPrefix = "https://www.openstreetmap.org/";

  String get googleMapsUrl => googleMapsPrefix + googleMaps;
  String get openStreetMapsUrl => openStreetMapsPrefix + openStreetMaps;

  @override
  String toString() =>
      "Maps(googleMaps: $googleMaps, openStreetMaps: $openStreetMaps)";
}
