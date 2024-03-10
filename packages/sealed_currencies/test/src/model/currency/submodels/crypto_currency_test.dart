import "package:sealed_currencies/src/model/currency/currency.dart";
import "package:test/test.dart";

void main() => group("$CryptoCurrency", () {
      const value = CryptoCurrency(code: "0", name: "1");

      test("toString", () {
        expect(value.toString(short: false), contains(value.name));
        expect(value.toString().contains(value.name), isFalse);
      });

      group("asserts", () {
        test(
          "not",
          () => expect(
            () => CryptoCurrency(code: value.code, name: value.name),
            isNot(throwsA(isA<AssertionError>())),
          ),
        );

        test(
          "empty name",
          () => expect(
            () => CryptoCurrency(code: value.code, name: ""),
            throwsA(isA<AssertionError>()),
          ),
        );

        test(
          "empty code",
          () => expect(
            () => CryptoCurrency(code: "", name: value.name),
            throwsA(isA<AssertionError>()),
          ),
        );

        test(
          "empty symbol",
          () => expect(
            () =>
                CryptoCurrency(code: value.code, name: value.name, symbol: ""),
            throwsA(isA<AssertionError>()),
          ),
        );

        test(
          "empty proofType",
          () => expect(
            () => CryptoCurrency(
              code: value.code,
              name: value.name,
              proofType: "",
            ),
            throwsA(isA<AssertionError>()),
          ),
        );
      });
    });
