import "package:sealed_currencies/src/helpers/fiat_currency/fiat_currency_getters.dart";
import "package:sealed_currencies/src/model/currency.dart";
import "package:test/test.dart";

void main() => group("FiatCurrencyGetters", () {
      final value = FiatCurrency.list.last;

      test("iso4217Letter", () => expect(value.iso4217Letter, value.code));

      test(
        "iso4217Numeric",
        () => expect(value.iso4217Numeric, value.codeNumeric),
      );

      group("unit", () {
        test("as symbol", () {
          final valueWithSymbol = FiatCurrency.list.firstWhere(
            (currency) => currency.symbol != null,
          );
          expect(valueWithSymbol.unit, valueWithSymbol.symbol);
        });

        test("as code", () {
          final valueWithoutSymbol = FiatCurrency.list.firstWhere(
            (currency) => currency.symbol == null,
          );
          expect(valueWithoutSymbol.unit, valueWithoutSymbol.code);
        });
      });
    });
