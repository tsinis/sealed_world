import "package:sealed_currencies/sealed_currencies.dart";

import "../../../model/country/submodels/maps.dart";

/// Provides extension methods for [Maps] class.
/// {@macro submodels_class_extension}
extension MapsExtension on Maps {
  /// {@macro copy_with_method}
  Maps copyWith({String? googleMaps, String? openStreetMaps}) => Maps(
        googleMaps: googleMaps ?? this.googleMaps,
        openStreetMaps: openStreetMaps ?? this.openStreetMaps,
      );

  /// {@macro to_map_method}
  Map<String, String> toMap() =>
      {"googleMaps": googleMaps, "openStreetMaps": openStreetMaps};

  /// {@macro from_map_method}
  static Maps fromMap(JsonMap map) => Maps(
        googleMaps: map["googleMaps"].toString(),
        openStreetMaps: map["openStreetMaps"].toString(),
      );
}
