import "dart:ui" show Locale;

import "package:flutter/foundation.dart" show immutable;
import "package:sealed_countries/sealed_countries.dart";

@immutable
class TypedLocale<CountryType extends Object> extends Locale {
  const TypedLocale(this.language, {this.country, this.script})
      : super.fromSubtags();

  final NaturalLanguage language;
  final CountryType? country;
  final Script? script;

  @override
  String? get countryCode => country?.toString().trim().toUpperCase();

  @override
  String get languageCode => language.codeShort.toLowerCase();

  @override
  String? get scriptCode => script?.code;
}
