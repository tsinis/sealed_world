import "package:sealed_currencies/src/helpers/crypto_currency/crypto_currency_copy_with.dart";
import "package:sealed_currencies/src/model/currency/submodels/crypto_currency.dart";
import "package:test/test.dart";

void main() => group("CryptoCurrencyCopyWith", () {
  const element = CryptoCurrency(
    code: "BTC",
    name: "Bitcoin",
    symbol: "₿", // ignore: avoid-non-ascii-symbols, it's just a test.
    proofType: "Proof of Work",
    isMinable: true,
  );

  test("copyWith should return a new instance with updated name", () {
    final copy = element.copyWith(name: "Custom Bitcoin");
    expect(copy.name, "Custom Bitcoin");
    expect(copy.code, element.code);
    expect(copy.proofType, element.proofType);
    expect(copy.symbol, element.symbol);
    expect(copy.isMinable, element.isMinable);
    expect(copy.isFork, element.isFork);
  });

  test("copyWith should return same values without updates", () {
    final copy = element.copyWith();
    expect(copy.code, element.code);
    expect(copy.name, element.name);
    expect(copy.proofType, element.proofType);
    expect(copy.symbol, element.symbol);
    expect(copy.isMinable, element.isMinable);
    expect(copy.isFork, element.isFork);
    expect(copy.decimalMark, element.decimalMark);
    expect(copy.thousandsSeparator, element.thousandsSeparator);
  });

  test("copyWith should reset proofType to null with empty string", () {
    final copy = element.copyWith(proofType: "");
    expect(copy.proofType, isNull);
    expect(copy.code, element.code);
  });

  test("copyWith should reset symbol to null with empty string", () {
    final copy = element.copyWith(symbol: "");
    expect(copy.symbol, isNull);
    expect(copy.code, element.code);
  });
});
