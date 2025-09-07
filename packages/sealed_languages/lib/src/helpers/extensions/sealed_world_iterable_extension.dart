// ignore_for_file: prefer-single-declaration-per-file

import "../../interfaces/iso_standardized.dart";
import "iso_object_extension_type.dart";

/// Extension on [Iterable] class to provide helper methods for working
/// with Iterables.
extension SealedWorldIterableExtension<T extends Object> on Iterable<T?> {
  /// Return a [List] of mapped objects, typically [IsoStandardized] objects,
  /// created with `fromCode` factory constructor.
  List<R> fromIsoList<R>(R Function(String code) mapper) =>
      // ignore: avoid-nullable-tostring, it's expected to be non-null.
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

  /// Throws an [AssertionError] if the collection is empty.
  void assertNotEmpty() {
    assert(
      isNotEmpty,
      "Provided $runtimeType must contain at least one element of type $T!",
    );
  }
}

/// Extension on [Iterable] class to provide helper methods for working
/// with [IsoStandardized] collections.
extension SealedWorldIterableIsoExtension<T extends IsoStandardized>
    on Iterable<T> {
  /// Returns list of ISO codes from the collection
  /// of [IsoStandardized] objects.
  List<String> toIsoList() => List<String>.unmodifiable(map((iso) => iso.code));

  /// The first [IsoStandardized] element satisfying [test], or throws a
  /// [StateError] if no matching element is found.
  T firstIsoWhere(bool Function(T iso) test) =>
      _getFirstIsoOrThrow(test, firstIsoWhereOrNull);

  /// Returns the first [IsoStandardized] element in the collection that has the
  /// given regular UPPERCASE [code], or throws a [StateError] if no matching
  /// element is found.
  T firstIsoWhereCode(Object code) =>
      _getFirstIsoOrThrow(code, firstIsoWhereCodeOrNull);

  /// Returns the first [IsoStandardized] element in the collection that has the
  /// given regular UPPERCASE [codeOther], or throws a [StateError] if no
  /// matching element is found.
  T firstIsoWhereCodeOther(Object codeOther) =>
      _getFirstIsoOrThrow(codeOther, firstIsoWhereCodeOtherOrNull);

  T _getFirstIsoOrThrow<S extends Object>(S value, T? Function(S) isoOrNull) {
    final maybeMatchingIso = isoOrNull(value);
    if (maybeMatchingIso != null) return maybeMatchingIso;
    throw StateError(
      "No matching ISO $T element was found for the input! Consider using the"
      " same but nullable runtime-safe methods (with a `maybe` prefix) instead",
    );
  }
}

/// Extension on [Iterable] class to provide helper methods for working
/// with nullable [IsoStandardized] collections.
extension SealedWorldNullableIterableIsoExtension<T extends IsoStandardized>
    on Iterable<T>? {
  /// Returns the first [IsoStandardized] element in the collection that has the
  /// given regular [code], or `null` if there is no such element.
  /// If [toUpperCase] is set to `true` (default), the code is converted to
  /// UPPERCASE before matching.
  T? firstIsoWhereCodeOrNull(Object? code, {bool toUpperCase = true}) =>
      _mapTrimmedCode(
        (output) => firstIsoWhereOrNull((iso) => iso.code == output),
        code,
        toUpperCase: toUpperCase,
      );

  /// Returns the first [IsoStandardized] element in the collection that has the
  /// given other [codeOther], or `null` if there is no such element.
  /// If [toUpperCase] is set to `true` (default), the code is converted to
  /// UPPERCASE before matching.
  T? firstIsoWhereCodeOtherOrNull(
    Object? codeOther, {
    bool toUpperCase = true,
  }) => _mapTrimmedCode(
    (output) => firstIsoWhereOrNull((iso) => iso.codeOther == output),
    codeOther,
    toUpperCase: toUpperCase,
  );

  /// The first [IsoStandardized] element satisfying [test], or `null` if there
  /// are none. If [assertNotEmpty] is set to `true` (default to `false`),
  /// then an [AssertionError] is thrown if the collection is empty.
  T? firstIsoWhereOrNull(
    bool Function(T iso) test, {
    bool assertNotEmpty = true,
  }) {
    if (this == null) return null;
    if (assertNotEmpty) this?.assertNotEmpty();

    for (final item in this ?? <T>[]) {
      if (test(item)) return item;
    }

    return null;
  }

  T? _mapTrimmedCode(
    T? Function(String output) mapper,
    Object? input, {
    required bool toUpperCase,
  }) {
    final isoObject = IsoObject.maybe(input);
    if (isoObject == null) return null;

    final code = toUpperCase
        ? isoObject.maybeToValidIsoUpperCaseCode()
        : isoObject.maybeToValidIsoCode();

    return code == null ? null : mapper(code);
  }
}
