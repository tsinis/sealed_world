// Reads the `l10n-de` define to skip bundled lookups on a shaken build.
// ignore_for_file: do_not_use_environment
import "package:l10n_currencies/l10n_currencies.dart";
import "package:l10n_currencies/src/locale_fallback.dart";
import "package:test/test.dart";

void main() {
  // Bundled lookups only hold on an unshaken build, see integration_test.
  const isShaken = bool.hasEnvironment("l10n-de");

  group("$LocaleFallback chain", () {
    const chains = {
      "": [""],
      " en_US ": [" en_US ", "en_US", "en"],
      "123_locale": ["123_locale"],
      "EN": ["EN", "en"],
      "alphae_LATN": ["alphae_LATN", "alphae_Latn", "alphae"],
      "ca_ES_VALENCIA": ["ca_ES_VALENCIA", "ca_ES", "ca"],
      "de_DE@euro": ["de_DE@euro", "de_DE", "de"],
      "en-US-u-ca-gregory": ["en-US-u-ca-gregory", "en_US", "en"],
      "en_US.UTF-8": ["en_US.UTF-8", "en_US", "en"],
      "en__US": ["en__US", "en_US", "en"],
      "es_419": ["es_419", "es"],
      "fil_PH": ["fil_PH", "fil", "tl"],
      "in": ["in", "id"],
      "iw_IL": ["iw_IL", "iw", "he"],
      "ji": ["ji", "yi"],
      "nb_NO": ["nb_NO", "nb", "no"],
      "nn": ["nn", "no"],
      "pa_PK": ["pa_PK", "pa_Arab", "pa"],
      "pt-PT": ["pt-PT", "pt_PT", "pt"],
      "pt_MO": ["pt_MO", "pt_PT", "pt"],
      "pt_pt": ["pt_pt", "pt_PT", "pt"],
      "sr-Latn": ["sr-Latn", "sr_Latn", "sr"],
      "sr_Latn_RS": ["sr_Latn_RS", "sr_Latn", "sr"],
      "uz_AF": ["uz_AF", "uz_Arab", "uz"],
      "zh--Hant--TW": ["zh--Hant--TW", "zh_Hant_TW", "zh_Hant", "zh"],
      "zh-hant-tw": ["zh-hant-tw", "zh_Hant_TW", "zh_Hant", "zh"],
      "zh_HK": ["zh_HK", "zh_Hant", "zh"],
      "zh_Hans_SG": ["zh_Hans_SG", "zh_Hans", "zh"],
      "zh_Hant_HK": ["zh_Hant_HK", "zh_HK", "zh_Hant", "zh"],
      "zh_Hant_TW": ["zh_Hant_TW", "zh_Hant", "zh"],
      "zh_MO": ["zh_MO", "zh_HK", "zh_Hant", "zh"],
      "zh_TW": ["zh_TW", "zh_Hant", "zh"],
    };

    for (final MapEntry(key: locale, value: expected) in chains.entries) {
      test(
        'resolves "$locale"',
        () => expect(LocaleFallback.chain(locale).toList(), expected),
      );
    }

    test(
      "only normalizes without language fallback",
      () => expect(
        LocaleFallback.chain("zh-hant-tw", useLanguageFallback: false).toList(),
        ["zh-hant-tw", "zh_Hant_TW"],
      ),
    );
  });

  group("$CurrenciesLocaleMapper locale resolution", () {
    test("puts the most specific locale first", () {
      final result = _customMapper().localize(
        const {"AAA", "BBB"},
        mainLocale: "zz-hant-tw",
        altSymbol: "",
      );

      expect(result.keys.map((key) => "${key.isoCode}:${key.locale}"), [
        "AAA:zz_Hant",
        "AAA:zz",
        "BBB:zz",
      ]);
      expect(result.values, ["Script", "Language", "Language"]);
    });

    test("puts the main locale chain before the fallback chain", () {
      final result = _customMapper().localize(
        const {"AAA", "CCC"},
        mainLocale: "zz_Hant_TW",
        fallbackLocale: "yy_XX",
        altSymbol: "",
      );

      expect(result.keys.map((key) => key.locale), [
        "zz_Hant",
        "zz",
        "yy",
        "yy",
      ]);
    });

    test("matches a normalized locale without language fallback", () {
      final result = _customMapper().localize(
        const {"AAA"},
        mainLocale: "ZZ-hant",
        useLanguageFallback: false,
      );

      expect(result, {(isoCode: "AAA", locale: "zz_Hant"): "Script"});
    });

    test("returns an unmodifiable map", () {
      final result = _customMapper().localize(const {"AAA"}, mainLocale: "zz");

      expect(
        () => result[(isoCode: "AAA", locale: "zz")] = "Changed",
        throwsUnsupportedError,
      );
    });
  });

  group("$CurrenciesLocaleMapper injected translations", () {
    test("can be backed by a const map", () {
      final mapper = CurrenciesLocaleMapper(
        other: {
          "zz": IsoLocaleMapper(other: const {"AAA": "Const"}),
        },
      );

      expect(mapper.localize(const {"AAA"}, mainLocale: "zz").values, [
        "Const",
      ]);
    });

    test("stay intact, so an instance can be shared by mappers", () {
      final shared = IsoLocaleMapper(other: {"AAA": "Shared"});

      for (int i = 0; i < 2; i += 1) {
        final mapper = CurrenciesLocaleMapper(other: {"zz": shared});
        final result = mapper.localize(const {"AAA"}, mainLocale: "zz");
        expect(result.values, ["Shared"], reason: "call #${i + 1}");
      }
      expect(shared.map, {"AAA": "Shared"});
    });

    test("are copied, so consuming the mapper keeps the given map", () {
      final other = {
        "zz": IsoLocaleMapper(other: {"AAA": "Kept"}),
      };
      CurrenciesLocaleMapper(other: other)
          .localize(const {"AAA"}, mainLocale: "zz");

      expect(other.keys, ["zz"]);
    });
  });

  group("$CurrenciesLocaleMapper formatter with alternative names", () {
    test("receives the alternative code for a single locale", () {
      final result = CurrenciesLocaleMapper(other: {"zz": _withAltName()})
          .localize(
            const {"AAA"},
            mainLocale: "zz",
            formatter: (key, _) => key.isoCode,
          );

      expect(result.values, ["AAA", "AAA+"]);
    });

    test("receives the main code for multiple locales", () {
      final withAlt = _withAltName();
      final result =
          CurrenciesLocaleMapper(other: {"yy": withAlt, "zz": withAlt})
              .localize(
                const {"AAA"},
                mainLocale: "zz",
                fallbackLocale: "yy",
                formatter: (key, _) => key.isoCode,
              );

      expect(result.values, ["AAA", "AAA", "AAA", "AAA"]);
    });
  });

  group("$CurrenciesLocaleMapper bundled locales", skip: isShaken, () {
    test("prefers a script locale over its language", () {
      final language = BsCurrenciesL10N().map;
      final MapEntry(key: iso, value: name) = BsCyrlCurrenciesL10N().map.entries
          .firstWhere((entry) => entry.value != language[entry.key]);

      final result = CurrenciesLocaleMapper().localize(
        {iso},
        mainLocale: "bs-Cyrl-BA",
        altSymbol: "",
      );

      expect(result.entries.first.key.locale, "bs_Cyrl");
      expect(result.entries.first.value, name);
      expect(result.keys.map((key) => key.locale), [
        "bs_Cyrl",
        if (language.containsKey(iso)) "bs",
      ]);
    });
  });
}

CurrenciesLocaleMapper _customMapper() => CurrenciesLocaleMapper(
  other: {
    "yy": IsoLocaleMapper(other: {"AAA": "Fallback", "CCC": "Fallback"}),
    "zz": IsoLocaleMapper(other: {"AAA": "Language", "BBB": "Language"}),
    "zz_Hant": IsoLocaleMapper(other: {"AAA": "Script"}),
  },
);

IsoLocaleMapper<String> _withAltName() =>
    IsoLocaleMapper(other: {"AAA": "Name", "AAA+": "Full name"});
