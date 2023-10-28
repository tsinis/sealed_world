import "package:flutter/foundation.dart" show immutable;
import "package:sealed_countries/sealed_countries.dart";

import "typed_locale.dart";

@immutable
final class IsoLocale extends TypedLocale<WorldCountry> {
  const IsoLocale(super.language, {super.country, super.script});

  @override
  String? get countryCode => country?.codeShort;
}
