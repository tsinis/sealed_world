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
}
