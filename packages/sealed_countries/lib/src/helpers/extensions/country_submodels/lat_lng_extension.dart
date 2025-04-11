import "package:sealed_currencies/sealed_currencies.dart";

import "../../../model/country/submodels/lat_lng.dart";

/// Provides extension methods for [LatLng] class.
/// {@macro submodels_class_extension}
extension LatLngExtension on LatLng {
  /// {@macro copy_with_method}
  LatLng copyWith({double? latitude, double? longitude}) =>
      LatLng(latitude ?? this.latitude, longitude ?? this.longitude);

  /// {@macro to_map_method}
  Map<String, double> toMap() => {"latitude": latitude, "longitude": longitude};

  /// {@macro from_map_method}
  static LatLng fromMap(JsonMap map) =>
  // ignore: avoid-type-casts, it's JSON map.
  LatLng(map["latitude"] as double, map["longitude"] as double);
}
