// ignore_for_file: avoid-non-ascii-symbols

import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/extensions/map_iso_l10n_extension.dart";
import "package:world_countries/world_countries.dart";

void main() => group("MapIsoL10nExtension", () {
  test("sortAlphabetically orders Cyrillic values ascending", () {
    const translations = <WorldCountry, String>{
      .ven(): "Венецуела",
      .aut(): "Аустрија",
      .grc(): "Грчка",
      .bra(): "Бразил",
    };
    final sorted = translations.sortAlphabetically();
    expect(sorted.length, equals(translations.length));
    expect(sorted.values.first, equals("Аустрија"));
    expect(sorted.values.last, equals("Грчка"));
  });

  test("sortAlphabetically returns reverse order when requested", () {
    const translations = <WorldCountry, String>{
      .aut(): "Аустрија",
      .ven(): "Венецуела",
      .bra(): "Бразил",
      .grc(): "Грчка",
    };
    final sorted = translations.sortAlphabetically(reverse: true);
    expect(sorted.length, equals(translations.length));
    expect(sorted.values.first, equals("Грчка"));
    expect(sorted.values.last, equals("Аустрија"));
  });
});
