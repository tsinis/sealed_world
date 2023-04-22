import "capital.dart";
import "lat_lng.dart";

class CapitalInfo {
  const CapitalInfo({required this.capital, required this.latLng});

  final Capital capital;
  final LatLng latLng;

  @override
  String toString() => "CapitalInfo(capital: $capital, latLng: $latLng)";

  @override
  bool operator ==(covariant CapitalInfo other) {
    if (identical(this, other)) return true;

    return other.capital == capital && other.latLng == latLng;
  }

  @override
  int get hashCode => capital.hashCode ^ latLng.hashCode;
}
