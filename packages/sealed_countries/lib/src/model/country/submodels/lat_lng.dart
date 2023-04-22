final class LatLng {
  const LatLng(this.latitude, this.longitude);

  final double latitude;
  final double longitude;

  @override
  String toString() => "LatLng(latitude: $latitude, longitude: $longitude)";

  @override
  bool operator ==(covariant LatLng other) {
    if (identical(this, other)) return true;

    return other.latitude == latitude && other.longitude == longitude;
  }

  @override
  int get hashCode => latitude.hashCode ^ longitude.hashCode;
}
