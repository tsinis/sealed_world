import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/extensions/pickers/basic_picker_flags_extension.dart";
import "package:world_flags/world_flags.dart";

void main() => group("adaptFlags locale country adaptation (EUR zone)", () {
  // These tests verify that adaptFlags correctly adapts flags based on
  // the locale country. Both language and currency flags go through the
  // same adaptFlags method but with different `this` maps:
  //
  // - smallSimplifiedLanguageFlagsMap: only constructed languages
  //   (Esperanto, Ido, etc.) have pre-existing entries.
  // - smallSimplifiedCurrencyFlagsMap: EUR has a pre-existing entry
  //   (the generic EU flag).
  //
  // The locale country's flag should take precedence over pre-existing
  // map entries when the locale country uses the given language/currency.
  const euro = FiatEur();
  const deuLang = LangDeu();
  const eurFlag = BasicFlag(flagEurProperties);

  // Shared country lists for German-speaking and EUR-using countries.
  const deuSpeakingCountries = [CountryDeu(), CountryAut(), CountryChe()];
  const eurUsingCountries = <WorldCountry>[.deu(), .fra(), .aut(), .est()];

  group("Austria (has German, has EUR)", () {
    const austria = CountryAut();
    final austrianFlag = smallSimplifiedFlagsMap[austria];

    test("should show Austrian flag for German language", () {
      final result = smallSimplifiedLanguageFlagsMap.adaptFlags(
        {deuLang: deuSpeakingCountries}, // Dart 3.8 formatting.
        localeCountry: austria,
      );

      expect(
        result.containsKey(deuLang),
        isTrue,
        reason: "German should have a flag entry after adaptation",
      );
      expect(
        result[deuLang],
        isA<BasicFlag>(),
        reason: "German flag should be a BasicFlag instance",
      );
      expect(
        result[deuLang],
        equals(austrianFlag),
        reason: "German flag should be Austria's flag, not any other country",
      );
      expect(
        result[deuLang],
        isNot(equals(smallSimplifiedFlagsMap[const CountryDeu()])),
        reason: "German flag should be Austrian, not the German country flag",
      );
    });

    test("should show Austrian flag for EUR currency", () {
      final result = smallSimplifiedCurrencyFlagsMap.adaptFlags(
        {euro: eurUsingCountries}, // Dart 3.8 formatting.
        localeCountry: austria,
      );

      expect(
        result.containsKey(euro),
        isTrue,
        reason: "EUR should have a flag entry after adaptation",
      );
      expect(
        result[euro],
        isA<BasicFlag>(),
        reason: "EUR flag should be a BasicFlag instance",
      );
      expect(
        result[euro],
        equals(austrianFlag),
        reason: "EUR flag should be Austria's flag when locale is Austria",
      );
      expect(
        result[euro],
        isNot(equals(eurFlag)),
        reason:
            "EUR flag should NOT be the generic EU flag when Austria is "
            "the locale country, the locale country should take "
            "precedence over a pre-existing map entry",
      );
    });
  });

  group("Germany (has German, has EUR)", () {
    const germanyCountry = CountryDeu();
    final germanyFlag = smallSimplifiedFlagsMap[germanyCountry];

    test("should show German flag for German language", () {
      final result = smallSimplifiedLanguageFlagsMap.adaptFlags(
        {deuLang: deuSpeakingCountries}, // Dart 3.8 formatting.
        localeCountry: germanyCountry,
      );

      expect(
        result.containsKey(deuLang),
        isTrue,
        reason: "German should have a flag entry after adaptation",
      );
      expect(
        result[deuLang],
        equals(germanyFlag),
        reason: "German flag should be Germany's flag when locale is Germany",
      );
      expect(
        result[deuLang],
        isNot(equals(smallSimplifiedFlagsMap[const CountryAut()])),
        reason: "German flag should be German, not the Austrian country flag",
      );
    });

    test("should show German flag for EUR currency", () {
      final result = smallSimplifiedCurrencyFlagsMap.adaptFlags(
        {euro: eurUsingCountries}, // Dart 3.8 formatting.
        localeCountry: germanyCountry,
      );

      expect(
        result.containsKey(euro),
        isTrue,
        reason: "EUR should have a flag entry after adaptation",
      );
      expect(
        result[euro],
        equals(germanyFlag),
        reason: "EUR flag should be Germany's flag when locale is Germany",
      );
      expect(
        result[euro],
        isNot(equals(eurFlag)),
        reason:
            "EUR flag should NOT be the generic EU flag when Germany "
            "is the locale country",
      );
    });
  });

  group("Czech Republic (no German, no EUR)", () {
    const czechia = CountryCze();

    test("should NOT show Czech flag for German language", () {
      final result = smallSimplifiedLanguageFlagsMap.adaptFlags(
        {deuLang: deuSpeakingCountries}, // Dart 3.8 formatting.
        localeCountry: czechia,
      );

      expect(
        result.containsKey(deuLang),
        isTrue,
        reason: "German should still get a flag (first country fallback)",
      );
      expect(
        result[deuLang],
        isNot(equals(smallSimplifiedFlagsMap[czechia])),
        reason:
            "German flag must not be Czech because Czechia does not "
            "speak German",
      );
      expect(
        result[deuLang],
        equals(smallSimplifiedFlagsMap[const CountryDeu()]),
        reason:
            "German flag should fall back to first country in list "
            "(Germany) since locale country does not speak German",
      );
    });

    test("should NOT show Czech flag for EUR currency", () {
      final result = smallSimplifiedCurrencyFlagsMap.adaptFlags(
        {euro: eurUsingCountries}, // Dart 3.8 formatting.
        localeCountry: czechia,
      );

      expect(
        result.containsKey(euro),
        isTrue,
        reason: "EUR should still have a flag entry",
      );
      expect(
        result[euro],
        isNot(equals(smallSimplifiedFlagsMap[czechia])),
        reason:
            "EUR flag must not be Czech because Czechia does not "
            "use EUR",
      );
      expect(result[euro]?.properties, isNotNull);
      expect(
        result[euro]?.properties,
        equals(eurFlag.properties),
        reason:
            "EUR flag should remain the generic EU flag because "
            "Czechia does not use EUR, so the pre-existing map "
            "entry is the correct fallback",
      );
    });
  });

  group("Estonia (no German, has EUR)", () {
    const estonia = CountryEst();
    final estonianFlag = smallSimplifiedFlagsMap[estonia];

    test("should NOT show Estonian flag for German language", () {
      final result = smallSimplifiedLanguageFlagsMap.adaptFlags(
        {deuLang: deuSpeakingCountries}, // Dart 3.8 formatting.
        localeCountry: estonia,
      );

      expect(
        result.containsKey(deuLang),
        isTrue,
        reason: "German should still get a flag (first country fallback)",
      );
      expect(
        result[deuLang],
        isNot(equals(estonianFlag)),
        reason:
            "German flag must not be Estonian because Estonia does "
            "not speak German",
      );
      expect(
        result[deuLang],
        equals(smallSimplifiedFlagsMap[const CountryDeu()]),
        reason:
            "German flag should fall back to first country in list "
            "(Germany) since locale country does not speak German",
      );
    });

    test("should show Estonian flag for EUR currency", () {
      final result = smallSimplifiedCurrencyFlagsMap.adaptFlags(
        {euro: eurUsingCountries}, // Dart 3.8 formatting.
        localeCountry: estonia,
      );

      expect(
        result.containsKey(euro),
        isTrue,
        reason: "EUR should have a flag entry after adaptation",
      );
      expect(
        result[euro],
        equals(estonianFlag),
        reason:
            "EUR flag should be Estonia's flag when locale is Estonia "
            "and Estonia uses EUR",
      );
      expect(
        result[euro],
        isNot(equals(eurFlag)),
        reason:
            "EUR flag should NOT be the generic EU flag when Estonia "
            "is the locale country and uses EUR",
      );
      expect(
        result[euro],
        isNot(equals(smallSimplifiedFlagsMap[const CountryDeu()])),
        reason: "EUR flag should be Estonian, not the German country flag",
      );
    });
  });
});
