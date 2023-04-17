import "../../../model/country/submodels/capital_info.dart";
import "../list_double_extension.dart";

extension CapitalInfoExtension on CapitalInfo {
  ({double latitude, double longitude})? get latitudeLongitude =>
      latLng.latitudeLongitude;
}
