import "package:flutter/material.dart" show MaterialApp;
import "package:flutter/widgets.dart";
import "package:flutter_test/flutter_test.dart";
import "package:sealed_countries/sealed_countries.dart";
import "package:world_flags/src/model/colors_properties.dart";
import "package:world_flags/src/model/flag_properties.dart";
import "package:world_flags/src/ui/flags/basic_flag.dart";
import "package:world_flags/src/ui/flags/iso/currency_flag.dart";

import "../../../../helpers/extensions/golden_widget_tester_extension.dart";

void main() => group("$CurrencyFlag", () {
  testWidgets("renders single flag for currency with no secondary country", (
    tester,
  ) async {
    const flag = CurrencyFlag(FiatAfn());
    await tester.pumpWidget(const MaterialApp(home: flag));

    expect(find.byType(ClipPath), findsNothing);
  });

  testWidgets("renders dual flag by default for multi-country currency", (
    tester,
  ) async {
    const flag = CurrencyFlag(FiatEur());
    await tester.pumpWidget(const MaterialApp(home: flag));

    expect(find.byType(ClipPath), findsOneWidget);
  });

  testWidgets("renders dual flag with custom alternativeMap", (tester) async {
    const alternativeMap = <FiatCurrency, BasicFlag>{
      FiatUsd(): BasicFlag(
        FlagProperties([ColorsProperties(Color(0xFF0000FF))]),
      ),
    };
    const flag = CurrencyFlag(FiatUsd(), alternativeMap: alternativeMap);
    await tester.pumpWidget(const MaterialApp(home: flag));

    expect(find.byType(ClipPath), findsOneWidget);
  });

  testWidgets("passes clipBehavior through", (tester) async {
    const alternativeMap = <FiatCurrency, BasicFlag>{
      FiatUsd(): BasicFlag(
        FlagProperties([ColorsProperties(Color(0xFF0000FF))]),
      ),
    };
    const flag = CurrencyFlag(
      FiatUsd(),
      alternativeMap: alternativeMap,
      clipBehavior: .hardEdge,
    );

    await tester.pumpWidget(const MaterialApp(home: flag));

    final clipPath = tester.widget<ClipPath>(find.byType(ClipPath));
    expect(clipPath.clipBehavior, Clip.hardEdge);
  });

  test(
    "defaultConventionalCurrencyFlags length matches FiatCurrency.list one",
    () => expect(
      CurrencyFlag.defaultConventionalCurrencyFlags.length,
      FiatCurrency.list.length,
    ),
  );

  test(
    "defaultSecondaryCountryCurrencyFlags is not empty",
    () => expect(CurrencyFlag.defaultSecondaryCountryCurrencyFlags, isNotEmpty),
  );

  group("goldens", () {
    for (final iso in CurrencyFlag.defaultSecondaryCountryCurrencyFlags.keys) {
      // ignore: missing-test-assertion, flagGolden does the job.
      testWidgets(
        "${iso.internationalName} Flag",
        (tester) => tester.flagGolden(iso, .dual, widget: CurrencyFlag(iso)),
      );
    }
  });
});
