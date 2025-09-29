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
    List<TranslatedName>? translations,
    bool? unitFirst,
  }) {
    final newCode = code ?? this.code;
    final newCodeNumeric = codeNumeric ?? this.codeNumeric;
    final newAltSymbols = alternateSymbols ?? this.alternateSymbols;
    final newDenomination = smallestDenomination ?? this.smallestDenomination;
    final newHtmlEntity = htmlEntity ?? this.htmlEntity;
    final newNamesNative = namesNative ?? this.namesNative;
    final newSubunit = subunit ?? this.subunit;

    assert(newNamesNative.isNotEmpty, "`namesNative` should not be empty!");
    assert(
      newCode.length == IsoStandardized.codeLength,
      "`code` should be exactly ${IsoStandardized.codeLength} characters long!",
    );
    assert(
      newCodeNumeric.length == IsoStandardized.codeLength,
      """`codeNumeric` should be exactly ${IsoStandardized.codeLength} characters long!""",
    );
    assert(
      newHtmlEntity == null || newHtmlEntity.isNotEmpty,
      "`htmlEntity` should not be empty!",
    );
    assert(
      newSubunit == null || newSubunit.isNotEmpty,
      "`subunit` should not be empty!",
    );
    assert(
      newAltSymbols == null || newAltSymbols.isNotEmpty,
      "`alternateSymbols` should not be empty!",
    );
    assert(
      !newDenomination.isNegative,
      "`smallestDenomination` should not be negative!",
    );

    return FiatCurrency(
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
}
