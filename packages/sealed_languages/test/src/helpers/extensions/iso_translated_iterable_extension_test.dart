// ignore_for_file: deprecated_member_use_from_same_package, it's TODO!

import "package:_sealed_world_tests/sealed_world_tests.dart";
import "package:sealed_languages/language_translations.dart";
import "package:sealed_languages/src/data/natural_languages.data.dart";
import "package:sealed_languages/src/helpers/extensions/iso_translated_iterable_extension.dart";
import "package:sealed_languages/src/model/core/basic_locale.dart";
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
    });
