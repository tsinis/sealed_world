import "../../../../sealed_countries.dart";
import "../list_double_extension.dart";

extension GeoExtension on WorldCountry {
  ({double latitude, double longitude})? get latitudeLongitude =>
      latLng.latitudeLongitude;
}
