final class Maps {
  const Maps({required this.googleMaps, required this.openStreetMaps})
      : assert(googleMaps.length > 0, "`googleMaps` should not be empty!"),
        assert(
          openStreetMaps.length > 0,
          "`openStreetMaps` should not be empty!",
        );

  final String googleMaps;
  final String openStreetMaps;

  static const googleMapsPrefix = "https://goo.gl/maps/";
  static const openStreetMapsPrefix = "https://www.openstreetmap.org/";

  String get googleMapsUrl => googleMapsPrefix + googleMaps;
  String get openStreetMapsUrl => openStreetMapsPrefix + openStreetMaps;

  @override
  String toString() =>
      "Maps(googleMaps: $googleMaps, openStreetMaps: $openStreetMaps)";

  @override
  bool operator ==(covariant Maps other) {
    if (identical(this, other)) return true;

    return other.googleMaps == googleMaps &&
        other.openStreetMaps == openStreetMaps;
  }

  @override
  int get hashCode => googleMaps.hashCode ^ openStreetMaps.hashCode;
}
