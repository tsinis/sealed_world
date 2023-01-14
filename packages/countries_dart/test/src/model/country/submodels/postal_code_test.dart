import "package:countries_dart/src/model/country/submodels/postal_code.dart";
import "package:test/test.dart";

void main() => group("$PostalCode", () {
      const postalCode = PostalCode();
      test(
        "validator",
        () => expect(postalCode.validator(), RegExp(postalCode.regExpPattern)),
      );

      test(
        "toString",
        () => expect(
          postalCode.toString(),
          """$PostalCode(format: ${postalCode.format}, regExpPattern: ${postalCode.regExpPattern})""",
        ),
      );
    });
