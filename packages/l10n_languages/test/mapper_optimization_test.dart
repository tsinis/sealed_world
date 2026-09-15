@TestOn("vm")
library;

// Tree-shaking flags are read to skip locale-count assertions on shaked runs.
// ignore_for_file: do_not_use_environment

import "package:l10n_languages/l10n_languages.dart";
import "package:test/test.dart";

void main() {
  const hasDeFlag = bool.fromEnvironment("l10n-de");

  group("$LanguagesLocaleMapper optimizations", skip: hasDeFlag, () {
    group("availableLocales", () {
      test("is not materialized until it is read", () {
        const iterations = 20000;
        int sink = 0;

        for (int i = 0; i < 2000; i += 1) {
          sink += LanguagesLocaleMapper().availableLocales.length;
        }

        final constructOnly = Stopwatch()..start();
        for (int i = 0; i < iterations; i += 1) {
          sink += LanguagesLocaleMapper().map.length;
        }
        constructOnly.stop();

        final constructAndRead = Stopwatch()..start();
        for (int i = 0; i < iterations; i += 1) {
          sink += LanguagesLocaleMapper().availableLocales.length;
        }
        constructAndRead.stop();

        expect(sink, isPositive, reason: "guards against dead code removal");
        expect(
          constructAndRead.elapsedMicroseconds,
          greaterThan(constructOnly.elapsedMicroseconds * 5),
          reason:
              "Building the 157-locale set must happen on first read, not in "
              "the constructor, since every localize() call needs a new mapper",
        );
      });

      test("still reports all bundled locales", () {
        expect(LanguagesLocaleMapper().availableLocales.length, 157);
      });

      test("still reports injected locales", () {
        final custom = LanguagesLocaleMapper(
          other: {"custom": AfLanguagesL10N()},
        );

        expect(custom.availableLocales.length, 158);
        expect(custom.availableLocales, contains("custom"));
      });

      test("survives consumption of the mapper", () {
        final custom = LanguagesLocaleMapper(
          other: {"custom": AfLanguagesL10N()},
        )..localize(const {"ENG"}, mainLocale: "en");

        expect(
          custom.availableLocales,
          contains("custom"),
          reason: "localize() clears map, but must not erase injected locales",
        );
        expect(custom.availableLocales.length, 158);
      });
    });

    group("altSymbol", () {
      test("bundled translations contain no alternative names", () {
        final codes = AfLanguagesL10N().map.keys.toSet();
        final locales = LanguagesLocaleMapper().availableLocales;

        for (final locale in locales) {
          final withAlt = LanguagesLocaleMapper().localize(
            codes,
            mainLocale: locale,
          );
          final withoutAlt = LanguagesLocaleMapper().localize(
            codes,
            mainLocale: locale,
            altSymbol: "",
          );

          expect(
            withoutAlt,
            withAlt,
            reason:
                'Locale "$locale" ships no "<CODE>+" entries, so the default '
                "altSymbol only costs lookups and yields nothing",
          );
        }
      });
    });

    group("missing locale arguments", () {
      test("asserts when no locale and no injected translations are given", () {
        expect(
          () => LanguagesLocaleMapper().localize(const {"ENG"}),
          throwsA(isA<AssertionError>()),
          reason: "an unsatisfiable call should not silently return empty",
        );
      });

      test("still allows an empty set of ISO codes without a locale", () {
        expect(LanguagesLocaleMapper().localize(const {}), isEmpty);
      });

      test("uses injected translations when no locale is given", () {
        final custom = LanguagesLocaleMapper(
          other: {"custom": AfLanguagesL10N()},
        );

        expect(custom.localize(const {"ENG"}), isNotEmpty);
      });
    });
  });
}
