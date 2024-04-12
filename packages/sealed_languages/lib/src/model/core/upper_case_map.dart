import "dart:collection" show MapBase, MapView;

import "../../helpers/extensions/sealed_world_object_extension.dart";

/// An uppercase key map that uses trimmed uppercase string keys.
///
/// This map is designed to work with keys that are acronyms or codes.
/// Usually it's an unmodifiable view of another map, meaning that the original
/// map cannot be changed through this view.
///
/// Each key is trimmed and converted to UPPERCASE, ensuring that the map
/// lookup is case-insensitive.
///
/// The [UpperCaseMap] also supports default values. If a key is not found
/// within the map, and a [defaultValue] is provided, that default value will be
/// returned instead.
///
/// Example:
/// ```dart
/// const isoMap = UpperCaseMap({
///   'EN': LangEng(),
///   'FR': LangFra(),
/// }, defaultValue: LangEng());
///
/// final english = isoMap[' fr']; // Returns LangFra()
/// final unknown = isoMap['DE']; // Returns LangEng() as the default value
/// ```
class UpperCaseMap<V extends Object> extends MapView<String, V> {
  /// Creates an uppercase key/value map view with trimmed string keys.
  ///
  /// The [map] parameter is the original map that this object will be a view
  /// of.
  ///
  /// An optional [defaultValue] can be provided, which will be used when a key
  /// lookup does not exist in the map.
  ///
  /// Example:
  /// ```dart
  /// const isoMap = UpperCaseMap({
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
  const UpperCaseMap(super.map, {this.defaultValue});

  /// The default value to return when a key lookup does not exist in the map.
  ///
  /// If a key is not found and [defaultValue] is provided, this value is
  /// returned. Otherwise, `null` is returned.
  ///
  /// [defaultValue] is nullable to allow for the possibility of no default
  /// value.
  final V? defaultValue;

  @override
  V? operator [](Object? key) =>
      _map(key, (stringKey) => super[stringKey]) ?? defaultValue;

  @override
  bool containsKey(Object? key) => _map(key, super.containsKey) ?? false;

  @override
  String toString() => MapBase.mapToString(this);

  T? _map<T extends Object>(Object? key, T? Function(String stringKey) mapper) {
    final stringKey = key?.toUpperCaseIsoCode();

    return stringKey != null ? mapper(stringKey) : null;
  }
}
