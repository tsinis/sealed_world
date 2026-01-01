import "package:sealed_currencies/sealed_currencies.dart";

import "../../model/country/country.dart";
import "../../model/locale/basic_typed_locale.dart";

/// A concrete implementation of abstract [BasicLocalizationDelegate] that uses
/// [BasicTypedLocale] and [TranslatedName] types for localization operations.
///
/// This delegate provides default implementation for handling ISO standardized
/// entities localization without extending the base locale functionality.
class TypedLocalizationDelegate
    extends BasicLocalizationDelegate<BasicTypedLocale, TranslatedName> {
  /// Creates a [LocalizationDelegate] instance.
  ///
  /// Parameters are passed directly to [BasicLocalizationDelegate]:
  /// - [languages]: Optional collection of supported languages.
  /// - [scripts]: Optional collection of supported scripts.
  /// - [mapper]: Optional function that returns locale mapping function.
  /// {@macro sealed_world.locale_mapper_callback}
  const TypedLocalizationDelegate({
    this.countries,
    super.languages,
    super.mapper,
    super.scripts,
  });

  /// Optional collection of supported countries. Used to limit locale parsing
  /// and validation.
  final Iterable<WorldCountry>? countries;

  @override
  BasicTypedLocale toLocale(
    NaturalLanguage language,
    Script? script,
    String? countryCode, {
    WorldCountry? country,
  }) {
    final maybeCountry =
        country ?? WorldCountry.maybeFromAnyCode(countryCode, countries);

    return BasicTypedLocale(
      language,
      script: script,
      country: maybeCountry,
      regionalCode: maybeCountry == null ? countryCode : null,
    );
  }

  @override // coverage:ignore-line
  TranslatedName toTranslation(BasicLocale locale, String name, String? alt) =>
      locale.toTranslatedName(name, fullName: alt);

  @override // coverage:ignore-line
  TypedLocalizationDelegate copyWith({
    Iterable<WorldCountry>? countries,
    Iterable<NaturalLanguage>? languages,

    /// {@macro sealed_world.locale_mapper_callback}
    LocaleMapFunction<String> Function()? mapper,
    Iterable<Script>? scripts,
  }) => TypedLocalizationDelegate(
    countries: countries ?? this.countries,
    languages: languages ?? this.languages,
    mapper: mapper ?? this.mapper,
    scripts: scripts ?? this.scripts,
  );
}
