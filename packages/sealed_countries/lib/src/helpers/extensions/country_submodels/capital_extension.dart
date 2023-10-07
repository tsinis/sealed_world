import "package:sealed_currencies/sealed_currencies.dart";

import "../../../model/country/submodels/capital.dart";

/// Provides extension methods for [Capital] class.
/// {@macro submodels_class_extension}
extension CapitalExtension on Capital {
  /// Returns the de facto name of the capital.
  ///
  /// Provides same data as [deFacto].
  String get name => deFacto;

  /// Returns the de jure official name of the capital.
  ///
  /// Provides same data as [deJure].
  String get officialName => deJure ?? deFacto;

  /// {@macro copy_with_method}
  Capital copyWith({String? deFacto, String? deJure, String? third}) => Capital(
        deFacto ?? this.deFacto,
        deJure: deJure ?? this.deJure,
        third: third ?? this.third,
      );

  /// {@macro to_map_method}
  Map<String, String?> toMap() =>
      {"deFacto": deFacto, "deJure": deJure, "third": third};

  /// {@macro from_map_method}
  static Capital fromMap(JsonMap map) => Capital(
        map["deFacto"] as String,
        deJure: map["deJure"] as String?,
        third: map["third"] as String?,
      );
}
