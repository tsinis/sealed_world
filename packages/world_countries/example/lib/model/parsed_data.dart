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
    this.isSettings = false,
  });

  final WorldCountry country;
  final FiatCurrency currency;
  final NaturalLanguage language;
  final WorldData value;
  final bool isSettings;

  @override
  String toString() =>
      "ParsedData(country: $country, currency: $currency, "
      "language: $language, value: $value, isSettings: $isSettings)";

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ParsedData &&
        other.country == country &&
        other.currency == currency &&
        other.language == language &&
        other.value == value &&
        other.isSettings == isSettings;
  }

  @override
  int get hashCode =>
      Object.hash(country, currency, language, value, isSettings);
}
