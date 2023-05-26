// ignore_for_file: missing-test-assertion
import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:sealed_countries/sealed_countries.dart";
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
        "showSearchBar: false and without selection test",
        (tester) async => tester.testPickerBody(
          CountryPicker(
            searchIn: (_) => const [],
            showClearButton: false,
            showSearchBar: false,
          ),
          (item) => item.namesNative.first.common,
          testSelection: false,
        ),
      );

      testWidgets("in $WidgetsApp with sorted countries", (tester) async {
        final countries = List.of(WorldCountry.list)
          ..sort((a, b) => a.population.compareTo(b.population));
        await tester.pumpWidgetsApp(
          CountryPicker(
            countries: countries,
            chosen: [countries.last],
            disabled: [countries.first],
            showSearchBar: false,
          ),
        );
        expect(find.byType(CountryPicker), findsOneWidget);
      });

      testWidgets("in $WidgetsApp with empty countries", (tester) async {
        await tester.pumpWidgetsApp(
          const CountryPicker(
            countries: [],
            emptyStatePlaceholder: Placeholder(),
            showClearButton: false,
            showSearchBar: false,
          ),
        );
        expect(find.byType(CountryPicker), findsOneWidget);
        expect(find.byType(Placeholder), findsOneWidget);
      });
    });
