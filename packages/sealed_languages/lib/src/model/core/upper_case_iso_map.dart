import "../../helpers/extensions/iso_object_extension_type.dart";
import "../../helpers/extensions/iso_standardized_string_extension.dart";
import "../../interfaces/iso_standardized.dart";
import "upper_case_map.dart";

/// An uppercase key map [UpperCaseMap], that uses ISO standardized string keys.
///
/// This map is designed to work with keys that are ISO standardized codes, such
/// as language, script, currency, country, and other codes. Usually it's an
/// unmodifiable view of another map, meaning that the original map cannot be
/// changed through this view.
///
/// Each key is transformed using ISO standardized rules, ensuring that the map
/// lookup is case-insensitive and conforms to the ISO standards. The keys are
/// expected to be strings representing the ISO codes.
///
/// The [UpperCaseIsoMap] also supports default values. If a key is not found
/// within the map, and a [defaultValue] is provided, that default value will be
/// returned instead.
/// The [maxLength] and [minLength] parameters control the maximum and minimum
/// length of the key length. The optional [exactLength] parameter specifies
/// the exact length of the key length.
///
/// Example:
/// ```dart
/// const isoMap = UpperCaseIsoMap({
///   'EN': LangEng(),
///   'FR': LangFra(),
/// }, defaultValue: LangEng());
///
/// final english = isoMap[' fr']; // Returns LangFra()
/// final unknown = isoMap['DE']; // Returns LangEng() as the default value
/// ```
///
/// [V] is the type of the values in the map. It must extend [IsoStandardized].
class UpperCaseIsoMap<V extends IsoStandardized> extends UpperCaseMap<V> {
  /// Creates an uppercase key/value map view with ISO standardized string keys.
  ///
  /// The [map] parameter is the original map that this object will be a view
  /// of. It should contain keys that can be standardized according to ISO
  /// rules.
  ///
  /// An optional [defaultValue] can be provided, which will be used when a key
  /// lookup does not exist in the map.
  /// The [maxLength] and [minLength] parameters control the maximum and minimum
  /// length of the key length. The optional [exactLength] parameter specifies
  /// the exact length of the key length.
  ///
  /// Example:
  /// ```dart
  /// const isoMap = UpperCaseIsoMap({
  ///   'EN': LangEng(),
  ///   'FR': LangFra(),
  /// }, defaultValue: LangEng());
  ///
  /// final english = isoMap['fr']; // Returns LangFra()
  /// final unknown = isoMap['DE']; // Returns LangEng() as the default value
  /// ```
  ///
  /// [map]: The original map that this is a view of.
  /// [defaultValue]: An optional default value to return when a key is not
  /// found.
  const UpperCaseIsoMap(
    super.map, {
    super.defaultValue,
    this.exactLength = IsoStandardized.codeLength,
    this.maxLength = IsoStandardized.codeLength,
    this.minLength = IsoStandardized.codeShortLength,
  });

  /// The maximum length of an ISO code.
  final int maxLength;

  /// The minimum length of an ISO code.
  final int minLength;

  /// The exact length of an ISO code.
  final int? exactLength;

  @override
  V? operator [](Object? key) =>
      _map(key, (code) => super[code]) ?? defaultValue;

  @override
  bool containsKey(Object? key) => _map(key, super.containsKey) ?? false;

  T? _map<T extends Object>(Object? key, T? Function(String isoCode) mapper) {
    final code = IsoObject.maybe(key)?.toUpperCaseCode().maybeToValidIsoCode(
      maxLength: maxLength,
      minLength: minLength,
      exactLength: exactLength,
    );

    return code == null ? null : mapper(code);
  }
}
