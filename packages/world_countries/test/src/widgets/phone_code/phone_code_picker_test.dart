// ignore_for_file: missing-test-assertion
import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/widgets/country/country_picker.dart";
import "package:world_countries/src/widgets/phone_code/phone_code_picker.dart";

import "../../../helpers/widget_tester_extension.dart";

void main() => group("$PhoneCodePicker", () {
      testWidgets(
        "scroll from first to last item and tap",
        (tester) async => tester.testPickerBody(
          const PhoneCodePicker(),
          (item) => item.namesNative.first.common,
        ),
      );

      testWidgets(
        "scroll from first to last item and without selection test",
        (tester) async => tester.testPickerBody(
          const PhoneCodePicker(),
          (item) => item.namesNative.first.common,
          testSelection: false,
        ),
      );

      testWidgets(
        "test behavior in dialog",
        (tester) async => tester.testPickerInDialog(
          const PhoneCodePicker(),
          (item) => item.namesNative.first.common,
        ),
      );

      testWidgets(
        "test behavior in search",
        (tester) async => tester.testPickerInSearch(
          const PhoneCodePicker(),
          (item) => item.namesNative.first.common,
        ),
      );

      testWidgets(
        "test behavior in modal bottom sheet",
        (tester) async => tester.testPickerInModal(
          const PhoneCodePicker(),
          (item) => item.namesNative.first.common,
        ),
      );

      testWidgets(
        "fromCountryPicker",
        (tester) async => tester.testPickerBody(
          PhoneCodePicker.fromCountryPicker(const CountryPicker()),
          (item) => item.namesNative.first.common,
        ),
      );
    });
