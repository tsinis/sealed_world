import "../../helpers/extensions/sealed_world_object_extension.dart";
import "../../model/core/basic_locale.dart";
import "../../model/language/language.dart";
import "../../model/script/writing_system.dart";
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
}
