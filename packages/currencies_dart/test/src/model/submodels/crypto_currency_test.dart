import "package:currencies_dart/src/model/currency.dart";
import "package:test/test.dart";

// ignore: long-method, it's a test.
void main() => group("$CryptoCurrency", () {
      const value = CryptoCurrency(code: "code", name: "name");
      test("toString", () {
        expect(value.toString(short: false).contains(value.name), isTrue);
        expect(value.toString().contains(value.name), isFalse);
      });
    });
