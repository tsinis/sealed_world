import "package:sealed_languages/sealed_languages.dart";
import "package:test/test.dart";

void main() => group("IsoStandardizedStringExtension", () {
      group("isIsoCode", () {
        test("should return true for valid ISO codes", () {
          expect("ENG".isIsoCode, isTrue);
          expect("Latn".isIsoCode, isTrue);
          expect("abc".isIsoCode, isTrue);
          expect("xyz".isIsoCode, isTrue);
          expect("AbC".isIsoCode, isTrue);
        });

        test("should return false for invalid ISO codes", () {
          expect("A".isIsoCode, isFalse);
          expect("AB".isIsoCode, isFalse);
          expect("123".isIsoCode, isFalse);
          expect("AB3".isIsoCode, isFalse);
          expect("abc123".isIsoCode, isFalse);
          expect("!@#".isIsoCode, isFalse);
        });
      });
    });
