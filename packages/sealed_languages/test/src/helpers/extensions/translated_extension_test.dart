// ignore_for_file: avoid-non-ascii-symbols

// ignore: deprecated_member_use_from_same_package, it's TODO!
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

      group("commonNameFor", () {
        test("returns translation for valid locale", () {
          final name = portuguese.commonNameFor(const BasicLocale(LangRus()));
          expect(name, "португальский");
        });

        test("returns orElse value when translation not found", () {
          final name = portuguese.commonNameFor(
            const BasicLocale(LangKal()),
            orElse: "Not Found",
          );
          expect(name, "Not Found");
        });

        test("returns empty string by default when translation not found", () {
          final name = portuguese.commonNameFor(
            const BasicLocale(LangKal()),
          );
          expect(name, isEmpty);
        });
      });

      group("maybeCommonNameFor", () {
        test("returns translation for valid locale", () {
          final name =
              portuguese.maybeCommonNameFor(const BasicLocale(LangRus()));
          expect(name, "португальский");
        });

        test("returns orElse value when translation not found", () {
          final name = portuguese.maybeCommonNameFor(
            const BasicLocale(LangKal()),
            orElse: "Not Found",
          );
          expect(name, "Not Found");
        });

        test("returns null by default when translation not found", () {
          final name = portuguese.maybeCommonNameFor(
            const BasicLocale(LangKal()),
          );
          expect(name, isNull);
        });
      });

      test("translation should always provide at least eng translation", () {
        const abkhazia = LangAbk();
        const nonExistCode = "000";
        int count = 0;
        for (final value in NaturalLanguage.list) {
          final maybeMissing = value.maybeTranslation(
            const BasicLocale(abkhazia, countryCode: nonExistCode),
            useLanguageFallback: false,
          );
          // ignore: avoid-continue, it's just a test.
          if (maybeMissing != null) continue;
          count += 1;
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
            if (hasTranslationForValue == null) {
              missing[l10n] = {...?missing[l10n], value};
            } else {
              map[l10n] = map[l10n]! + 1;
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

        expect(
          sortedLanguages,
          containsAll(kCupertinoSupportedLanguagesSealed),
        );

        for (final language in NaturalLanguage.list) {
          for (final l10n in kSealedLanguagesSupportedLanguages) {
            // ignore: avoid-continue, it's just a test.
            if (l10n == const LangEng()) continue;
            expect(
              language.translation(BasicLocale(l10n)),
              isNot(language.translation(const BasicLocale(LangEng()))),
            );
          }
        }
      });
    });
