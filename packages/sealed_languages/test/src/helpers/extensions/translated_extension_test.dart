import "package:sealed_languages/language_translations.dart";
import "package:sealed_languages/src/data/natural_languages.data.dart";
import "package:sealed_languages/src/data/scripts.data.dart";
import "package:sealed_languages/src/helpers/extensions/translated_extension.dart";
import "package:sealed_languages/src/model/language/language.dart";
import "package:test/test.dart";

void main() => group("TranslatedExtension", () {
      const kongo = LangKon();
      const bosnia = LangBos();
      const portuguese = LangPor();
      const countryCode = "PT";

      group("maybeTranslation", () {
        test(
          "should use useLanguageFallback when no country code is provided",
          () {
            expect(
              kongo.maybeTranslation(
                portuguese,
                countryCode: countryCode,
              ),
              isNotNull,
            );
            expect(
              kongo.maybeTranslation(
                portuguese,
                countryCode: "",
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
                bosnia,
                script: const ScriptCyrs(),
              ),
              isNotNull,
            );
            expect(
              kongo.maybeTranslation(
                bosnia,
                script: const ScriptCyrs(),
                useLanguageFallback: false,
              ),
              isNull,
            );
          },
        );

        test(
          "should provide different translations if country code is provided",
          () {
            final withoutCode = kongo.maybeTranslation(portuguese)?.name;
            final withCode = kongo
                .maybeTranslation(portuguese, countryCode: countryCode)
                ?.name;

            expect(withCode, isNotEmpty);
            expect(withoutCode, isNotEmpty);
            expect(withoutCode, isNot(withCode));
          },
        );

        test(
          "should provide different translations if script code is provided",
          () {
            final withoutCode = kongo.maybeTranslation(bosnia)?.name;
            final withCode = kongo
                .maybeTranslation(bosnia, script: const ScriptCyrl())
                ?.name;

            expect(withCode, isNotEmpty);
            expect(withoutCode, isNotEmpty);
            expect(withoutCode, isNot(withCode));
          },
        );
      });

      test("translation should always provide at least eng translation", () {
        const abkhazia = LangAbk();
        const nonExistCode = "";
        var count = 0;
        for (final value in NaturalLanguage.list) {
          final maybeMissing = value.maybeTranslation(
            abkhazia,
            countryCode: nonExistCode,
            useLanguageFallback: false,
          );
          if (maybeMissing != null) continue;
          count++;
          expect(
            value.translation(abkhazia, countryCode: nonExistCode),
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
            final hasTranslationForValue = value.maybeTranslation(l10n);
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

        for (final language in NaturalLanguage.list) {
          for (final l10n in kSealedLanguagesSupportedLanguages) {
            if (l10n == const LangEng()) continue;
            expect(
              language.translation(l10n),
              isNot(language.translation(const LangEng())),
            );
          }
        }
      });
    });
