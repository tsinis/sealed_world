// ignore_for_file: prefer-moving-to-variable, avoid_redundant_argument_values
import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:golden_toolkit/golden_toolkit.dart";
import "package:world_flags/world_flags.dart";

import "../flag_type.dart";

// ignore: avoid-top-level-members-in-tests, it's not a test, but extension.
extension GoldenWidgetTesterExtension on WidgetTester {
  Future<void> flagGolden(WorldCountry country, FlagType type) async {
    final height = type.height;
    final aspectRatio = country.flagProperties?.aspectRatio ?? 1;
    final width = type == FlagType.decorated ? height : height * aspectRatio;
    final file = "../../goldens/${type.name}/${country.code.toLowerCase()}.png";

    if (country.isAfg || country.isSau || country.isIrq || country.isVir) {
      await loadAppFonts();
    }

    await binding.setSurfaceSize(Size(width, height));
    await pumpWidget(
      MaterialApp(
        home: CountryFlag.simplified(country, child: type.child),
        theme: ThemeData(
          extensions: [FlagThemeData(decoration: type.decoration)],
        ),
      ),
    );

    return expectLater(find.byType(CountryFlag), matchesGoldenFile(file));
  }
}
