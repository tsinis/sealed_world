import "package:_sealed_world_tests/sealed_world_tests.dart";
import "package:sealed_languages/src/helpers/extensions/iso_standardized_string_extension.dart";
import "package:test/test.dart";

void main() => group("IsoStandardizedStringExtension", () {
      const alphaRegularCodes = ["ENG", "Latn", "cze", "rUS", "Slv"];
      const alphaShortCodes = ["en", "CZ", "rU", "Sk"];
      const numericCodes = ["100", "001", "010", "999"];
      const invalidCodes = ["a", "B", "1"];

      group("toUpperCaseIsoCode", () {
        performanceTest(
          "should trim and convert to uppercase",
          () => expect(" eng ".toUpperCaseIsoCode(), alphaRegularCodes.first),
        );

        performanceTest(
          "should not make any changes",
          () => expect(
            alphaRegularCodes.first.toUpperCaseIsoCode(),
            alphaRegularCodes.first,
          ),
        );
      });

      group("isIsoAlphaRegularCode", () {
        test("should return true for valid ISO codes", () {
          for (final code in alphaRegularCodes) {
            expect(code.isIsoAlphaRegularCode, isTrue);
          }
        });

        test("should return false for invalid ISO codes", () {
          for (final code in [
            ...alphaShortCodes,
            ...numericCodes,
            ...invalidCodes,
          ]) {
            expect(code.isIsoAlphaRegularCode, isFalse);
          }
        });
      });

      group("maybeMapIsoCode", () {
        const orElse = "orElse";
        test(
          "should call short function when code length is equal to 2",
          () {
            for (final code in alphaShortCodes) {
              var result = code.maybeMapIsoCode(
                orElse: (_) => orElse,
                numeric: (_) => "numeric",
                regular: (_) => "regular",
                short: (_) => "short",
              );
              expect(result, "short");

              result = code.maybeMapIsoCode(
                orElse: (_) => orElse,
                numeric: (_) => "numeric",
                regular: (_) => "regular",
              );
              expect(result, orElse);
            }
          },
        );

        test(
          "should call numeric function when code is numeric",
          () {
            for (final code in numericCodes) {
              var result = code.maybeMapIsoCode(
                orElse: (_) => orElse,
                numeric: (_) => "numeric",
                regular: (_) => "regular",
                short: (_) => "short",
              );
              expect(result, "numeric");

              result = code.maybeMapIsoCode(
                orElse: (_) => orElse,
                regular: (_) => "regular",
                short: (_) => "short",
              );
              expect(result, orElse);
            }
          },
        );

        test(
          "should call regular function if code length is 3 and is not numeric",
          () {
            for (final code in alphaRegularCodes) {
              var result = code.maybeMapIsoCode(
                orElse: (_) => orElse,
                numeric: (_) => "numeric",
                regular: (_) => "regular",
                short: (_) => "short",
              );
              expect(result, "regular");

              result = code.maybeMapIsoCode(
                orElse: (_) => orElse,
                numeric: (_) => "numeric",
                short: (_) => "short",
              );
              expect(result, orElse);
            }
          },
        );

        test(
          "should call orElse function when code is not ISO code",
          () {
            for (final code in invalidCodes) {
              final result = code.maybeMapIsoCode(
                orElse: (_) => orElse,
                numeric: (_) => "numeric",
                regular: (_) => "regular",
                short: (_) => "short",
              );
              expect(result, orElse);
            }
          },
        );
      });
    });
