@TestOn("vm")
library;

// Tree-shaking flags are read to skip locale-count assertions on shaked runs.
// ignore_for_file: do_not_use_environment

import "package:l10n_countries/l10n_countries.dart";
import "package:test/test.dart";

void main() {
  const hasDeFlag = bool.hasEnvironment("l10n-de");

  group("$CountriesLocaleMapper optimizations", skip: hasDeFlag, () {
    group("availableLocales", () {
      test("is not materialized until it is read", () {
        const iterations = 20000;
        int sink = 0;

        for (int i = 0; i < 2000; i += 1) {
          sink += CountriesLocaleMapper().availableLocales.length;
        }

        final constructOnly = Stopwatch()..start();
        for (int i = 0; i < iterations; i += 1) {
          sink += CountriesLocaleMapper().map.length;
        }
        constructOnly.stop();

        final constructAndRead = Stopwatch()..start();
        for (int i = 0; i < iterations; i += 1) {
          sink += CountriesLocaleMapper().availableLocales.length;
        }
        constructAndRead.stop();

        expect(sink, isPositive, reason: "guards against dead code removal");
        expect(
          constructAndRead.elapsedMicroseconds,
          greaterThan(constructOnly.elapsedMicroseconds * 5),
          reason:
              "Building the 193-locale set must happen on first read, not in "
              "the constructor, since every localize() call needs a new mapper",
        );
      });

      test("still reports all bundled locales", () {
        expect(CountriesLocaleMapper().availableLocales.length, 193);
      });

      test("still reports injected locales", () {
        final custom = CountriesLocaleMapper(
          other: {"custom": AfCountriesL10N()},
        );

        expect(custom.availableLocales.length, 194);
        expect(custom.availableLocales, contains("custom"));
      });

      test("survives consumption of the mapper", () {
        final custom = CountriesLocaleMapper(
          other: {"custom": AfCountriesL10N()},
        )..localize(const {"FRA"}, mainLocale: "en");

        expect(
          custom.availableLocales,
          contains("custom"),
          reason: "localize() clears map, but must not erase injected locales",
        );
        expect(custom.availableLocales.length, 194);
      });
    });

    group("altSymbol", () {
      test("bundled translations do ship alternative names", () {
        const codes = {"AFG"};
        final result = CountriesLocaleMapper().localize(
          codes,
          mainLocale: "en",
        );

        expect(
          result[(isoCode: "AFG+", locale: "en")],
          isNotNull,
          reason:
              "unlike l10n_languages and l10n_currencies, this package ships "
              "official names, so the default altSymbol must stay meaningful",
        );
      });
    });

    group("missing locale arguments", () {
      test("asserts when no locale and no injected translations are given", () {
        expect(
          () => CountriesLocaleMapper().localize(const {"FRA"}),
          throwsA(isA<AssertionError>()),
          reason: "an unsatisfiable call should not silently return empty",
        );
      });

      test("still allows an empty set of ISO codes without a locale", () {
        expect(CountriesLocaleMapper().localize(const {}), isEmpty);
      });

      test("uses injected translations when no locale is given", () {
        final custom = CountriesLocaleMapper(
          other: {"custom": AfCountriesL10N()},
        );

        expect(custom.localize(const {"FRA"}), isNotEmpty);
      });
    });
  });
}
