// ignore_for_file: avoid-type-casts

import "package:sealed_languages/sealed_languages.dart";

import "../../model/currency/submodels/fiat_currency.dart";
import "fiat_currency_copy_with.dart";

/// Extension on [FiatCurrency] that provides methods for converting
/// [FiatCurrency] objects to and from JSON maps.
extension FiatCurrencyJson on FiatCurrency {
  /// {@macro from_map_method}
  static FiatCurrency fromMap(JsonMap map) {
    final code = map["code"]?.toString().trim() ?? "";
    final codeNumeric = map["codeNumeric"]?.toString().trim() ?? "";
    if (code.isEmpty && codeNumeric.isEmpty) {
      throw ArgumentError(
        "The `code` (or at least `codeNumeric`) must be provided!",
      );
    }

    return FiatCustom(code: code, codeNumeric: codeNumeric).copyWith(
      alternateSymbols: map["alternateSymbols"] is List
          ? List<String>.unmodifiable(map["alternateSymbols"] as List)
          : null,
      decimalMark: map["decimalMark"]?.toString(),
      disambiguateSymbol: map["disambiguateSymbol"]?.toString(),
      htmlEntity: map["htmlEntity"]?.toString(),
      name: map["name"]?.toString(),
      namesNative: List<String>.unmodifiable(map["namesNative"] as List),
      priority: map["priority"] as int?,
      smallestDenomination: map["smallestDenomination"] as int?,
      subunit: map["subunit"]?.toString(),
      subunitToUnit: map["subunitToUnit"] as int?,
      symbol: map["symbol"]?.toString(),
      thousandsSeparator: map["thousandsSeparator"]?.toString(),
      unitFirst: map["unitFirst"] as bool?,
    );
  }

  /// {@macro to_map_method}
  Map<String, Object> toMap() => {
    "alternateSymbols": ?alternateSymbols,
    "code": code,
    "codeNumeric": codeNumeric,
    "decimalMark": decimalMark,
    "disambiguateSymbol": ?disambiguateSymbol,
    "htmlEntity": ?htmlEntity,
    "name": name,
    "namesNative": namesNative,
    "priority": priority,
    "smallestDenomination": smallestDenomination,
    "subunit": ?subunit,
    "subunitToUnit": subunitToUnit,
    "symbol": ?symbol,
    "thousandsSeparator": thousandsSeparator,
    "unitFirst": unitFirst,
  };
}
