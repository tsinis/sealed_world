import "package:_sealed_world_tests/sealed_world_tests.dart";
import "package:sealed_currencies/src/helpers/fiat_currency/fiat_currency_copy_with.dart";
import "package:sealed_currencies/src/model/currency/currency.dart";
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
    expect(copy.translations, element.translations);
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
    expect(copy.translations, element.translations);
  });

  group("asserts", () {
    assertTest(
      "not",
      () => element.copyWith(
        name: "Test",
        symbol: "A",
        htmlEntity: "B",
        subunit: "C",
      ),
      shouldThrow: false,
    );
    assertTest("empty symbol", () => element.copyWith(symbol: ""));
    assertTest("empty htmlEntity", () => element.copyWith(htmlEntity: ""));
    assertTest("empty subunit", () => element.copyWith(subunit: ""));
    assertTest("code length", () => element.copyWith(code: "TOOLONG"));

    assertTest(
      "codeNumeric length",
      () => element.copyWith(codeNumeric: "TOOLONG"),
    );

    assertTest(
      "empty namesNative",
      () => element.copyWith(namesNative: const []),
    );

    assertTest(
      "empty alternateSymbols",
      () => element.copyWith(alternateSymbols: const []),
    );

    assertTest(
      "negative smallestDenomination",
      () => element.copyWith(smallestDenomination: -1),
    );
  });
});
