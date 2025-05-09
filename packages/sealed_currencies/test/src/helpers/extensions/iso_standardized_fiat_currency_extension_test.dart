import "package:sealed_currencies/src/data/fiat_currencies.data.dart";
import "package:sealed_currencies/src/helpers/extensions/iso_standardized_fiat_currency_extension.dart";
import "package:sealed_currencies/src/model/currency/currency.dart";
import "package:sealed_languages/src/data/scripts.data.dart";
import "package:sealed_languages/src/interfaces/iso_standardized.dart";
import "package:sealed_languages/src/model/script/writing_system.dart";
import "package:test/test.dart";

void main() => group("IsoStandardizedFiatCurrencyExtension", () {
      // ignore: avoid-explicit-type-declaration, it's tests.
      const IsoStandardized? nullValue = null;
      const script = ScriptLatn();
      const currency = FiatEur();

      group("isFiatCurrency", () {
        test(
          "returns true for $FiatCurrency instances",
          () => expect(currency.isFiatCurrency, isTrue),
        );

        test(
          "returns false for $Script instances",
          () => expect(script.isFiatCurrency, isFalse),
        );

        test(
          "returns false for null values",
          () => expect(nullValue.isFiatCurrency, isFalse),
        );
      });
    });
