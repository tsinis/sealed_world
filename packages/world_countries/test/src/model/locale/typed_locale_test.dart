import "dart:convert";
import "dart:ui";

import "package:_sealed_world_tests/sealed_world_tests.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/extensions/models/typed_locale_extension.dart";
import "package:world_countries/src/model/iso/iso_maps.dart";
import "package:world_countries/src/model/locale/typed_locale.dart";
import "package:world_flags/world_flags.dart";

void main() => group("$TypedLocale", () {
  const english = LangEng();
  const string = "US";
  const locale = Locale("en", string);
  const value = TypedLocale(english, regionalCode: string);

  test("interfaces", () {
    expect(value, isA<BasicLocale>());
    expect(value, isA<Locale>());
    expect(value, isA<JsonEncodable>());
  });

  test("toLanguageTag", () {
    expect(value.toLanguageTag(), "en-US");
    expect(value.asLocale.toLanguageTag(), value.toLanguageTag());
  });

  group("toString", () {
    test("short: true", () => expect(value.toString(), "en_US"));

    test(
      "short: true, with regionalCode",
      () => expect(
        BasicTypedLocale(
          NaturalLanguage.list.first,
          script: Script.list.last,
          regionalCode: WorldCountry.list.last.codeShort,
        ).toString(),
        "aa_Zzzz_XK",
      ),
    );

    test(
      "short: false",
      () => expect(
        value.toString(short: false),
        'TypedLocale(LangEng(), countryCode: "US")',
      ),
    );
  });

  test(
    "fromSubtags",
    () => expect(
      TypedLocale.fromSubtags(
        language: english,
        country: const CountryUsa(),
        script: const ScriptLatn(),
      ).asLocale,
      const Locale.fromSubtags(
        languageCode: "en",
        countryCode: string,
        scriptCode: "Latn",
      ),
    ),
  );

  group("equality", () {
    test("should compare regular $Locale object with $TypedLocale", () {
      expect(value, locale);
      expect(
        TypedLocale.fromSubtags(language: english, regionalCode: string),
        locale,
      );
      expect(value, isNot(Locale(locale.languageCode)));
    });
  });

  group("withTranslationsCache constructor", () {
    assertTest(
      "should throw assert when no iterable specified",
      () => TypedLocale.withTranslationsCache(
        const LangEng(),
        // ignore_for_file: avoid-passing-default-values, false-positive.
        languages: null,
        currencies: null,
        countries: null,
      ),
    );

    test("should create translation cache for everything", () {
      final typedLocale = TypedLocale.withTranslationsCache(
        const LangEng(),
        regionalCode: "US",
      );
      expect(typedLocale, isA<TypedLocale>());
      expect(typedLocale.country, isNull);
      expect(typedLocale.countryCode, isNotEmpty);
      expect(typedLocale.languageTranslations, isNotEmpty);
      expect(typedLocale.currencyTranslations, isNotEmpty);
      expect(typedLocale.countryTranslations, isNotEmpty);
    });
  });

  test("toJson", () {
    final json = value.toJson();
    final decoded = BasicLocaleExtension.fromMap(
      // ignore: avoid-type-casts, it's a test.
      jsonDecode(json) as Map<String, Object?>,
    );

    expect(decoded.toString(), value.asBasicLocale.toString());
    expect(value.countryCode, decoded.countryCode);
    expect(value.language, decoded.language);
    expect(value.script, decoded.script);
  });

  group("copyWith", () {
    test("with non-null values", () {
      final copy = value.copyWith(
        language: NaturalLanguage.list.first,
        script: Script.list.last,
      );
      expect(copy.language, NaturalLanguage.list.first);
      expect(copy.country, isNull);
      expect(copy.countryCode, string);
      expect(copy.script, Script.list.last);
      expect(copy.language, isNot(value.language));
      expect(copy.script, isNot(value.script));
    });

    test("with null values", () {
      final copy = value.copyWith();
      expect(copy.language, value.language);
      expect(copy.country, value.country);
      expect(copy.script, value.script);
    });

    assertTest(
      "copyWith assert when provided both regionalCode and country",
      () => value.copyWith(
        country: WorldCountry.list.first,
        regionalCode: string,
      ),
    );
  });

  group("flags getters", () {
    test("currencyFlags should return maps.currencyFlags", () {
      final firstCountry = WorldCountry.list.first;
      final flag = smallSimplifiedFlagsMap[firstCountry]!;
      final flagMap = <FiatCurrency, BasicFlag>{FiatCurrency.list.first: flag};
      final flagLocale = TypedLocale(
        english,
        maps: IsoMaps(currencyFlags: flagMap),
      );

      expect(flagLocale.currencyFlags, flagMap);
      expect(flagLocale.currencyFlags, flagLocale.maps.currencyFlags);
    });

    test("languageFlags should return maps.languageFlags", () {
      final firstCountry = WorldCountry.list.first;
      final flag = smallSimplifiedFlagsMap[firstCountry]!;
      final flagMap = <NaturalLanguage, BasicFlag>{
        NaturalLanguage.list.first: flag,
      };
      final flagLocale = TypedLocale(
        english,
        maps: IsoMaps(languageFlags: flagMap),
      );

      expect(flagLocale.languageFlags, flagMap);
      expect(flagLocale.languageFlags, flagLocale.maps.languageFlags);
    });

    test(
      "currencyFlags should return empty map when not provided",
      () => expect(value.currencyFlags, isEmpty),
    );

    test(
      "languageFlags should return empty map when not provided",
      () => expect(value.languageFlags, isEmpty),
    );
  });
});
