// ignore_for_file: avoid-type-casts

import "package:sealed_currencies/sealed_currencies.dart";

import "../../../model/country/submodels/idd.dart";

/// Provides extension methods for [Idd] class.
/// {@macro submodels_class_extension}
extension IddExtension on Idd {
  /// Returns `true` if this [Idd] object has a single suffix value.
  ///
  /// Returns `true` if the [suffixes] list of this [Idd] object contains
  /// exactly one value, and `false` otherwise.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// import "package:sealed_countries/sealed_countries.dart";
  ///
  /// void main() {
  ///   final idd = const Idd(root: 3, suffixes: [81]);
  ///   assert(idd.hasSingleSuffix);
  /// }
  /// ```
  bool get hasSingleSuffix => suffixes.length == 1;

  /// Returns a string representation of the phone code for this [Idd] object.
  ///
  /// The returned string has the format `<leading><root><suffix>`, where
  /// `<leading>` is the given [leading] parameter (defaults to `+`), `<root>`
  /// is the [root] field of this [Idd] object, and `<suffix>` is the first
  /// value in the [suffixes] list of this [Idd] object if it has a single
  /// suffix value, and an empty string otherwise.
  ///
  /// When [isRtl] is `true`, the [leading] symbol is moved to the end of the
  /// string to ensure correct display in right-to-left locales (e.g., Arabic).
  ///
  /// Example usage:
  ///
  /// ```dart
  /// import "package:sealed_countries/sealed_countries.dart";
  ///
  /// void main() {
  ///   final idd = const Idd(root: 3, suffixes: [81]);
  ///   assert(idd.phoneCode() == "+381");
  ///   assert(idd.phoneCode(isRtl: true) == "381+");
  /// }
  /// ```
  String phoneCode({String leading = "+", bool isRtl = false}) {
    final suffix = hasSingleSuffix ? "${suffixes.first}" : "";

    return isRtl ? "$root$suffix$leading" : "$leading$root$suffix";
  }

  /// {@macro copy_with_method}
  Idd copyWith({int? root, List<int>? suffixes}) =>
      Idd(root: root ?? this.root, suffixes: suffixes ?? this.suffixes);

  /// {@macro to_map_method}
  JsonObjectMap toMap() => {"root": root, "suffixes": suffixes};

  /// {@macro from_map_method}
  static Idd fromMap(JsonMap map) => Idd(
    root: map["root"] as int,
    suffixes: List<int>.unmodifiable(map["suffixes"] as List),
  );
}
