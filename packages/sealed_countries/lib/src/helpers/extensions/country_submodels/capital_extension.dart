import "package:sealed_currencies/sealed_currencies.dart";

import "../../../model/country/submodels/capital.dart";

/// A class extension that adds utility methods to the `Capital` class.
extension CapitalExtension on Capital {
  /// Returns the de facto name of the capital.
  ///
  /// Provides same data as [deFacto].
  String get name => deFacto;

  /// Returns the de jure official name of the capital.
  ///
  /// Provides same data as [deJure].
  String get officialName => deJure ?? deFacto;

  Capital copyWith({String? deFacto, String? deJure, String? third}) => Capital(
        deFacto ?? this.deFacto,
        deJure: deJure ?? this.deJure,
        third: third ?? this.third,
      );

  Map<String, String?> toMap() =>
      {"deFacto": deFacto, "deJure": deJure, "third": third};

  static Capital fromMap(JsonMap map) => Capital(
        map["deFacto"] as String,
        deJure: map["deJure"] as String?,
        third: map["third"] as String?,
      );
}
