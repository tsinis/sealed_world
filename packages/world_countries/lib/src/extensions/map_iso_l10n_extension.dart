import "package:meta/meta.dart" show useResult;
import "package:world_flags/world_flags.dart"
    show BasicTypedLocale, IsoTranslated;

import "../model/typedefs.dart";

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
  /// When [compare] is provided along with a [locale], it overrides the default
  /// alphabetical sorting. The [compare] factory is called once with the locale
  /// to create a comparator, which is then used for all comparisons. This
  /// ensures efficient sorting by constructing locale-specific resources (like
  /// collators) only once.
  ///
  /// Note: Default sorting uses Unicode code-point comparison via
  /// [String.compareTo]. For locale-sensitive collation, provide a custom
  /// [compare] factory, e.g. using the `intl4x` package.
  ///
  /// Example with custom sorter:
  /// ```dart
  /// // Custom diacritics-aware sorting using intl4x.
  /// final sorted = translations.sortAlphabetically(
  ///   locale: typedLocale,
  ///   compare: (typed) {
  ///     final locale = Locale.parse(typed.toUnicodeLocaleId());
  ///     final collator = Collation(locale: locale);
  ///     return (a, b) => collator.compare(a.value, b.value);
  ///   },
  /// );
  /// ```
  @useResult
  Map<T, String> sortAlphabetically({
    bool reverse = false,
    BasicTypedLocale? locale,
    L10nSorter<T>? compare,
  }) {
    // Create comparator once from factory if both locale and compare provided.
    final comparator = compare != null && locale != null
        ? compare(locale)
        : null;

    return Map<T, String>.fromEntries(
      entries.toList(growable: false)..sort(
        comparator ??
            (first, second) => reverse
                ? second.value.compareTo(first.value)
                : first.value.compareTo(second.value),
      ),
    );
  }
}
