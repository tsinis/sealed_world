import "dart:ui" show Locale;

import "package:flutter/foundation.dart" show immutable, required;
import "package:sealed_countries/sealed_countries.dart";

/// A class representing a typed locale with optional country and script.
/// However it's usually better to use the `IsoLocale` class instead of
/// this one, in most cases, because ot generic nature of country argument.
///
/// The [TypedLocale] class extends the [Locale] class and adds additional
/// properties for language, country, and script. It provides a way to associate
/// a specific language with optional country and script information.
///
/// The [TypedLocale] class has the following properties:
/// - `language`: The [NaturalLanguage] representing the language of the locale.
/// - `country`: The optional country information of generic type `CountryType`.
/// - `script`: The optional script information of type `Script`.
///
/// Example usage:
///
/// ```dart
/// const typedLocale = TypedLocale<String>(
///   LangEng(),
///   country: 'US',
///   script: ScriptLatn(),
/// );
/// ```
@immutable
class TypedLocale<CountryType extends Object> extends Locale {
  /// Creates an instance of [TypedLocale].
  ///
  /// The [language] parameter is required.
  /// The [country] and [script] parameters are optional.
  const TypedLocale(this.language, {this.country, this.script}) : super(" ");

  /// Creates an instance of [TypedLocale] from subtags.
  ///
  /// The [language] parameter is required.
  /// The [country] and [script] parameters are optional.
  TypedLocale.fromSubtags({required this.language, this.country, this.script})
      : super.fromSubtags(
          languageCode: language.codeShort.toLowerCase(),
          scriptCode: script?.code,
          countryCode: country?.toString().trim().toUpperCase(),
        );

  /// The [NaturalLanguage] representing the language of the locale.
  final NaturalLanguage language;

  /// The optional country information of generic type `CountryType`.
  final CountryType? country;

  /// The optional script information of type [Script].
  final Script? script;

  @override
  @required
  String? get countryCode => country?.toString().trim().toUpperCase();

  @override
  String get languageCode => language.codeShort.toLowerCase();

  @override
  String? get scriptCode => script?.code;
}
