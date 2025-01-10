import "../../interfaces/basic_localization_delegate.dart";
import "../../model/core/basic_locale.dart";
import "../../model/language/language.dart";
import "../../model/script/writing_system.dart";
import "../../model/translated_name.dart";
import "../../typedefs/typedefs.dart";
import "../extensions/basic_locale_extension.dart";

class LocalizationDelegate
    extends BasicLocalizationDelegate<BasicLocale, TranslatedName> {
  const LocalizationDelegate({super.languages, super.mapper, super.scripts});

  @override
  BasicLocale toLocale(
    NaturalLanguage language,
    Script? script,
    String? countryCode,
  ) =>
      BasicLocale(language, script: script, countryCode: countryCode);

  @override
  TranslatedName toTranslation(BasicLocale locale, String name, String? alt) =>
      locale.toTranslatedName(name, fullName: alt);

  @override
  LocalizationDelegate copyWith({
    Iterable<NaturalLanguage>? languages,
    LocaleMapFunction<String> Function()? mapper,
    Iterable<Script>? scripts,
  }) =>
      LocalizationDelegate(
        languages: languages ?? this.languages,
        mapper: mapper ?? this.mapper,
        scripts: scripts ?? this.scripts,
      );
}
