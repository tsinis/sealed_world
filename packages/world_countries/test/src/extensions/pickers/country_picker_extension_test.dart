import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/extensions/pickers/country_picker_extension.dart";
import "package:world_countries/src/widgets/country/country_picker.dart";

void main() => group("CountryPickerExtension", () {
  const picker = CountryPicker();

  test("countries", () => expect(picker.countries, isNotEmpty));
});
