@TestOn("vm")
library;

// Tree-shaking flags are read to skip locale-count assertions on shaked runs.
// ignore_for_file: do_not_use_environment

import "package:l10n_currencies/l10n_currencies.dart";
import "package:test/test.dart";

void main() {
  const hasDeFlag = bool.fromEnvironment("l10n-de");

  group("$CurrenciesLocaleMapper optimizations", skip: hasDeFlag, () {
    group("availableLocales", () {
      test("is not materialized until it is read", () {
        const iterations = 20000;
        int sink = 0;

        for (int i = 0; i < 2000; i += 1) {
          sink += CurrenciesLocaleMapper().availableLocales.length;
        }

        final constructOnly = Stopwatch()..start();
        for (int i = 0; i < iterations; i += 1) {
          sink += CurrenciesLocaleMapper().map.length;
        }
        constructOnly.stop();

        final constructAndRead = Stopwatch()..start();
        for (int i = 0; i < iterations; i += 1) {
          sink += CurrenciesLocaleMapper().availableLocales.length;
        }
        constructAndRead.stop();

        expect(sink, isPositive, reason: "guards against dead code removal");
        expect(
          constructAndRead.elapsedMicroseconds,
          greaterThan(constructOnly.elapsedMicroseconds * 5),
          reason:
              "Building the 149-locale set must happen on first read, not in "
              "the constructor, since every localize() call needs a new mapper",
        );
      });

      test("still reports all bundled locales", () {
        expect(CurrenciesLocaleMapper().availableLocales.length, 149);
      });

      test("still reports injected locales", () {
        final custom = CurrenciesLocaleMapper(
          other: {"custom": AfCurrenciesL10N()},
        );

        expect(custom.availableLocales.length, 150);
        expect(custom.availableLocales, contains("custom"));
      });

      test("survives consumption of the mapper", () {
        final custom = CurrenciesLocaleMapper(
          other: {"custom": AfCurrenciesL10N()},
        )..localize(const {"USD"}, mainLocale: "en");

        expect(
          custom.availableLocales,
          contains("custom"),
          reason: "localize() clears map, but must not erase injected locales",
        );
        expect(custom.availableLocales.length, 150);
      });
    });

    group("altSymbol", () {
      test("bundled translations contain no alternative names", () {
        final codes = AfCurrenciesL10N().map.keys.toSet();
        final locales = CurrenciesLocaleMapper().availableLocales;

        for (final locale in locales) {
          final withAlt = CurrenciesLocaleMapper().localize(
            codes,
            mainLocale: locale,
          );
          final withoutAlt = CurrenciesLocaleMapper().localize(
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

    group("empty results", () {
      test("does not consume the mapper, so a miss can be retried", () {
        final mapper = CurrenciesLocaleMapper();

        expect(mapper.localize(const {"USD"}, mainLocale: "zz"), isEmpty);
        expect(
          mapper.localize(const {"USD"}, mainLocale: "en"),
          isNotEmpty,
          reason: "the single-use contract starts at the first actual hit",
        );
      });

      test("retains injected translations so a retry can still use them", () {
        final custom = CurrenciesLocaleMapper(
          other: {"custom": AfCurrenciesL10N()},
        );

        expect(custom.localize(const {"USD"}, mainLocale: "zz"), isEmpty);
        expect(
          custom.map,
          isNotEmpty,
          reason: "retained on purpose: clearing here would break the retry",
        );
        expect(
          custom.localize(const {"USD"}, mainLocale: "custom"),
          isNotEmpty,
        );
      });
    });

    group("missing locale arguments", () {
      test("returns an empty map instead of throwing", () {
        expect(
          CurrenciesLocaleMapper().localize(const {"USD"}),
          isEmpty,
          reason:
              "sealed_* delegates call localize() with both locales null when "
              "LocaleMappingOptions defaults are used; asserting here would "
              "break those callers in debug mode",
        );
      });

      test("still allows an empty set of ISO codes without a locale", () {
        expect(CurrenciesLocaleMapper().localize(const {}), isEmpty);
      });

      test("uses injected translations when no locale is given", () {
        final custom = CurrenciesLocaleMapper(
          other: {"custom": AfCurrenciesL10N()},
        );

        expect(custom.localize(const {"USD"}), isNotEmpty);
      });
    });
  });
}
