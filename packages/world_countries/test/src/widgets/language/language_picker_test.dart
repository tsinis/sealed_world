// ignore_for_file: missing-test-assertion
import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/widgets/language/language_picker.dart";

import "../../../helpers/widget_tester_extension.dart";

void main() => group("$LanguagePicker", () {
      testWidgets(
        "scroll from first to last item and tap",
        (tester) async => tester.testPickerBody(
          const LanguagePicker(),
          (item) => item.namesNative.first,
        ),
      );

      testWidgets(
        "test behavior in dialog",
        (tester) async => tester.testPickerInDialog(
          const LanguagePicker(),
          (item) => item.namesNative.first,
        ),
      );

      testWidgets(
        "test behavior in search",
        (tester) async => tester.testPickerInSearch(
          const LanguagePicker(),
          (item) => item.namesNative.first,
        ),
      );

      testWidgets(
        "test behavior in modal bottom sheet",
        (tester) async => tester.testPickerInModal(
          const LanguagePicker(),
          (item) => item.namesNative.first,
        ),
      );
    });
