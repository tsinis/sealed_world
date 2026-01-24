import "package:meta/meta.dart";
import "package:world_flags/world_flags.dart" show IsoTranslated;

/// Sorting helpers for [Map<IsoTranslated, String>] collections.
///
/// Keeps the external API surface compact by attaching the behavior directly
/// to the map instance that already stores localized names.
extension MapIsoL10nExtension<T extends IsoTranslated> on Map<T, String> {
  /// Returns a new map whose iteration order is alphabetical by value.
  ///
  /// The original map is never mutated; the returned [Map] is built from the
  /// sorted entry list. Pass [reverse] to flip the comparison and receive a
  /// descending order instead.
  ///
  /// Note: Uses Unicode code-point comparison via [String.compareTo]. For
  /// locale-sensitive collation, consider using the `intl4x` package.
  @useResult
  Map<T, String> sortAlphabetically({bool reverse = false}) =>
      Map<T, String>.fromEntries(
        entries.toList(growable: false)..sort(
          (first, second) => reverse
              ? second.value.compareTo(first.value)
              : first.value.compareTo(second.value),
        ),
      );
}
