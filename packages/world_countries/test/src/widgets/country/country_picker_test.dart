import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/widgets/country/country_picker.dart";

void main() => group("$CountryPicker", () {
      test(
        "parameters",
        () => expect(const CountryPicker().countries.isEmpty, isFalse),
      );
    });
