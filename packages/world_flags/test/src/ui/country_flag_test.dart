@TestOn("chrome")
library world_flags;

// ignore_for_file: unnecessary_async, missing-test-assertion, flagGolden method
import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_flags/world_flags.dart";

import "../../helpers/extensions/golden_widget_tester_extension.dart";
import "../../helpers/flag_type.dart";

void main() => group("$CountryFlag", () {
  const value = CountryDeu();
  const countryFlag = CountryFlag.custom(value, {}, orElse: FlutterLogo());

  setUpAll(() => flagAntiAliasOverride = true);

  test(
    "toStringShort",
    () => expect(countryFlag.toStringShort(), "$CountryFlag(${value.emoji})"),
  );

  test("debugFillProperties", () {
    final builder = DiagnosticPropertiesBuilder();
    expect(builder.properties.any((prop) => prop.name == "padding"), isFalse);

    countryFlag.debugFillProperties(builder);
    expect(builder.properties.any((prop) => prop.name == "padding"), isTrue);
  });

  testWidgets("custom constructor", (tester) async {
    await tester.pumpWidget(const MaterialApp(home: countryFlag));

    expect(find.byType(FlutterLogo), findsOneWidget);
  });

  group("Full", () {
    for (final country in fullFlags) {
      testWidgets(
        "${country.internationalName} Flag",
        (tester) async => tester.flagGolden(country, FlagType.full),
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
