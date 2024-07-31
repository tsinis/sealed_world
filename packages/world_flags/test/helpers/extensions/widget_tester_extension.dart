// ignore_for_file: prefer-moving-to-variable, avoid_redundant_argument_values
import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_flags/world_flags.dart";

import "../flag_type.dart";

extension GoldenWidgetTesterExtension on WidgetTester {
  Future<void> flagGolden(WorldCountry country, FlagType type) async {
    final height = type.height;
    final aspectRatio = flagPropertiesMap[country]?.aspectRatio ?? 1;
    final width = type == FlagType.decorated ? height : height * aspectRatio;
    final file = "../../goldens/${type.name}/${country.code.toLowerCase()}.png";

    await binding.setSurfaceSize(Size(width, height));
    await pumpWidget(
      MaterialApp(
        theme: ThemeData(
          extensions: [FlagThemeData(decoration: type.decoration)],
        ),
        home: CountryFlag.simplified(country, child: type.child),
      ),
    );

    return expectLater(find.byType(CountryFlag), matchesGoldenFile(file));
  }
}
