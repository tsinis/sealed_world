// ignore_for_file: avoid-type-casts

import "package:sealed_languages/sealed_languages.dart";

import "../../model/currency/currency.dart";

/// Extension on [FiatCurrency] that provides methods for converting
/// [FiatCurrency] objects to and from JSON maps.
extension FiatCurrencyJson on FiatCurrency {
  /// {@macro from_map_method}
  static FiatCurrency fromMap(JsonMap map) => FiatCurrency(
    alternateSymbols: map["alternateSymbols"] is List
        ? List<String>.unmodifiable(map["alternateSymbols"] as List)
        : null,
    code: map["code"].toString(),
    codeNumeric: map["codeNumeric"].toString(),
    decimalMark: map["decimalMark"].toString(),
    disambiguateSymbol: map["disambiguateSymbol"]?.toString(),
    htmlEntity: map["htmlEntity"]?.toString(),
    name: map["name"].toString(),
    namesNative: List<String>.unmodifiable(map["namesNative"] as List),
    priority: map["priority"] as int,
    smallestDenomination: map["smallestDenomination"] as int,
    subunit: map["subunit"]?.toString(),
    subunitToUnit: map["subunitToUnit"] as int,
    symbol: map["symbol"]?.toString(),
    thousandsSeparator: map["thousandsSeparator"].toString(),
    // ignore: deprecated_member_use_from_same_package, waits for removal.
    translations: List.unmodifiable(
      (map["translations"] as List).map(
        (l10n) => TranslatedNameExtension.fromMap(l10n as JsonMap),
      ),
    ),
    unitFirst: map["unitFirst"] as bool,
  );

  /// {@macro to_map_method}
  JsonObjectMap toMap() => {
    "alternateSymbols": alternateSymbols,
    "code": code,
    "codeNumeric": codeNumeric,
    "decimalMark": decimalMark,
    "disambiguateSymbol": disambiguateSymbol,
    "htmlEntity": htmlEntity,
    "name": name,
    "namesNative": namesNative,
    "priority": priority,
    "smallestDenomination": smallestDenomination,
    "subunit": subunit,
    "subunitToUnit": subunitToUnit,
    "symbol": symbol,
    "thousandsSeparator": thousandsSeparator,
    "translations": translations
        .map((l10n) => l10n.toMap())
        .toList(growable: false),
    "unitFirst": unitFirst,
  };
}
