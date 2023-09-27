import "package:sealed_currencies/sealed_currencies.dart";

import "../../../model/country/submodels/capital.dart";
import "../../../model/country/submodels/capital_info.dart";
import "../../../model/country/submodels/lat_lng.dart";
import "capital_extension.dart";
import "lat_lng_extension.dart";

extension CapitalInfoExtension on CapitalInfo {
  CapitalInfo copyWith({Capital? capital, LatLng? latLng}) => CapitalInfo(
        capital: capital ?? this.capital,
        latLng: latLng ?? this.latLng,
      );

  Map<String, Object?> toMap() =>
      {"capital": capital.toMap(), "latLng": latLng.toMap()};

  static CapitalInfo fromMap(JsonMap map) => CapitalInfo(
        capital: CapitalExtension.fromMap(map["capital"] as JsonMap),
        latLng: LatLngExtension.fromMap(map["latLng"] as JsonMap),
      );
}
