import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_flags/world_flags.dart";

import "../../helpers/extensions/widget_tester_extension.dart";
import "../../helpers/flag_type.dart";

void main() => group("$CountryFlag", () {
      setUpAll(() => flagAntiAliasOverride = true);

      testWidgets('custom constructor', (tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: CountryFlag.custom(CountryDeu(), {}, orElse: FlutterLogo()),
          ),
        );

        expect(find.byType(FlutterLogo), findsOneWidget);
      });

      group('Full', () {
        for (final country in fullFlags) {
          testWidgets(
            '${country.internationalName} Flag',
            (tester) => tester.flagGolden(country, FlagType.full),
          );
        }
      });

      group("Simplified", () {
        for (final country in WorldCountry.list) {
          testWidgets(
            "${country.internationalName} Flag",
            (tester) async => tester.flagGolden(country, FlagType.simplified),
          );
        }
      });

      group("Decorated", () {
        for (final country in WorldCountry.list) {
          testWidgets(
            "${country.internationalName} Flag",
            (tester) async => tester.flagGolden(country, FlagType.decorated),
          );
        }
      });
    });
