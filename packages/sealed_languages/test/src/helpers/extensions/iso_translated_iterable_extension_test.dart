// ignore_for_file: deprecated_member_use_from_same_package, it's TODO!

import "package:_sealed_world_tests/sealed_world_tests.dart";
import "package:sealed_languages/language_translations.dart";
import "package:sealed_languages/src/data/natural_languages.data.dart";
import "package:sealed_languages/src/helpers/extensions/iso_translated_iterable_extension.dart";
import "package:sealed_languages/src/model/core/basic_locale.dart";
import "package:sealed_languages/src/model/core/locale_mapping_options.dart";
import "package:sealed_languages/src/model/language/language.dart";
import "package:test/test.dart";

void main() => group("IsoTranslatedIterableExtension", () {
      group("commonNamesCacheMap", () {
        performanceTest(
          "languages in supported list should have all translations",
          () {
            for (final language in kSealedLanguagesSupportedLanguages) {
              final cache = NaturalLanguage.list.commonNamesCacheMap(
                BasicLocale(language, script: language.scripts.first),
              );
              expect(cache.length, NaturalLanguage.list.length);
            }
          },
        );

        performanceTest(
          "some languages should have at least 1 translation, of it's own name",
          () {
            final cache = NaturalLanguage.list
                .commonNamesCacheMap(const BasicLocale(LangKal()));
            expect(cache.length, 1);
          },
        );
      });

      group("commonNamesMap", () {
        performanceTest("on empty list should return empty map", () {
          final map = <NaturalLanguage>{}.commonNamesMap(
            options: const LocaleMappingOptions(),
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
