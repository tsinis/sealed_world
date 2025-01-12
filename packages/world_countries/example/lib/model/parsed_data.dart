// ignore_for_file: prefer-class-destructuring

import "package:flutter/foundation.dart";
import "package:world_countries/world_countries.dart";

import "world_data.dart";

@immutable
final class ParsedData {
  const ParsedData({
    required this.country,
    required this.currency,
    required this.language,
    required this.value,
  });

  final WorldCountry country;
  final FiatCurrency currency;
  final NaturalLanguage language;
  final WorldData value;

  @override
  String toString() => "ParsedData(country: $country, currency: $currency, "
      "language: $language, value: $value)";

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ParsedData &&
        other.country == country &&
        other.currency == currency &&
        other.language == language &&
        other.value == value;
  }

  @override
  int get hashCode =>
      country.hashCode ^ currency.hashCode ^ language.hashCode ^ value.hashCode;
}
