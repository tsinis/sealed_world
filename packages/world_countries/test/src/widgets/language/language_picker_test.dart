// ignore_for_file: missing-test-assertion
import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/widgets/language/language_picker.dart";

import "../../../helpers/widget_tester_extension.dart";

void main() => group("$LanguagePicker", () {
      test("copyWith", () {
        const picker = LanguagePicker();
        expect(picker.onSelect, isNull);
        final newPicker = picker.copyWith(onSelect: (item) => item.toString());
        newPicker.onSelect?.call(picker.items.first);
        expect(newPicker.onSelect, isNotNull);
        final newestPicker = newPicker.copyWith(onSelect: print);
        expect(newestPicker.onSelect, isNotNull);
        expect(newestPicker.copyWith(), isNot(newestPicker));
      });

      testWidgets(
        "scroll from first to last item and tap",
        (tester) async => tester.testPickerBody(
          const LanguagePicker(),
          (item) => item.namesNative.first,
        ),
      );

      testWidgets(
        "scroll from first to last item and without selection test",
        (tester) async => tester.testPickerBody(
          const LanguagePicker(),
          (item) => item.namesNative.first,
          testSelection: false,
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
