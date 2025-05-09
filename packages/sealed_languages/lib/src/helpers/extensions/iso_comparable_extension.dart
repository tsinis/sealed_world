import "../../interfaces/iso_standardized.dart";

/// Extension that adds additional [Comparable] functionality to
/// [IsoStandardized] classes.
extension IsoComparableExtension<T extends IsoStandardized> on Comparable<T> {
  /// Returns whether this ISO object's code is equal to [other]'s code.
  bool isSameAs(T? other) => _compareTo(other, (result) => result == 0);

  /// Returns whether this ISO object's code is less than [other]'s code.
  bool operator <(T? other) => _compareTo(other, (result) => result.isNegative);

  /// Returns whether this ISO object's code is less than or equal to [other]'s
  /// code.
  bool operator <=(T? other) => _compareTo(other, (result) => result <= 0);

  /// Returns whether this ISO object's code is greater than [other]'s code.
  bool operator >(T? other) => _compareTo(other, (result) => result > 0);

  /// Returns whether this ISO object's code is greater than or equal to
  /// [other]'s code.
  bool operator >=(T? other) =>
      _compareTo(other, (result) => !result.isNegative);

  bool _compareTo(T? other, bool Function(int result) predicate) =>
      other != null && predicate(compareTo(other));
}
