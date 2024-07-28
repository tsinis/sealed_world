import "package:flutter_test/flutter_test.dart";
import "package:world_flags/world_flags.dart";

import "../../helpers/extensions/widget_tester_extension.dart";
import "../../helpers/flag_type.dart";

void main() => group("$CountryFlag", () {
      setUpAll(() => flagAntiAliasOverride = true);

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
