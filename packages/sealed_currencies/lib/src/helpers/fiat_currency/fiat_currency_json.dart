import "package:sealed_languages/sealed_languages.dart";

import "../../model/currency.dart";

/// Extension on [FiatCurrency] that provides methods for converting
/// [FiatCurrency] objects to and from JSON maps.
extension FiatCurrencyJson on FiatCurrency {
  /// Creates a new instance of [FiatCurrency] from a JSON map.
  ///
  /// The [map] parameter is a JSON map that contains the properties of the
  /// [FiatCurrency] object. The map must contain the following keys:
  ///
  /// - `"code"`: Required. A string that represents the ISO 4217 code of the
  ///   currency.
  /// - `"name"`: Required. A string that represents the name of the currency.
  /// - `"namesNative"`: Required. A string that represents the native names
  ///   of the currency, separated by the [JsonEncodable.separator] character.
  /// - `"codeNumeric"`: Required. A string that represents the ISO 4217 numeric
  ///   code of the currency.
  /// - `"decimalMark"`: Required. A string that represents the decimal mark
  ///   used in the currency.
  /// - `"thousandsSeparator"`: Required. A string that represents the
  ///   thousands separator used in the currency.
  /// - `"priority"`: Required. An integer that represents the priority of the
  ///   currency.
  /// - `"smallestDenomination"`: Required. An integer that represents the
  ///   smallest denomination of the currency.
  /// - `"subunitToUnit"`: Required. An integer that represents the number of
  ///   subunits in one unit of the currency.
  /// - `"unitFirst"`: Required. A boolean that indicates whether the currency
  ///   symbol should be placed before the amount.
  ///
  /// The map may also contain the following optional keys:
  ///
  /// - `"alternateSymbols"`: A string that represents alternate symbols for
  ///   the currency, separated by the [JsonEncodable.separator] character.
  /// - `"disambiguateSymbol"`: A string that represents a disambiguation symbol
  ///   for the currency.
  /// - `"htmlEntity"`: A string that represents the HTML entity for the
  ///   currency symbol.
  /// - `"subunit"`: A string that represents the name of the subunit of the
  ///   currency.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// final jsonMap = {
  ///   "code": "USD",
  ///   "name": "United States Dollar",
  ///   "namesNative": ["United States Dollar"],
  ///   "codeNumeric": "840",
  ///   "decimalMark": ".",
  ///   "thousandsSeparator": ",",
  ///   "alternateSymbols": ["US$"],
  ///   "disambiguateSymbol": "\$",
  ///   "htmlEntity": "&#36;",
  ///   "smallestDenomination": 1,
  ///   "subunit": "cent",
  ///   "subunitToUnit": 100,
  ///   "unitFirst": true,
  ///   "priority": 1,
  /// };
  ///
  /// final customUsd = FiatCurrencyJson.fromMap(jsonMap);
  /// ```
  static FiatCurrency fromMap(JsonMap map) => FiatCurrency(
        code: map["code"] as String,
        name: map["name"] as String,
        // TODO!: Move to extension.
        namesNative: List<String>.unmodifiable(map["namesNative"] as List),
        codeNumeric: map["codeNumeric"] as String,
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

  /// Converts the [FiatCurrency] object to a JSON map.
  ///
  /// The returned map contains the following keys:
  ///
  /// - `"code"`: A string that represents the ISO 4217 code of the currency.
  /// - `"name"`: A string that represents the name of the currency.
  /// - `"namesNative"`: A string that represents the native names of the
  ///   currency, separated by the [JsonEncodable.separator] character.
  /// - `"codeNumeric"`: A string that represents the ISO 4217 numeric code of
  ///   the currency.
  /// - `"decimalMark"`: A string that represents the decimal mark used in the
  ///   currency.
  /// - `"thousandsSeparator"`: A string that represents the thousands separator
  ///   used in the currency.
  /// - `"priority"`: An integer that represents the priority of the currency.
  /// - `"smallestDenomination"`: An integer that represents the smallest
  ///   denomination of the currency.
  /// - `"subunitToUnit"`: An integer that represents the number of subunits in
  ///   one unit of the currency.
  /// - `"unitFirst"`: A boolean that indicates whether the currency symbol
  ///   should be placed before the amount.
  ///
  /// The map may also contain the following optional keys:
  ///
  /// - `"alternateSymbols"`: A string that represents alternate symbols for
  ///   the currency, separated by the [JsonEncodable.separator] character.
  /// - `"disambiguateSymbol"`: A string that represents a disambiguation symbol
  ///   for the currency.
  /// - `"htmlEntity"`: A string that represents the HTML entity for the
  ///   currency symbol.
  /// - `"subunit"`: A string that represents the name of the subunit of the
  ///   currency.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// final usdMap = FiatUsd().toMap();
  /// ```
  Map<String, Object?> toMap() => {
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
      };
}
