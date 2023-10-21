import "package:sealed_languages/sealed_languages.dart";

import "../../model/currency.dart";

/// Extension on [FiatCurrency] that provides a `copyWith` method for
/// creating a new instance of [FiatCurrency] with updated properties.
extension FiatCurrencyCopyWith on FiatCurrency {
  /// Creates a new instance of [FiatCurrency] with updated properties.
  ///
  /// The optional named parameters can be used to specify new values for the
  /// corresponding properties. If a named parameter is not provided, the
  /// corresponding property is copied from the original instance.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// const taka = FiatBdt();
  ///
  /// final shortTaka = taka.copyWith(name: 'Taka');
  /// ```
  FiatCurrency copyWith({
    String? code,
    String? name,
    String? decimalMark,
    String? thousandsSeparator,
    String? symbol,
    List<String>? alternateSymbols,
    String? disambiguateSymbol,
    String? htmlEntity,
    String? codeNumeric,
    List<String>? namesNative,
    int? priority,
    int? smallestDenomination,
    String? subunit,
    int? subunitToUnit,
    bool? unitFirst,
    List<TranslatedName>? translations,
  }) =>
      FiatCurrency(
        code: code ?? this.code,
        name: name ?? this.name,
        namesNative: namesNative ?? this.namesNative,
        codeNumeric: codeNumeric ?? this.codeNumeric,
        translations: translations ?? this.translations,
        alternateSymbols: alternateSymbols ?? this.alternateSymbols,
        disambiguateSymbol: disambiguateSymbol ?? this.disambiguateSymbol,
        htmlEntity: htmlEntity ?? this.htmlEntity,
        priority: priority ?? this.priority,
        smallestDenomination: smallestDenomination ?? this.smallestDenomination,
        subunit: subunit ?? this.subunit,
        subunitToUnit: subunitToUnit ?? this.subunitToUnit,
        unitFirst: unitFirst ?? this.unitFirst,
        symbol: symbol ?? this.symbol,
        decimalMark: decimalMark ?? this.decimalMark,
        thousandsSeparator: thousandsSeparator ?? this.thousandsSeparator,
      );
}
