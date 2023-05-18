import "../../../model/country/submodels/idd.dart";

/// A class extension that adds utility methods to the `Idd` class.
extension IddExtension on Idd {
  /// Returns `true` if this `Idd` object has a single suffix value.
  ///
  /// Returns `true` if the `suffixes` list of this `Idd` object contains
  /// exactly one value, and `false` otherwise.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// final idd = Idd(root: 3, suffixes: [81]);
  /// final hasSingleSuffix = idd.hasSingleSuffix;
  /// print(hasSingleSuffix); // Prints: true
  /// ```
  bool get hasSingleSuffix => suffixes.length == 1;

  /// Returns a string representation of the phone code for this `Idd` object.
  ///
  /// The returned string has the format "<leading><root><suffix>", where
  /// `<leading>` is the given `leading` parameter (defaults to `+`), `<root>`
  /// is the `root` field of this `Idd` object, and `<suffix>` is the first
  /// value in the `suffixes` list of this `Idd` object if it has a single
  /// suffix value, and an empty string otherwise.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// final idd = Idd(root: 3, suffixes: [81]);
  /// final phoneCode = idd.phoneCode();
  /// print(phoneCode); // Prints: "+381"
  /// ```
  String phoneCode({String leading = "+"}) =>
      "$leading$root${hasSingleSuffix ? "${suffixes.first}" : ""}";
}
