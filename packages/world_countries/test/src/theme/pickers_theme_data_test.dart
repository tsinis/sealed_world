import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/models/iso/iso_maps.dart";
import "package:world_countries/src/theme/pickers_theme_data.dart";
import "package:world_flags/world_flags.dart";

import "../../helpers/widget_tester_extension.dart";

void main() => group("$PickersThemeData", () {
  // ignore: avoid-non-ascii-symbols, just a test.
  const maps = IsoMaps(countryTranslations: {CountryPrk(): "조선"});
  const original = WidgetTesterExtension.pickersTheme;

  test("copyWith", () {
    PickersThemeData copy = original.copyWith(maps: maps);

    expect(copy, isNot(WidgetTesterExtension.pickersTheme));
    expect(copy.maps, maps);
    copy = copy.copyWith(showHeader: false);
    expect(copy.showHeader, isFalse);
  });

  test("lerp", () => expect(original.lerp(original, 1), original));
});
