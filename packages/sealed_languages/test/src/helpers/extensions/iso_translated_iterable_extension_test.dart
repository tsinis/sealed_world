import "package:_sealed_world_tests/sealed_world_tests.dart";
import "package:sealed_languages/src/helpers/extensions/iso_translated_iterable_extension.dart";
import "package:sealed_languages/src/model/core/basic_locale.dart";
import "package:sealed_languages/src/model/core/locale_mapping_options.dart";
import "package:sealed_languages/src/model/language/submodels/natural_language.dart";
import "package:test/test.dart";

void main() => group("IsoTranslatedIterableExtension", () {
  group("some languages should be fully translated", () {
    /// This is a comprehensive list of languages that ensure the availability
    /// of translations for every language in the natural language `list`.
    ///
    /// It is important to note that while other languages may not be included
    /// in this list, they may still have translations available for the most
    /// common languages, but there may be some missing translations for rarer
    /// languages. Every language contains more than 85 translations of it's
    /// name.
    ///
    /// Includes all the Material localizations in [kMaterialSupportedLanguages](https://api.flutter.dev/flutter/flutter_localizations/kMaterialSupportedLanguages.html)
    /// with a two letter code and much more (for example on top of that it also
    /// provides translations for the following languages):
    /// - Breton (BRE)
    /// - Irish (GLE)
    /// - Kashmiri (KAS)
    /// - Norwegian Nynorsk (NNO)
    /// - Romansh (ROH)
    /// - Tonga (TON)
    /// - Uyghur (UIG)
    /// That are not listed in Material one, and much more.
    const kSealedLanguagesSupportedLanguages = <NaturalLanguage>[
      LangAfr(),
      LangAmh(),
      LangAra(),
      LangAsm(),
      LangAze(),
      LangBel(),
      LangBen(),
      LangBos(),
      LangBre(),
      LangBul(),
      LangCat(),
      LangCes(),
      LangCym(),
      LangDan(),
      LangDeu(),
      LangEll(),
      LangEng(),
      LangEst(),
      LangEus(),
      LangFas(),
      LangFin(),
      LangFra(),
      LangGle(),
      LangGlg(),
      LangGuj(),
      LangHeb(),
      LangHin(),
      LangHrv(),
      LangHun(),
      LangHye(),
      LangInd(),
      LangIsl(),
      LangIta(),
      LangJpn(),
      LangKan(),
      LangKas(),
      LangKat(),
      LangKaz(),
      LangKhm(),
      LangKir(),
      LangKor(),
      LangLao(),
      LangLav(),
      LangLit(),
      LangMal(),
      LangMar(),
      LangMkd(),
      LangMon(),
      LangMsa(),
      LangMya(),
      LangNep(),
      LangNld(),
      LangNno(),
      LangNob(),
      LangNor(),
      LangOri(),
      LangPan(),
      LangPol(),
      LangPor(),
      LangPus(),
      LangRoh(),
      LangRon(),
      LangRus(),
      LangSin(),
      LangSlk(),
      LangSlv(),
      LangSpa(),
      LangSqi(),
      LangSrp(),
      LangSwa(),
      LangSwe(),
      LangTam(),
      LangTel(),
      LangTgl(),
      LangTha(),
      LangTon(),
      LangTur(),
      LangUig(),
      LangUkr(),
      LangUrd(),
      LangUzb(),
      LangVie(),
      LangZho(),
      LangZul(),
    ];

    final langs = <NaturalLanguage>{};

    for (final lang in kSealedLanguagesSupportedLanguages) {
      test("${lang.internationalName} should have all translations", () {
        final translation = NaturalLanguage.list.commonNamesMap(
          options: LocaleMappingOptions(mainLocale: BasicLocale(lang)),
        );
        if (translation.length == NaturalLanguage.list.length) langs.add(lang);
        expect(
          translation.length,
          greaterThanOrEqualTo(NaturalLanguage.list.length),
          reason:
              'Language "${lang.internationalName}" is expected to have '
              "full translations for all ${NaturalLanguage.list.length} langs.",
        );
      });
    }

    test(
      "should be equal",
      () => expect(langs, containsAll(kSealedLanguagesSupportedLanguages)),
    );
  });

  group("commonNamesMap", () {
    performanceTest("on empty list should return empty map", () {
      final map = <NaturalLanguage>{}.commonNamesMap(
        options: const LocaleMappingOptions<BasicLocale>(),
      );
      expect(map, isEmpty);
    });

    performanceTest("returns correct translations for non-empty list", () {
      const languages = {LangDeu(), LangEng()};

      final map = languages.commonNamesMap(
        options: const LocaleMappingOptions(
          mainLocale: BasicLocale(LangDeu()),
          fallbackLocale: BasicLocale(LangEng()),
        ),
      );

      expect(map.entries.last.value, "Englisch");
      expect(map.entries.first.value, "Deutsch");
      expect(map.length, languages.length);
    });

    performanceTest("uses fallback locale when main locale missing", () {
      const languages = {LangEng()};

      final map = languages.commonNamesMap(
        options: const LocaleMappingOptions(
          mainLocale: BasicLocale(LangKal()),
          fallbackLocale: BasicLocale(LangEng()),
        ),
      );

      expect(map.entries.single.value, "English");
    });
  });
});
