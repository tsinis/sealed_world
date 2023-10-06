import "package:sealed_currencies/sealed_currencies.dart";

import "../../model/translated_name.dart";

extension TranslatedNameExtension on TranslatedName {
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

  static TranslatedName fromMap(Map<String, dynamic> map) => TranslatedName(
        NaturalLanguage.fromCode(map["language"].toString()),
        name: map["name"] as String,
        fullName: map["fullName"] as String?,
        countryCode: map["countryCode"] as String?,
      );

  Map<String, Object?> toMap() => {
        "language": language.code,
        "name": name,
        "fullName": fullName,
        "countryCode": countryCode,
      };
}
