import "package:world_flags/world_flags.dart" show IsoStandardized;

/// Extension methods for [IsoStandardized] class, that can be used in the
/// semantic widgets for example for testing.
extension IsoSemanticsExtension on IsoStandardized {
  /// Returns the semantic identifier for the ISO object, that can be used
  /// for example in the semantic widgets. It's being used in the default
  /// pickers. It's combination of the "ISO-" prefix and 3 letter uppercase
  /// alpha code.
  ///
  /// Usage example:
  /// ```yaml
  /// - tapOn:
  ///    id: "ISO-ESP" # Tap on Spanish tile.
  /// ```
  String get semanticIdentifier => "${IsoStandardized.standardAcronym}-$code";
}
