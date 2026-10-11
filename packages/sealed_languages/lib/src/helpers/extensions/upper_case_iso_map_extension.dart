import "../../interfaces/iso_standardized.dart";
import "../../model/core/upper_case_iso_map.dart";
import "iso_string_extension_type.dart";

/// Extension methods for the [UpperCaseIsoMap] class.
extension UpperCaseIsoMapExtension<V extends IsoStandardized>
    on UpperCaseIsoMap<V> {
  /// Returns the unmodifiable list of ISO standardized codes in that map.
  List<String> get codes => List.unmodifiable(keys);

  /// Retrieves the value associated with the given ISO code.
  ///
  /// Uses the ISO standardized key to look up a value in the map. If the key is
  /// found, the corresponding value is returned. Otherwise, it returns the
  /// [defaultValue] if it is specified (not specified by default),
  /// or `null` if not.
  V? maybeFindByCode(Object? code) => this[code];

  /// Retrieves the value associated with the given ISO code or throws an error.
  ///
  /// This method attempts to find a value associated with the [code] provided
  /// by calling the `maybeFindByCode` method. The [code] should correspond to
  /// an ISO standardized code key within the map.
  ///
  /// If the value is found, it is returned. However, if the value is not found
  /// (i.e., `null`), this method throws a [StateError] indicating that no
  /// matching ISO element was found for the given [code]. This behavior
  /// enforces the existence of a value for the provided [code] and should be
  /// used when the absence of a value is considered an error condition.
  ///
  /// The method is intended to be used when it is guaranteed that the [code]
  /// exists in the map, and the caller expects a non-nullable result. If the
  /// presence of the [code] in the map is uncertain, consider using the
  /// [maybeFindByCode] method instead, which returns a nullable result and
  /// does not throw an exception.
  ///
  /// ```dart
  /// import 'package:sealed_languages/sealed_languages.dart';
  ///
  /// void main() {
  ///   const map = UpperCaseIsoMap({'ENG': LangEng()});
  ///   assert(map.findByCodeOrThrow(' eng ') == const LangEng());
  ///   assert(map.maybeFindByCode('ISO') == null, 'should be null');
  /// }
  /// ```
  V findByCodeOrThrow(Object? code) {
    final result = maybeFindByCode(code);

    if (result != null) return result;

    throw StateError(
      "No matching ISO $V element was found for the '$code'! Consider using the"
      " same but nullable runtime-safe methods (with a `maybe` prefix) instead",
    );
  }

  /// Creates a copy of [UpperCaseIsoMap] extended with the [other] map entries.
  ///
  /// The keys of the [other] map are trimmed and converted to UPPERCASE,
  /// following ISO standardized rules for code representation. If the same
  /// (normalized) key is present in both maps, the value from [other] wins.
  /// If [other] contains the same key in different cases (e.g., 'en' and
  /// 'EN'), the last one in the iteration order wins.
  ///
  /// The key length constraints of the resulting map are recalculated from the
  /// merged keys: `minLength` and `maxLength` are set to the shortest and
  /// longest key lengths, and if all keys share the same length, it's also
  /// used as the `exactLength`.
  ///
  /// The [defaultValue] parameter allows overriding the value returned when a
  /// key is not found. If not provided, the current `defaultValue` is kept.
  ///
  /// Usage:
  /// ```dart
  /// import 'package:sealed_languages/sealed_languages.dart';
  ///
  /// void main() {
  ///   const map = UpperCaseIsoMap<NaturalLanguage>(
  ///     {'ENG': LangEng()},
  ///     exactLength: null,
  ///   );
  ///   final copy = map.copyWith(const {' fra ': LangFra(), 'de': LangDeu()});
  ///
  ///   assert(copy['eng'] == const LangEng(), 'should be LangEng');
  ///   assert(copy['FRA'] == const LangFra(), 'should be LangFra');
  ///   assert(copy['De'] == const LangDeu(), 'should be LangDeu');
  ///   assert(copy.minLength == 2 && copy.maxLength == 3, 'lengths');
  /// }
  /// ```
  // ignore: avoid-incomplete-copy-with, those are calculated.
  UpperCaseIsoMap<V> copyWith(Map<String, V> other, {V? defaultValue}) {
    final newMap = Map<String, V>.fromEntries(
      entries.followedBy(
        other.entries.map(
          (e) => MapEntry(IsoString(e.key).toUpperCaseCode(), e.value),
        ),
      ),
    );
    final value = defaultValue ?? this.defaultValue;
    if (newMap.isEmpty) return UpperCaseIsoMap(newMap, defaultValue: value);

    int shortest = newMap.keys.first.length;
    int longest = shortest;
    for (final key in newMap.keys) {
      if (key.length < shortest) shortest = key.length;
      if (key.length > longest) longest = key.length;
    }

    return UpperCaseIsoMap(
      newMap,
      defaultValue: value,
      exactLength: shortest == longest ? shortest : null,
      maxLength: longest,
      minLength: shortest,
    );
  }
}
