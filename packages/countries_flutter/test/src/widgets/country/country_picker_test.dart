import "package:countries_flutter/src/widgets/country/country_picker.dart";
import "package:flutter_test/flutter_test.dart";

void main() => group("$CountryPicker", () {
      test(
        "parameters",
        () => expect(const CountryPicker().countries.isEmpty, isFalse),
      );
    });
