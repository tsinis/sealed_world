import "../../interfaces/basic_localization_delegate.dart";
import "../../model/core/basic_locale.dart";
import "../../model/language/submodels/natural_language.dart";
import "../../model/script/submodels/script.dart";
import "../../model/translated_name.dart";
import "../../typedefs/typedefs.dart";
import "../extensions/basic_locale_extension.dart";

/// A concrete implementation of abstract [BasicLocalizationDelegate] that uses
/// [BasicLocale] and [TranslatedName] types for localization operations.
///
/// This delegate provides default implementation for handling ISO standardized
/// entities localization without extending the base locale functionality.
class LocalizationDelegate
    extends BasicLocalizationDelegate<BasicLocale, TranslatedName> {
  /// Creates a [LocalizationDelegate] instance.
  ///
  /// Parameters are passed directly to [BasicLocalizationDelegate]:
  /// - [languages]: Optional collection of supported languages.
  /// - [scripts]: Optional collection of supported scripts.
  /// - [mapper]:
  /// {@macro sealed_world.locale_mapper_callback}
  const LocalizationDelegate({super.languages, super.mapper, super.scripts});

  @override
  BasicLocale toLocale(
    NaturalLanguage language,
    Script? script,
    String? countryCode,
  ) => BasicLocale(language, script: script, countryCode: countryCode);

  @override // coverage:ignore-line
  TranslatedName toTranslation(BasicLocale locale, String name, String? alt) =>
      locale.toTranslatedName(name, fullName: alt);

  @override // coverage:ignore-line
  LocalizationDelegate copyWith({
    Iterable<NaturalLanguage>? languages,

    /// {@macro sealed_world.locale_mapper_callback}
    LocaleMapFunction<String> Function()? mapper,
    Iterable<Script>? scripts,
  }) => LocalizationDelegate(
    languages: languages ?? this.languages,
    mapper: mapper ?? this.mapper,
    scripts: scripts ?? this.scripts,
  );
}
