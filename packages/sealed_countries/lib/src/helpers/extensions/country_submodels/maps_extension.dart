import "package:sealed_currencies/sealed_currencies.dart";

import "../../../model/country/submodels/maps.dart";

extension MapsExtension on Maps {
  Maps copyWith({String? googleMaps, String? openStreetMaps}) => Maps(
        googleMaps: googleMaps ?? this.googleMaps,
        openStreetMaps: openStreetMaps ?? this.openStreetMaps,
      );

  Map<String, String> toMap() =>
      {"googleMaps": googleMaps, "openStreetMaps": openStreetMaps};

  static Maps fromMap(JsonMap map) => Maps(
        googleMaps: map["googleMaps"] as String,
        openStreetMaps: map["openStreetMaps"] as String,
      );
}
