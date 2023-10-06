import "package:sealed_currencies/sealed_currencies.dart";

import "../../model/translated_name.dart";

/// Provides extension methods for [TranslatedName] class.
/// {@template submodels_class_extension}
/// Contains common methods for example `copyWith`, `toMap`, `fromMap`, etc,
/// that are common to all package's submodels.
/// {@endtemplate}
extension TranslatedNameExtension on TranslatedName {
  /// {@template copy_with_method}
  /// Creates a copy of this object with the given fields replaced with
  /// the new values.
  /// If the new values are null, the field is left unchanged. Otherwise,
  /// the field is replaced with the new value.
  /// {@endtemplate}
  TranslatedName copyWith({
    NaturalLanguage? language,
    String? countryCode,
    String? fullName,
    String? name,
  }) =>
      TranslatedName(
        language ?? this.language,
        name: name ?? this.name,
        fullName: fullName ?? this.fullName,
        countryCode: countryCode ?? this.countryCode,
      );

  /// {@template from_map_method}
  /// Creates a new instance of this object from a JSON like map.
  ///
  /// The [map] parameter is a [JsonMap] that contains the properties
  /// of this object.
  /// {@endtemplate}
  static TranslatedName fromMap(JsonMap map) => TranslatedName(
        NaturalLanguage.fromCode(map["language"].toString()),
        name: map["name"] as String,
        fullName: map["fullName"] as String?,
        countryCode: map["countryCode"] as String?,
      );

  /// {@template to_map_method}
  /// Converts this object object to a JSON like map.
  /// {@endtemplate}
  Map<String, Object?> toMap() => {
        "language": language.code,
        "name": name,
        "fullName": fullName,
        "countryCode": countryCode,
      };
}
