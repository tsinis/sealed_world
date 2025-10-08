import "package:sealed_languages/sealed_languages.dart";

import "../../model/currency/currency.dart";

/// Extension on [FiatCurrency] that provides a `copyWith` method for
/// creating a new instance of [FiatCurrency] with updated properties.
extension FiatCurrencyCopyWith<T extends FiatCurrency> on T {
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
    List<String>? alternateSymbols,
    String? code,
    String? codeNumeric,
    String? decimalMark,
    String? disambiguateSymbol,
    String? htmlEntity,
    String? name,
    List<String>? namesNative,
    int? priority,
    int? smallestDenomination,
    String? subunit,
    int? subunitToUnit,
    String? symbol,
    String? thousandsSeparator,
    @deprecated List<TranslatedName>? translations,
    bool? unitFirst,
  }) => FiatCurrency(
    code: code ?? this.code,
    name: name ?? this.name,
    namesNative: namesNative ?? this.namesNative,
    codeNumeric: codeNumeric ?? this.codeNumeric,
    // ignore: deprecated_member_use_from_same_package, param is deprecated.
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
