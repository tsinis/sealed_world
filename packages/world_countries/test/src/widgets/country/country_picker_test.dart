// ignore_for_file: missing-test-assertion
import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/widgets/country/country_picker.dart";

import "../../../helpers/widget_tester_extension.dart";

void main() => group("$CountryPicker", () {
      testWidgets(
        "scroll from first to last item and tap",
        (tester) async => tester.testPickerBody(
          const CountryPicker(),
          (item) => item.namesNative.first.common,
        ),
      );

      testWidgets(
        "test behavior in dialog",
        (tester) async => tester.testPickerInDialog(
          const CountryPicker(),
          (item) => item.namesNative.first.common,
        ),
      );

      testWidgets(
        "test behavior in search",
        (tester) async => tester.testPickerInSearch(
          const CountryPicker(),
          (item) => item.namesNative.first.common,
        ),
      );

      testWidgets(
        "test behavior in modal bottom sheet",
        (tester) async => tester.testPickerInModal(
          const CountryPicker(),
          (item) => item.namesNative.first.common,
        ),
      );

      testWidgets(
        "showSearchBar: false",
        (tester) async => tester.testPickerBody(
          const CountryPicker(showSearchBar: false),
          (item) => item.namesNative.first.common,
        ),
      );
    });