import "package:sealed_languages/language_translations.dart";
import "package:sealed_languages/src/data/natural_languages.data.dart";
import "package:sealed_languages/src/data/scripts.data.dart";
import "package:sealed_languages/src/helpers/extensions/translated_extension.dart";
import "package:sealed_languages/src/model/core/basic_locale.dart";
import "package:sealed_languages/src/model/language/language.dart";
import "package:test/test.dart";

void main() => group("TranslatedExtension", () {
      const kongo = LangKon();
      const bosnia = LangBos();
      const portuguese = LangPor();
      const countryCode = "PT";

      group("maybeTranslation", () {
        test(
          "should return null on null locale",
          () => expect(kongo.maybeTranslation(null), isNull),
        );

        test(
          "should use useLanguageFallback when no country code is provided",
          () {
            expect(
              kongo.maybeTranslation(
                const BasicLocale(portuguese, countryCode: countryCode),
              ),
              isNotNull,
            );
            expect(
              kongo.maybeTranslation(
                const BasicLocale(portuguese, countryCode: "000"),
                useLanguageFallback: false,
              ),
              isNull,
            );
          },
        );

        test(
          "should use useLanguageFallback when no script code is provided",
          () {
            expect(
              kongo.maybeTranslation(
                const BasicLocale(bosnia, script: ScriptCyrs()),
              ),
              isNotNull,
            );
            expect(
              kongo.maybeTranslation(
                const BasicLocale(bosnia, script: ScriptCyrs()),
                useLanguageFallback: false,
              ),
              isNull,
            );
          },
        );

        test(
          "should provide different translations if country code is provided",
          () {
            final withoutCode =
                kongo.maybeTranslation(const BasicLocale(portuguese))?.name;
            final withCode = kongo
                .maybeTranslation(
                  const BasicLocale(portuguese, countryCode: countryCode),
                )
                ?.name;

            expect(withCode, isNotEmpty);
            expect(withoutCode, isNotEmpty);
            expect(withoutCode, isNot(withCode));
          },
        );

        test(
          "should provide different translations if script code is provided",
          () {
            final withoutCode =
                kongo.maybeTranslation(const BasicLocale(bosnia))?.name;
            final withCode = kongo
                .maybeTranslation(
                  const BasicLocale(bosnia, script: ScriptCyrl()),
                )
                ?.name;

            expect(withCode, isNotEmpty);
            expect(withoutCode, isNotEmpty);
            expect(withoutCode, isNot(withCode));
          },
        );
      });

      test("translation should always provide at least eng translation", () {
        const abkhazia = LangAbk();
        const nonExistCode = "000";
        var count = 0;
        for (final value in NaturalLanguage.list) {
          final maybeMissing = value.maybeTranslation(
            const BasicLocale(abkhazia, countryCode: nonExistCode),
            useLanguageFallback: false,
          );
          if (maybeMissing != null) continue;
          count++;
          expect(
            value.translation(
              const BasicLocale(abkhazia, countryCode: nonExistCode),
            ),
            isNotNull,
          );
        }
        expect(count, isPositive);
      });

      test("there should be always translations for specific languages", () {
        final map = {for (final language in NaturalLanguage.list) language: 0};
        final missing = <NaturalLanguage, Set<NaturalLanguage>>{};

        for (final value in NaturalLanguage.list) {
          for (final l10n in NaturalLanguage.list) {
            final hasTranslationForValue =
                value.maybeTranslation(BasicLocale(l10n));
            if (hasTranslationForValue != null) {
              map[l10n] = map[l10n]! + 1;
            } else {
              missing[l10n] = {...?missing[l10n], value};
            }
          }
        }

        final sortedList = map.entries.toList(growable: false)
          ..sort((a, b) => a.value.compareTo(b.value));
        final complete = sortedList
            .where((item) => item.value == NaturalLanguage.list.length);
        final sortedMap = Map.fromEntries(complete);
        final sortedLanguages = sortedMap.keys.toList(growable: false)
          ..sort((a, b) => a.code.compareTo(b.code));

        expect(sortedLanguages, kSealedLanguagesSupportedLanguages);

        expect(
          sortedLanguages,
          containsAll(kMaterialSupportedLanguagesSealed),
        );

        for (final language in NaturalLanguage.list) {
          for (final l10n in kSealedLanguagesSupportedLanguages) {
            if (l10n == const LangEng()) continue;
            expect(
              language.translation(BasicLocale(l10n)),
              isNot(language.translation(const BasicLocale(LangEng()))),
            );
          }
        }
      });
    });
