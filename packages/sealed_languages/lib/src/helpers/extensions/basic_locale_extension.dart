import "../../helpers/extensions/sealed_world_object_extension.dart";
import "../../model/core/basic_locale.dart";
import "../../model/language/language.dart";
import "../../model/script/writing_system.dart";
import "../../model/translated_name.dart";
import "../../typedefs/typedefs.dart";

/// Provides extension methods for [BasicLocale] class.
/// {@macro submodels_class_extension}
extension BasicLocaleExtension on BasicLocale {
  /// {@macro copy_with_method}
  BasicLocale copyWith({
    String? countryCode,
    NaturalLanguage? language,
    Script? script,
  }) =>
      BasicLocale(
        language ?? this.language,
        countryCode: countryCode ?? this.countryCode,
        script: script ?? this.script,
      );

  /// {@macro to_map_method}
  Map<String, String?> toMap() => {
        "countryCode": countryCode?.toUpperCaseIsoCode(),
        "language": language.codeShort.toLowerCase(),
        "script": script?.code,
      };

  /// {@macro from_map_method}
  static BasicLocale fromMap(JsonMap map) => BasicLocale(
        NaturalLanguage.fromCodeShort(map["language"].toString()),
        countryCode: map["countryCode"]?.toString(),
        script: Script.maybeFromCode(map["script"]),
      );

  /// Returns `true` if the locale has no country code specified.
  bool get hasNoCountry => countryCode == null;

  /// Returns `true` if the locale has no script specified.
  bool get hasNoScript => script == null;

  /// Returns `true` if the locale has only language specified.
  bool get hasOnlyLanguage => hasNoScript && hasNoCountry;

  /// Returns a string representing the locale.
  ///
  /// This identifier should to be a valid Unicode Locale Identifier.
  /// By default it uses Java-like underscore `_` [separator].
  String toUnicodeLocaleId({String separator = "_"}) {
    final languageCode = language.codeShort.toLowerCase();
    if (hasOnlyLanguage) return languageCode;

    final sb = StringBuffer(languageCode);
    if (!hasNoScript) sb.write(separator + (script?.code ?? ""));
    if (!hasNoCountry) sb.write(separator + (countryCode ?? ""));

    return sb.toString();
  }

  TranslatedName toTranslatedName(String name, {String? fullName}) =>
      TranslatedName(
        language,
        name: name,
        fullName: fullName,
        countryCode: countryCode,
        script: script,
      );
}
