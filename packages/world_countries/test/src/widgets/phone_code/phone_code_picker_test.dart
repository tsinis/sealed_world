import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/theme/tile_theme_data/country_tile_theme_data.dart";
import "package:world_countries/src/widgets/country/country_picker.dart";
import "package:world_countries/src/widgets/country/country_tile.dart";
import "package:world_countries/src/widgets/phone_code/phone_code_picker.dart";
import "package:world_flags/world_flags.dart";

import "../../../helpers/widget_tester_extension.dart";

void main() => group("$PhoneCodePicker", () {
      test("copyWith", () {
        const picker = PhoneCodePicker();
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
          const PhoneCodePicker(),
          (item) => item.namesNative.first.common,
        ),
      );

      testWidgets(
        "builder from theme",
        (tester) async => tester.testPickerBody(
          const PhoneCodePicker(),
          theme: CountryTileThemeData(
            builder: (properties, {isDense}) =>
                Text(properties.item.translations.first.common),
          ),
          (item) => item.translations.first.common,
        ),
      );

      testWidgets(
        "scroll from first to last item and without selection test",
        (tester) async => tester.testPickerBody(
          const PhoneCodePicker(),
          (item) => item.namesNative.first.name,
          testSelection: false,
        ),
      );

      testWidgets(
        "test behavior in dialog",
        (tester) async => tester.testPickerInDialog(
          const PhoneCodePicker(),
          (item) => item.namesNative.first.name,
        ),
      );

      testWidgets(
        "test behavior in search",
        (tester) async => tester.testPickerInSearch(
          const PhoneCodePicker(),
          (item) => item.namesNative.first.name,
        ),
      );

      testWidgets(
        "test behavior in modal bottom sheet",
        (tester) async => tester.testPickerInModal(
          const PhoneCodePicker(),
          (item) => item.namesNative.first.name,
        ),
      );

      testWidgets(
        "fromCountryPicker",
        (tester) async => tester.testPickerBody(
          PhoneCodePicker.fromCountryPicker(const CountryPicker()),
          (item) => item.namesNative.first.name,
        ),
      );

      testWidgets("searchSuggestions()", (tester) async {
        await tester.pumpMaterialApp(
          SearchAnchor.bar(
            suggestionsBuilder: const PhoneCodePicker().searchSuggestions,
          ),
        );
        final tile = find.byType(CountryTile);
        expect(tile, findsNothing);
        await tester.tapAndSettle(find.byIcon(Icons.search));
        expect(tile, findsWidgets);
        await tester.tapAndSettle(tile.first);
        expect(tile, findsNothing);
      });
    });
