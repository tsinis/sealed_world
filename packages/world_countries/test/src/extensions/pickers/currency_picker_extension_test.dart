import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/extensions/pickers/currency_picker_extension.dart";
import "package:world_countries/src/widgets/currency/currency_picker.dart";
import "package:world_flags/world_flags.dart";

void main() => group("CurrencyPickerExtension", () {
  const picker = CurrencyPicker();

  test("currencies", () {
    expect(picker.currencies, isNotEmpty);
    expect(picker.currencies, everyElement(isA<FiatCurrency>()));
  });
});
