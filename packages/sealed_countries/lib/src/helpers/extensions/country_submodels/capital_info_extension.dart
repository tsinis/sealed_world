// ignore_for_file: avoid-type-casts

import "package:sealed_currencies/sealed_currencies.dart";

import "../../../model/country/submodels/capital.dart";
import "../../../model/country/submodels/capital_info.dart";
import "../../../model/country/submodels/lat_lng.dart";
import "capital_extension.dart";
import "lat_lng_extension.dart";

/// Provides extension methods for [CapitalInfo] class.
/// {@macro submodels_class_extension}
extension CapitalInfoExtension on CapitalInfo {
  /// {@macro copy_with_method}
  CapitalInfo copyWith({Capital? capital, LatLng? latLng}) => CapitalInfo(
    capital: capital ?? this.capital,
    latLng: latLng ?? this.latLng,
  );

  /// {@macro to_map_method}
  JsonObjectMap toMap() => {
    "capital": capital.toMap(),
    "latLng": latLng.toMap(),
  };

  /// {@macro from_map_method}
  static CapitalInfo fromMap(JsonMap map) => CapitalInfo(
    capital: CapitalExtension.fromMap(map["capital"]),
    latLng: LatLngExtension.fromMap(map["latLng"]),
  );
}
