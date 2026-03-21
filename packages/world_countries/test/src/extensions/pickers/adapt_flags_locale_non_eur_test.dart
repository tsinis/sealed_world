import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/extensions/pickers/basic_picker_flags_extension.dart";
import "package:world_flags/world_flags.dart";

void main() => group("adaptFlags locale country adaptation (non-EUR)", () {
  // These tests cover locale adaptation for currencies and languages
  // that are NOT in the EUR zone. Unlike EUR, none of these currencies
  // have a pre-existing entry in smallSimplifiedCurrencyFlagsMap, so
  // the adaptation always goes through the locale country check or the
  // first-country fallback path.
  group("USA (has English, has USD shared with other countries)", () {
    const usa = CountryUsa();
    const usd = FiatUsd();
    const eng = LangEng();
    const usaFlag = BasicFlag(
      flagUsaProperties,
      elementsBuilder: UsaStarsPainter.new,
    );

    // USD is used by many countries besides the USA.
    const countriesUsingUsd = [usa, CountryEcu(), CountrySlv(), CountryTls()];

    // English is spoken in many countries.
    const countriesSpeakingEng = <WorldCountry>[.gbr(), usa, .aus(), .can()];

    test("should show US flag for English language", () {
      final result = smallSimplifiedLanguageFlagsMap.adaptFlags(
        {eng: countriesSpeakingEng}, // Dart 3.8 formatting.
        localeCountry: usa,
      );

      expect(
        result.containsKey(eng),
        isTrue,
        reason: "English should have a flag entry after adaptation",
      );
      expect(result[eng], isNotNull, reason: "English flag should not be null");
      expect(
        result[eng]?.properties,
        equals(usaFlag.properties),
        reason:
            "English flag should be USA's flag when locale is USA, "
            "even though UK is first in the countries list",
      );
      expect(
        result[eng],
        isNot(equals(smallSimplifiedFlagsMap[const CountryGbr()])),
        reason:
            "English flag should be American, not British, because "
            "locale country takes precedence over list order",
      );
    });

    test("should show US flag for USD currency", () {
      // USD has NO pre-existing entry in smallSimplifiedCurrencyFlagsMap
      // (unlike EUR), so this tests the locale country path without a
      // competing custom flag.
      final result = smallSimplifiedCurrencyFlagsMap.adaptFlags(
        {usd: countriesUsingUsd}, // Dart 3.8 formatting.
        localeCountry: usa,
      );

      expect(
        result.containsKey(usd),
        isTrue,
        reason: "USD should have a flag entry after adaptation",
      );
      expect(result[usd], isNotNull, reason: "USD flag should not be null");
      expect(
        result[usd]?.properties,
        equals(usaFlag.properties),
        reason: "USD flag should be USA's flag when locale is USA",
      );
      expect(
        result[usd]?.properties,
        isNot(equals(smallSimplifiedFlagsMap[const CountryEcu()]?.properties)),
        reason:
            "USD flag should be American, not Ecuadorian, because "
            "locale country takes precedence over other USD users",
      );
      expect(
        smallSimplifiedCurrencyFlagsMap.containsKey(usd),
        isFalse,
        reason:
            "USD has no pre-existing entry in the currency flags "
            "map, unlike EUR, so the flag comes purely from locale "
            "country matching",
      );
    });
  });

  group("Russia (has Russian, has RUB)", () {
    const russia = CountryRus();
    const russianLang = LangRus();
    const ruble = FiatRub();
    const russianFlag = BasicFlag(flagRusProperties);

    // Russian is spoken in both Russia and Belarus.
    const countriesSpeakingRussian = <WorldCountry>[russia, .blr()];

    // RUB is used only by Russia.
    const countriesUsingRuble = [russia];

    test("should show Russian flag for Russian language", () {
      final result = smallSimplifiedLanguageFlagsMap.adaptFlags(
        {russianLang: countriesSpeakingRussian}, // Dart 3.8 formatting.
        localeCountry: russia,
      );

      expect(
        result.containsKey(russianLang),
        isTrue,
        reason: "Russian should have a flag entry after adaptation",
      );
      expect(
        result[russianLang],
        isNotNull,
        reason: "Russian flag should not be null",
      );
      expect(
        result[russianLang]?.properties,
        equals(russianFlag.properties),
        reason:
            "Russian flag should be Russia's flag when locale is "
            "Russia",
      );
      expect(
        result[russianLang]?.properties,
        isNot(equals(smallSimplifiedFlagsMap[const CountryBlr()]?.properties)),
        reason:
            "Russian flag should be Russian, not Belarusian, when "
            "locale is Russia",
      );
    });

    test("should show Russian flag for RUB currency", () {
      final result = smallSimplifiedCurrencyFlagsMap.adaptFlags(
        {ruble: countriesUsingRuble}, // Dart 3.8 formatting.
        localeCountry: russia,
      );

      expect(
        result.containsKey(ruble),
        isTrue,
        reason: "RUB should have a flag entry after adaptation",
      );
      expect(result[ruble], isNotNull, reason: "RUB flag should not be null");
      expect(
        result[ruble]?.properties,
        equals(russianFlag.properties),
        reason: "RUB flag should be Russia's flag when locale is Russia",
      );
    });
  });

  group("Belarus (has Russian + Belarusian, has BYN)", () {
    const belarus = CountryBlr();
    const russianLang = LangRus();
    const belarusianLang = LangBel();
    const belarusianRuble = FiatByn();
    const belarusFlag = BasicFlag(
      flagBlrProperties,
      elementsBuilder: BlrPainter.new,
    );

    // Russian is spoken in both Russia and Belarus.
    const countriesSpeakingRussian = [CountryRus(), belarus];

    // Belarusian is spoken only in Belarus.
    const countriesSpeakingBelarus = [belarus];

    // BYN is used only by Belarus.
    const countriesUsingByns = [belarus];

    test("should show Belarusian flag for Russian language", () {
      // Belarus also speaks Russian. When locale is Belarus, the
      // Belarusian flag should show for Russian language, not the
      // Russian flag, because locale country takes precedence.
      final result = smallSimplifiedLanguageFlagsMap.adaptFlags(
        {russianLang: countriesSpeakingRussian}, // Dart 3.8 formatting.
        localeCountry: belarus,
      );

      expect(
        result.containsKey(russianLang),
        isTrue,
        reason: "Russian should have a flag entry after adaptation",
      );
      expect(
        result[russianLang]?.properties,
        equals(belarusFlag.properties),
        reason:
            "Russian flag should be Belarus's flag when locale is "
            "Belarus, because Belarus also speaks Russian",
      );
      expect(
        result[russianLang]?.properties,
        isNot(equals(smallSimplifiedFlagsMap[const CountryRus()]?.properties)),
        reason:
            "Russian flag should be Belarusian, not Russian, when "
            "locale is Belarus",
      );
    });

    test("should show Belarusian flag for Belarusian language", () {
      final result = smallSimplifiedLanguageFlagsMap.adaptFlags(
        {belarusianLang: countriesSpeakingBelarus}, // Dart 3.8 formatting.
        localeCountry: belarus,
      );

      expect(
        result.containsKey(belarusianLang),
        isTrue,
        reason: "Belarusian should have a flag entry after adaptation",
      );
      expect(
        result[belarusianLang],
        isNotNull,
        reason: "Belarusian flag should not be null",
      );
      expect(
        result[belarusianLang]?.properties,
        equals(belarusFlag.properties),
        reason:
            "Belarusian flag should be Belarus's flag when locale "
            "is Belarus",
      );
    });

    test("should show Belarusian flag for BYN currency", () {
      final result = smallSimplifiedCurrencyFlagsMap.adaptFlags(
        {belarusianRuble: countriesUsingByns}, // Dart 3.8 formatting.
        localeCountry: belarus,
      );

      expect(
        result.containsKey(belarusianRuble),
        isTrue,
        reason: "BYN should have a flag entry after adaptation",
      );
      expect(
        result[belarusianRuble],
        isNotNull,
        reason: "BYN flag should not be null",
      );
      expect(
        result[belarusianRuble]?.properties,
        equals(belarusFlag.properties),
        reason:
            "BYN flag should be Belarus's flag when locale is "
            "Belarus",
      );
    });

    test("should NOT show Belarus flag for RU language when locale is rus", () {
      // Verify the reverse: when locale is Russia, Russian
      // language should NOT get the Belarusian flag.
      final result = smallSimplifiedLanguageFlagsMap.adaptFlags(
        {russianLang: countriesSpeakingRussian}, // Dart 3.8 formatting.
        localeCountry: const CountryRus(),
      );

      expect(
        result[russianLang]?.properties,
        isNot(equals(belarusFlag.properties)),
        reason:
            "Russian flag must not be Belarusian when locale is "
            "Russia",
      );
      expect(
        result[russianLang]?.properties,
        equals(smallSimplifiedFlagsMap[const CountryRus()]?.properties),
        reason: "Russian flag should be Russia's flag when locale is RUS",
      );
    });
  });
});
