import "package:sealed_currencies/src/helpers/fiat_currency/fiat_currency_copy_with.dart";
import "package:sealed_currencies/src/model/currency/submodels/fiat_currency.dart";
import "package:test/test.dart";

void main() => group("FiatCurrencyCopyWith", () {
  final element = FiatCurrency.list.first;

  test("copyWith should return a new instance with updated name", () {
    final copy = element.copyWith(name: 0.toString());

    expect(copy.code, element.code);
    expect(copy.name, 0.toString());
    expect(copy.codeNumeric, element.codeNumeric);
    expect(copy.namesNative, element.namesNative);
    expect(copy.alternateSymbols, element.alternateSymbols);
    expect(copy.htmlEntity, element.htmlEntity);
    expect(copy.disambiguateSymbol, element.disambiguateSymbol);
    expect(copy.subunit, element.subunit);
    expect(copy.symbol, element.symbol);
    expect(copy.priority, element.priority);
    expect(copy.smallestDenomination, element.smallestDenomination);
    expect(copy.subunitToUnit, element.subunitToUnit);
    expect(copy.unitFirst, element.unitFirst);
    expect(copy.decimalMark, element.decimalMark);
    expect(copy.thousandsSeparator, element.thousandsSeparator);
  });

  test("copyWith should return a same instance without updated name", () {
    final copy = element.copyWith();

    expect(copy.code, element.code);
    expect(copy.name, element.name);
    expect(copy.codeNumeric, element.codeNumeric);
    expect(copy.namesNative, element.namesNative);
    expect(copy.alternateSymbols, element.alternateSymbols);
    expect(copy.htmlEntity, element.htmlEntity);
    expect(copy.disambiguateSymbol, element.disambiguateSymbol);
    expect(copy.subunit, element.subunit);
    expect(copy.symbol, element.symbol);
    expect(copy.priority, element.priority);
    expect(copy.smallestDenomination, element.smallestDenomination);
    expect(copy.subunitToUnit, element.subunitToUnit);
    expect(copy.unitFirst, element.unitFirst);
    expect(copy.decimalMark, element.decimalMark);
    expect(copy.thousandsSeparator, element.thousandsSeparator);
  });
});
