import "package:_sealed_world_tests/sealed_world_tests.dart";
import "package:sealed_currencies/src/model/currency/currency.dart";
import "package:test/test.dart";

void main() => group("$CryptoCurrency", () {
      const value = CryptoCurrency(code: "0", name: "1");

      test("toString", () {
        expect(value.toString(short: false), contains(value.name));
        expect(value.toString().contains(value.name), isFalse);
      });

      group("asserts", () {
        assertTest(
          "not",
          () => CryptoCurrency(code: value.code, name: value.name),
          shouldThrow: false,
        );

        assertTest(
          "empty name",
          () => CryptoCurrency(code: value.code, name: ""),
        );

        assertTest(
          "empty code",
          () => CryptoCurrency(code: "", name: value.name),
        );

        assertTest(
          "empty symbol",
          () => CryptoCurrency(code: value.code, name: value.name, symbol: ""),
        );

        assertTest(
          "empty proofType",
          () => CryptoCurrency(
            code: value.code,
            name: value.name,
            proofType: "",
          ),
        );
      });
    });
