import "package:sealed_currencies/src/model/currency/currency.dart";
import "package:test/test.dart";

void main() => group("$Currency", () {
  // ignore: avoid-explicit-type-declaration, we need to test the type.
  const Currency currency = FiatArs();

  group("toString", () {
    test(
      "short: true",
      () => expect(currency.toString(), 'Currency(code: "ARS")'),
    );

    test(
      "short: false",
      () => expect(
        currency.toString(short: false),
        'FiatCurrency(code: "ARS", name: "Argentine Peso", '
        r'decimalMark: ",", thousandsSeparator: ".", symbol: r"$", '
        r'alternateSymbols: ["$m/n","m$n"], disambiguateSymbol: r"$m/n", '
        r'htmlEntity: r"$", codeNumeric: "032", '
        'namesNative: ["Argentine peso"], priority: 100, '
        'smallestDenomination: 1, subunit: "Centavo", subunitToUnit: 100, '
        "unitFirst: true,)",
      ),
    );
  });
});
