import "package:sealed_languages/sealed_languages.dart";

import "../../model/currency.dart";

/// Extension on [FiatCurrency] that provides methods for converting
/// [FiatCurrency] objects to and from JSON maps.
extension FiatCurrencyJson on FiatCurrency {
  /// {@macro from_map_method}
  static FiatCurrency fromMap(JsonMap map) => FiatCurrency(
        code: map["code"] as String,
        name: map["name"] as String,
        namesNative: List<String>.unmodifiable(map["namesNative"] as List),
        codeNumeric: map["codeNumeric"] as String,
        translations: List<TranslatedName>.unmodifiable(
          (map["translations"] as List)
              .map((l10n) => TranslatedNameExtension.fromMap(l10n as JsonMap)),
        ),
        alternateSymbols: map["alternateSymbols"] is List
            ? List<String>.unmodifiable(map["alternateSymbols"] as List)
            : null,
        disambiguateSymbol: map["disambiguateSymbol"] as String?,
        htmlEntity: map["htmlEntity"] as String?,
        priority: map["priority"] as int,
        smallestDenomination: map["smallestDenomination"] as int,
        subunit: map["subunit"] as String?,
        subunitToUnit: map["subunitToUnit"] as int,
        unitFirst: map["unitFirst"] as bool,
        symbol: map["symbol"] as String?,
        decimalMark: map["decimalMark"] as String,
        thousandsSeparator: map["thousandsSeparator"] as String,
      );

  /// {@macro to_map_method}
  JsonObjectMap toMap() => {
        "code": code,
        "name": name,
        "decimalMark": decimalMark,
        "thousandsSeparator": thousandsSeparator,
        "symbol": symbol,
        "alternateSymbols": alternateSymbols,
        "disambiguateSymbol": disambiguateSymbol,
        "htmlEntity": htmlEntity,
        "codeNumeric": codeNumeric,
        "namesNative": namesNative,
        "priority": priority,
        "smallestDenomination": smallestDenomination,
        "subunit": subunit,
        "subunitToUnit": subunitToUnit,
        "unitFirst": unitFirst,
        "translations":
            translations.map((l10n) => l10n.toMap()).toList(growable: false),
      };
}
