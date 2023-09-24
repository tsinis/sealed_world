import "package:sealed_languages/sealed_languages.dart";

import "../../model/currency.dart";

/// Extension on [FiatCurrency] that provides methods for converting
/// [FiatCurrency] objects to and from JSON maps.
extension FiatCurrencyJson on FiatCurrency {
  // TODO! As template.
  static FiatCurrency fromMap(JsonMap map) => FiatCurrency(
        code: map["code"] as String,
        name: map["name"] as String,
        namesNative:
            map["namesNative"].toString().split(JsonEncodable.separator),
        codeNumeric: map["codeNumeric"] as String,
        alternateSymbols:
            map["alternateSymbols"]?.toString().split(JsonEncodable.separator),
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

  // TODO! As template.
  Map<String, Object?> toMap() => {
        "code": code,
        "name": name,
        "decimalMark": decimalMark,
        "thousandsSeparator": thousandsSeparator,
        "symbol": symbol,
        "alternateSymbols": alternateSymbols?.join(JsonEncodable.separator),
        "disambiguateSymbol": disambiguateSymbol,
        "htmlEntity": htmlEntity,
        "codeNumeric": codeNumeric,
        "namesNative": namesNative.join(JsonEncodable.separator),
        "priority": priority,
        "smallestDenomination": smallestDenomination,
        "subunit": subunit,
        "subunitToUnit": subunitToUnit,
        "unitFirst": unitFirst,
      };
}
