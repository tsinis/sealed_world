import "package:sealed_currencies/src/helpers/fiat_currency/fiat_currency_json.dart";
import "package:sealed_currencies/src/model/currency/submodels/fiat_currency.dart";
import "package:test/test.dart";

void main() => group("FiatCurrencyJson", () {
  group("fromMap", () {
    test(
      "throws ArgumentError when codes missing",
      () =>
          expect(() => FiatCurrencyJson.fromMap(const {}), throwsArgumentError),
    );

    test("deserializes FiatCurrency from map", () {
      const map = {
        "alternateSymbols": [r"Z$"],
        "code": "ZZZ",
        "codeNumeric": "999",
        "decimalMark": ".",
        "disambiguateSymbol": r"Zed$",
        "htmlEntity": "&Zed;",
        "name": "Zed Dollar",
        "namesNative": ["Zed"],
        "priority": 42,
        "smallestDenomination": 5,
        "subunit": "Zed cent",
        "subunitToUnit": 100,
        "symbol": "Ż", // ignore_for_file: avoid-non-ascii-symbols, it's a test.
        "thousandsSeparator": ",",
        "unitFirst": true,
      };

      final currency = FiatCurrencyJson.fromMap(map);

      expect(currency, isA<FiatCustom>());
      expect(currency.code, "ZZZ");
      expect(currency.codeNumeric, "999");
      expect(currency.name, "Zed Dollar");
      expect(currency.namesNative, ["Zed"]);
      expect(currency.alternateSymbols, [r"Z$"]);
      expect(currency.decimalMark, ".");
      expect(currency.thousandsSeparator, ",");
      expect(currency.disambiguateSymbol, r"Zed$");
      expect(currency.htmlEntity, "&Zed;");
      expect(currency.subunit, "Zed cent");
      expect(currency.subunitToUnit, 100);
      expect(currency.symbol, "Ż");
      expect(currency.priority, 42);
      expect(currency.smallestDenomination, 5);
      expect(currency.unitFirst, isTrue);
    });
  });
});
