// ignore_for_file: avoid-non-ascii-symbols

import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/extensions/map_iso_l10n_extension.dart";
import "package:world_countries/world_countries.dart";

Comparator<MapEntry<WorldCountry, String>> _diacriticsAwareSorter(
  BasicTypedLocale _,
) => (first, second) {
  // Simple simulation: treat Č as "Cz" for sorting.
  final aVal = first.value.replaceAll("Č", "Cz");
  final bVal = second.value.replaceAll("Č", "Cz");

  return aVal.compareTo(bVal);
};

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

  group("sortAlphabetically with custom compare", () {
    const locale = TypedLocale(LangEng());

    test("uses custom comparator factory with locale when both provided", () {
      const translations = <WorldCountry, String>{
        .usa(): "United States",
        .gbr(): "UK",
        .deu(): "Germany",
        .fra(): "France",
      };
      // Sort by translation length (shortest first).
      final sorted = translations.sortAlphabetically(
        locale: locale,
        compare: (_) =>
            (a, b) => a.value.length.compareTo(b.value.length),
      );
      expect(sorted.values.first, equals("UK")); // Length 2.
      expect(sorted.values.last, equals("United States")); // Length 13.
    });

    test("falls back to default sorting when locale is null", () {
      const translations = <WorldCountry, String>{
        .usa(): "United States",
        .gbr(): "UK",
        .deu(): "Germany",
      };
      // Compare provided but locale is null, should use default sorting.
      final sorted = translations.sortAlphabetically(
        compare: (_) =>
            (a, b) => a.value.length.compareTo(b.value.length),
      );
      // Default alphabetical sorting, not by length.
      expect(sorted.values.first, equals("Germany"));
      expect(sorted.values.last, equals("United States"));
    });

    test("falls back to default sorting when compare is null", () {
      const translations = <WorldCountry, String>{
        .usa(): "United States",
        .gbr(): "UK",
        .deu(): "Germany",
      };
      // Locale provided but compare is null, should use default sorting.
      final sorted = translations.sortAlphabetically(locale: locale);
      expect(sorted.values.first, equals("Germany"));
      expect(sorted.values.last, equals("United States"));
    });

    test("locale is passed to factory once", () {
      const translations = <WorldCountry, String>{
        .usa(): "United States",
        .gbr(): "UK",
      };
      final capturedLocales = <BasicTypedLocale>[];
      final sorted = translations.sortAlphabetically(
        locale: locale,
        // ignore: prefer-extracting-function-callbacks, just a test.
        compare: (loc) {
          capturedLocales.add(loc);

          return (a, b) => a.value.compareTo(b.value);
        },
      );
      expect(sorted, isNotEmpty);
      // Factory is called only once, not on every comparison.
      expect(capturedLocales.length, equals(1));
      expect(capturedLocales.first, equals(locale));
      expect(capturedLocales.first.language, equals(const LangEng()));
    });

    test("can sort by ISO key using locale information", () {
      const translations = <WorldCountry, String>{
        .zwe(): "Zimbabwe",
        .afg(): "Afghanistan",
        .mex(): "Mexico",
      };
      // Sort by country code (key) instead of translation (value).
      final sorted = translations.sortAlphabetically(
        locale: locale,
        compare: (_) =>
            (a, b) => a.key.codeShort.compareTo(b.key.codeShort),
      );
      final codes = sorted.keys.map((country) => country.codeShort).toList();
      expect(codes, ["AF", "MX", "ZW"]);
    });

    test("handles diacritics with custom comparator", () {
      const translations = <WorldCountry, String>{
        .cze(): "Česko",
        .aut(): "Austria",
        .bel(): "Belgium",
        .dnk(): "Denmark",
      };
      // Default sorting puts "Austria" before "Česko" (Unicode code-point).
      final defaultSorted = translations.sortAlphabetically();
      expect(defaultSorted.values.first, equals("Austria"));

      // Custom comparator can handle diacritics differently.
      // This simulates locale-aware sorting where Č follows C.
      final customSorted = translations.sortAlphabetically(
        locale: locale,
        compare: _diacriticsAwareSorter,
      );
      expect(customSorted.values.toList(), [
        "Austria",
        "Belgium",
        "Česko", // Now after Belgium due to "Cz" comparison.
        "Denmark",
      ]);
    });
  });
});
