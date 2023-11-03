import "dart:ui" show Locale;

import "package:flutter/foundation.dart" show immutable;
import "package:sealed_countries/sealed_countries.dart";

@immutable

/// A class representing a typed locale with optional country and script.
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
class TypedLocale<CountryType extends Object> extends Locale {
  /// Creates an instance of [TypedLocale].
  ///
  /// The [language] parameter is required.
  /// The [country] and [script] parameters are optional.
  const TypedLocale(this.language, {this.country, this.script}) : super(" ");

  /// The [NaturalLanguage] representing the language of the locale.
  final NaturalLanguage language;

  /// The optional country information of generic type `CountryType`.
  final CountryType? country;

  /// The optional script information of type [Script].
  final Script? script;

  @override
  String? get countryCode => country?.toString().trim().toUpperCase();

  @override
  String get languageCode => language.codeShort.toLowerCase();

  @override
  String? get scriptCode => script?.code;
}
