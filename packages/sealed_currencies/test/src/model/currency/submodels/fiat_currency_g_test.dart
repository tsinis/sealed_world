import "package:sealed_currencies/src/data/fiat_currencies.data.dart";
import "package:sealed_currencies/src/helpers/fiat_currency/fiat_currency_copy_with.dart";
import "package:sealed_currencies/src/model/currency/currency.dart";
import "package:test/test.dart";

void main() {
  const value = FiatEur();
  final nonConst = FiatEur(); // ignore: prefer_const_constructors, it's test.
  // ignore: prefer_final_locals, prefer_const_constructors, it's a test.
  var varValue = FiatEur(); // ignore: prefer-type-over-var, it's a test.

  group("FiatCurrencyBoolGetters", () {
    test("boolean getter should work for compile-time const", () {
      expect(value.isUsd, isFalse);
      expect(value.isEur, isTrue);
    });

    test("boolean getter should work for non-compile-time const", () {
      expect(nonConst.isUsd, isFalse);
      expect(nonConst.isEur, isTrue);
    });

    test("boolean getter should work var declaration", () {
      expect(varValue.isUsd, isFalse);
      expect(varValue.isEur, isTrue);

      final string = const FiatUsd().code;

      FiatCurrency copy = varValue.copyWith(name: string);
      expect(copy.isUsd, isFalse);
      expect(copy.isEur, isTrue);
      expect(copy.name, string);

      copy = varValue.copyWith(code: string);
      expect(copy.isEur, isFalse);
      expect(copy.isUsd, isTrue);
      expect(copy.code, string);
    });
  });

  group("FiatCurrencyFunctional", () {
    test("boolean getter should work for compile-time const", () {
      final maybeWhen = value.maybeWhen(
        fiatEur: () => true,
        orElse: () => false,
      );
      expect(maybeWhen, isTrue);
    });

    test("boolean getter should work for non-compile-time const", () {
      final whenOrNull = nonConst.whenOrNull(fiatEur: () => true);
      expect(whenOrNull, isTrue);
    });

    test("boolean getter should work var declaration", () {
      final maybeMap = varValue.maybeMap(
        fiatEur: (_) => true,
        orElse: (_) => false,
      );
      expect(maybeMap, isTrue);
    });
  });
}
