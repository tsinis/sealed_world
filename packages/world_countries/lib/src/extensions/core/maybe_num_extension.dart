/// Nullable numeric convenience utilities.
///
/// This extension adds small, allocation‑free helpers to any nullable
/// [num]-typed value ([int?], [double?], etc.). The intent is to improve
/// readability in conditions without forcing you to unwrap the value first.
///
/// Example:
/// ```dart
/// int? attempts;
/// // ...
/// if (attempts.isZero) {
///   // Only runs when attempts == 0 (and not when attempts is null).
/// }
/// ```
///
/// The helpers deliberately do not treat `null` as a numeric value; a `null`
/// receiver simply results in `false` for boolean predicates, letting you chain
/// additional null checks explicitly where needed.
extension MaybeNumExtension<T extends num> on T? {
  /// Returns `true` when the underlying number is numerically zero.
  ///
  /// This is equivalent to `this == 0`, so it:
  /// * Works for both `int` and `double` (including `0` and `0.0`).
  /// * Returns `false` for `null` (a `null` receiver is not considered zero).
  /// * Does not perform an epsilon / approximate comparison.
  ///
  /// Examples:
  /// ```dart
  /// int? a;            // null
  /// double? b = 0.0;   // true
  /// double? c = -0.0;  // true (because -0.0 == 0 evaluates to true)
  /// int? d = 3;        // false
  ///
  /// assert(a.isZero == false);
  /// assert(b.isZero == true);
  /// assert(c.isZero == true);
  /// assert(d.isZero == false);
  /// ```
  bool get isZero => this == 0;
}
