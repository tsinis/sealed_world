import "../../interfaces/iso_standardized.dart";

/// Extension on [Iterable] class to provide helper methods for working
/// with Iterables.
extension SealedWorldIterableExtension<T extends Object> on Iterable<T?> {
  /// Return a [List] of mapped objects, typically [IsoStandardized] objects,
  /// created with `fromCode` factory constructor.
  List<R> fromIsoList<R>(R Function(String code) mapper) =>
      List<R>.unmodifiable(map((code) => mapper(code.toString())));

  /// Returns a [String] representation of the list containing only the unique
  /// instances of the non-null objects.
  String toUniqueInstancesString() =>
      whereType<T>().map((obj) => "${obj.runtimeType}()").toSet().toString();

  /// Returns a [String] representation of the list containing only the names of
  /// the non-null objects.
  ///
  /// Example:
  /// ```dart
  /// final list = [1, null, 'hello', 2.5];
  /// final result = list.toInstancesString(); // [int(), String(), double()]
  /// ```
  String toInstancesString() => whereType<T>()
      .map((obj) => "${obj.runtimeType}()")
      .toList(growable: false)
      .toString();
}

/// Extension on [Iterable] class to provide helper methods for working
/// with [IsoStandardized] collections.
extension SealedWorldIterableIsoExtension on Iterable<IsoStandardized> {
  /// Returns list of ISO codes from the collection
  /// of [IsoStandardized] objects.
  List<String> toIsoList() => List<String>.unmodifiable(map((iso) => iso.code));
}
