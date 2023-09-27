import "package:sealed_currencies/sealed_currencies.dart";

import "../../../model/country/submodels/lat_lng.dart";

extension LatLngExtension on LatLng {
  LatLng copyWith({double? latitude, double? longitude}) =>
      LatLng(latitude ?? this.latitude, longitude ?? this.longitude);

  Map<String, double> toMap() => {"latitude": latitude, "longitude": longitude};

  static LatLng fromMap(JsonMap map) =>
      LatLng(map["latitude"] as double, map["longitude"] as double);
}
