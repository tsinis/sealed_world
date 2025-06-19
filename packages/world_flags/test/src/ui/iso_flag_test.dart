// ignore_for_file: unnecessary_async, missing-test-assertion, flagGolden method
import "package:_sealed_world_tests/sealed_world_tests.dart";
import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_flags/world_flags.dart";

import "../../helpers/extensions/golden_widget_tester_extension.dart";
import "../../helpers/flag_type.dart";

void main() => group("$IsoFlag", () {
  const value = CountryDeu();
  const map = <WorldCountry, BasicFlag>{};
  const flag = IsoFlag(value, map, orElse: FlutterLogo());

  setUpAll(() => flagAntiAliasOverride = true);

  test(
    "toStringShort",
    () => expect(flag.toStringShort(), "IsoFlag(${value.code})"),
  );

  assertTest("zero height", () => IsoFlag(value, map, height: 0));
  assertTest("zero width", () => IsoFlag(value, map, width: 0));
  assertTest("zero aspectRatio", () => IsoFlag(value, map, aspectRatio: 0));

  test("debugFillProperties", () {
    final builder = DiagnosticPropertiesBuilder();
    expect(builder.properties.any((prop) => prop.name == "padding"), isFalse);

    flag.debugFillProperties(builder);
    expect(builder.properties.any((prop) => prop.name == "padding"), isTrue);
  });

  group("Full", () {
    for (final iso in const <IsoTranslated>[
      ...fullFlags,
      FiatEur(),
      LangEpo(),
      LangIdo(),
    ]) {
      testWidgets(
        "${iso.internationalName} Flag",
        (tester) async => tester.flagGolden(iso, FlagType.full),
      );
    }
  });

  group("Simplified", () {
    for (final iso in <IsoTranslated>[
      ...fullFlags,
      const FiatEur(),
      ...smallSimplifiedLanguageFlagsMap.keys,
    ]) {
      testWidgets(
        "${iso.internationalName} Flag",
        (tester) async => tester.flagGolden(iso, FlagType.simplified),
      );
    }
  });
});
