// ignore_for_file: missing-test-assertion
import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/widgets/currency/currency_picker.dart";
import "package:world_countries/src/widgets/currency/currency_tile.dart";

import "../../../helpers/widget_tester_extension.dart";

void main() => group("$CurrencyPicker", () {
      test("copyWith", () {
        const picker = CurrencyPicker();
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
          const CurrencyPicker(),
          (item) => item.namesNative.first,
        ),
      );

      testWidgets(
        "scroll from first to last item and without selection test",
        (tester) async => tester.testPickerBody(
          const CurrencyPicker(),
          (item) => item.namesNative.first,
          testSelection: false,
        ),
      );

      testWidgets(
        "test behavior in dialog",
        (tester) async => tester.testPickerInDialog(
          const CurrencyPicker(),
          (item) => item.namesNative.first,
        ),
      );

      testWidgets(
        "test behavior in search",
        (tester) async => tester.testPickerInSearch(
          const CurrencyPicker(),
          (item) => item.namesNative.first,
        ),
      );

      testWidgets(
        "test behavior in modal bottom sheet",
        (tester) async => tester.testPickerInModal(
          const CurrencyPicker(),
          (item) => item.namesNative.first,
        ),
      );

      testWidgets("searchSuggestions()", (tester) async {
        await tester.pumpMaterialApp(
          SearchAnchor.bar(
            suggestionsBuilder: const CurrencyPicker().searchSuggestions,
          ),
        );
        final tile = find.byType(CurrencyTile);
        expect(tile, findsNothing);
        await tester.tapAndSettle(find.byIcon(Icons.search));
        expect(tile, findsWidgets);
        await tester.tapAndSettle(tile.first);
        expect(tile, findsNothing);
      });
    });
