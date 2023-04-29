import "package:sealed_countries/src/helpers/extensions/country_submodels/postal_code_extension.dart";
import "package:sealed_countries/src/model/country/submodels/postal_code.dart";
import "package:test/test.dart";

void main() => group("PostalCodeExtension", () {
      test(
        "validator",
        () => expect(
          const PostalCode().validator(),
          RegExp(const PostalCode().regExpPattern),
        ),
      );
    });
