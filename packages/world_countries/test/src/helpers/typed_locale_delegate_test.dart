// ignore_for_file: avoid-similar-names

import "dart:ui";

import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/helpers/typed_locale_delegate.dart";
import "package:world_countries/src/model/iso/iso_collections.dart";
import "package:world_countries/src/model/iso/iso_maps.dart";
import "package:world_countries/src/model/locale/typed_locale.dart";
import "package:world_countries/src/model/typedefs.dart";
import "package:world_flags/world_flags.dart";

import "../../helpers/widget_tester_extension.dart";

Comparator<MapEntry<IsoTranslated, String>> _reverseSorterFactory(
  BasicTypedLocale _,
) =>
    (first, second) => second.value.compareTo(first.value);

void main() => group("$TypedLocaleDelegate", () {
  const locale = Locale("en");
  const english = LangEng();
  const delegate = TypedLocaleDelegate();

  test(
    "selectiveCache constructor",
    () => expect(
      // ignore: prefer_const_constructors, a non-const constructor test.
      TypedLocaleDelegate.selectiveCache(),
      isA<TypedLocaleDelegate>(),
    ),
  );

  test(
    "shouldReload",
    () => expect(delegate.shouldReload(const TypedLocaleDelegate()), isFalse),
  );

  test(
    "toString",
    () => expect(delegate.toString(), contains("TypedLocaleDelegate")),
  );

  test("asyncTranslationCacheProcessing set to false", () async {
    final asyncLoad = delegate.load(locale);
    final syncLoad = const TypedLocaleDelegate(
      asyncTranslationCacheProcessing: false,
    ).load(locale);

    expect(await asyncLoad, await syncLoad);
  });

  group("l10nFormatter", () {
    const matchWord = "Test";

    test("should be used when formatting translations async", () async {
      final delegateWithFormatter = TypedLocaleDelegate(
        l10nFormatter: (_, _) => matchWord,
      );

      final typedLocale = await delegateWithFormatter.load(locale);

      expect(typedLocale?.countryTranslations.values, everyElement(matchWord));
      expect(typedLocale?.currencyTranslations.values, everyElement(matchWord));
      expect(typedLocale?.languageTranslations.values, everyElement(matchWord));
    });

    test("should be used when formatting translations sync", () async {
      final delegateWithFormatter = TypedLocaleDelegate(
        l10nFormatter: (_, _) => matchWord,
        asyncTranslationCacheProcessing: false,
      );

      final typedLocale = await delegateWithFormatter.load(locale);

      expect(typedLocale?.countryTranslations.values, everyElement(matchWord));
      expect(typedLocale?.currencyTranslations.values, everyElement(matchWord));
      expect(typedLocale?.languageTranslations.values, everyElement(matchWord));
    });

    test("should only format countries", () async {
      final delegateWithFormatter = TypedLocaleDelegate(
        l10nFormatter: (iso, _) =>
            iso.key is WorldCountry ? matchWord : iso.value,
      );

      final typedLocale = await delegateWithFormatter.load(locale);

      expect(typedLocale?.countryTranslations.values, everyElement(matchWord));
      expect(
        typedLocale?.currencyTranslations.values,
        isNot(everyElement(matchWord)),
      );
      expect(
        typedLocale?.languageTranslations.values,
        isNot(everyElement(matchWord)),
      );
    });

    test("should handle exception during formatting", () async {
      final delegateWithFormatter = TypedLocaleDelegate(
        l10nFormatter: (_, _) => throw AssertionError(),
        asyncTranslationCacheProcessing: false,
      );

      await expectLater(
        delegateWithFormatter.load(locale),
        throwsAssertionError,
      );
    });
  });

  group("l10nSorter", () {
    test("should be used when sorting translations async", () async {
      const delegateWithSorter = TypedLocaleDelegate(
        l10nSorter: _reverseSorterFactory,
      );
      const defaultDelegate = TypedLocaleDelegate();

      final sortedLocale = await delegateWithSorter.load(locale);
      final defaultLocale = await defaultDelegate.load(locale);

      final sortedCountries = sortedLocale?.countryTranslations.values.toList();
      final defaultCountries = defaultLocale?.countryTranslations.values
          .toList();

      // Verify both have data.
      expect(sortedCountries, isNotEmpty);
      expect(defaultCountries, isNotEmpty);

      // Custom sorter reverses the order, so first and last should be swapped.
      expect(sortedCountries?.first, equals(defaultCountries?.last));
      expect(sortedCountries?.last, equals(defaultCountries?.first));
    });

    test("should be used when sorting translations sync", () async {
      const delegateWithSorter = TypedLocaleDelegate(
        l10nSorter: _reverseSorterFactory,
        asyncTranslationCacheProcessing: false,
      );
      const defaultDelegate = TypedLocaleDelegate(
        asyncTranslationCacheProcessing: false,
      );

      final sortedLocale = await delegateWithSorter.load(locale);
      final defaultLocale = await defaultDelegate.load(locale);

      final sortedCountries = sortedLocale?.countryTranslations.values.toList();
      final defaultCountries = defaultLocale?.countryTranslations.values
          .toList();

      // Verify both have data.
      expect(sortedCountries, isNotEmpty);
      expect(defaultCountries, isNotEmpty);

      // Custom sorter reverses the order, so first and last should be swapped.
      expect(sortedCountries?.first, equals(defaultCountries?.last));
      expect(sortedCountries?.last, equals(defaultCountries?.first));
    });

    test("should work with selectiveCache constructor", () async {
      const delegateWithSorter = TypedLocaleDelegate.selectiveCache(
        l10nSorter: _reverseSorterFactory,
        isoCollections: IsoCollections(),
      );

      final typedLocale = await delegateWithSorter.load(locale);

      expect(typedLocale?.countryTranslations, isNotEmpty);
    });
  });

  group("isoMapsBuilder", () {
    const customCountryName = "Custom Country";
    int builderInvocations = 0;
    IsoMaps? observedMaps;

    // ignore: prefer-extracting-function-callbacks, it's a test setup.
    setUp(() {
      builderInvocations = 0;
      observedMaps = null;
    });

    test("replaces IsoMaps when returning new instance", () async {
      IsoMaps? mutatedMaps;
      WorldCountry? mutatedCountry;
      expect(builderInvocations, isZero);

      final typedLocale = await TypedLocaleDelegate(
        isoMapsBuilder: (maps) {
          builderInvocations += 1;
          observedMaps = maps;

          final entry = maps.countryTranslations.entries.first;
          mutatedCountry = entry.key;

          final updatedCountries = Map<WorldCountry, String>.of(
            maps.countryTranslations,
            // ignore: avoid-collection-mutating-methods, it's a test.
          )..[entry.key] = customCountryName;

          mutatedMaps = IsoMaps(
            countryTranslations: updatedCountries,
            currencyTranslations: maps.currencyTranslations,
            languageTranslations: maps.languageTranslations,
            countryFlags: maps.countryFlags,
            currencyFlags: maps.currencyFlags,
            languageFlags: maps.languageFlags,
          );
          if (mutatedMaps == null) return fail("mutatedMaps shouldn't be null");

          return mutatedMaps!; // ignore: avoid-non-null-assertion, fail above.
        },
      ).load(locale);

      final resolvedLocale = typedLocale;
      final originalMaps = observedMaps;
      final mutatedMapsValue = mutatedMaps;
      final mutatedCountryValue = mutatedCountry;

      expect(builderInvocations, 1);
      expect(originalMaps, isNotNull);
      expect(mutatedMapsValue, isNotNull);
      expect(mutatedCountryValue, isNotNull);
      expect(resolvedLocale, isNotNull);

      final localeWithMutatedMaps = resolvedLocale;
      final originalMapsValue = originalMaps;
      final mutatedMapsResolved = mutatedMapsValue;
      final mutatedCountryResolved = mutatedCountryValue;

      expect(localeWithMutatedMaps, isNotNull);
      expect(originalMapsValue, isNotNull);
      expect(mutatedMapsResolved, isNotNull);
      expect(mutatedCountryResolved, isNotNull);
      expect(identical(mutatedMapsResolved, originalMapsValue), isFalse);
      expect(localeWithMutatedMaps?.maps, same(mutatedMapsResolved));
      expect(
        localeWithMutatedMaps?.countryTranslations[mutatedCountryResolved],
        customCountryName,
      );
    });

    test("keeps original locale when returning identical maps", () async {
      final typedLocale = await TypedLocaleDelegate(
        isoMapsBuilder: (maps) {
          builderInvocations += 1;
          observedMaps = maps;

          return maps;
        },
      ).load(locale);

      final resolvedLocale = typedLocale;
      final originalMaps = observedMaps;

      expect(builderInvocations, 1);
      expect(originalMaps, isNotNull);
      expect(resolvedLocale, isNotNull);

      final localeWithOriginalMaps = resolvedLocale;
      final originalMapsValue = originalMaps;

      expect(localeWithOriginalMaps, isNotNull);
      expect(originalMapsValue, isNotNull);
      expect(originalMapsValue, same(localeWithOriginalMaps?.maps));
    });
  });

  group("isSupported", () {
    test(
      "returns typed locale on supported locale",
      () async => expect(
        await delegate.load(const Locale("en")),
        const TypedLocale(english),
      ),
    );

    test(
      "should map default resolution locale",
      () async => expect(
        await delegate.load(const Locale("gsw")),
        const TypedLocale(LangDeu(), country: CountryChe()),
      ),
    );

    group("localeMapResolution", () {
      // Every branch of the resolution: the locale and the expected locale.
      const defaults = [
        // Exact entries.
        (Locale("fil"), TypedLocale(LangTgl())),
        (Locale("gsw"), TypedLocale(LangDeu(), country: CountryChe())),
        (
          Locale.fromSubtags(languageCode: "bs", scriptCode: "Cyrl"),
          TypedLocale(LangSrp()),
        ),
        // The script entry, with the region of the locale.
        (
          Locale.fromSubtags(
            languageCode: "bs",
            scriptCode: "Cyrl",
            countryCode: "BA",
          ),
          TypedLocale(LangSrp(), country: CountryBih()),
        ),
        // Other scripts and the language of a known language stay as they are.
        (
          Locale.fromSubtags(
            languageCode: "bs",
            scriptCode: "Latn",
            countryCode: "BA",
          ),
          TypedLocale(LangBos(), script: ScriptLatn(), country: CountryBih()),
        ),
        (Locale("bs", "BA"), TypedLocale(LangBos(), country: CountryBih())),
        // The language entry of an unknown language, with the locale subtags.
        (Locale("fil", "PH"), TypedLocale(LangTgl(), country: CountryPhl())),
        (Locale("fil", "419"), TypedLocale(LangTgl(), regionalCode: "419")),
        (
          Locale.fromSubtags(
            languageCode: "fil",
            scriptCode: "Latn",
            countryCode: "PH",
          ),
          TypedLocale(LangTgl(), script: ScriptLatn(), country: CountryPhl()),
        ),
        // The region of an entry wins over the region of the locale.
        (Locale("gsw", "AT"), TypedLocale(LangDeu(), country: CountryChe())),
      ];

      for (final (requested, expected) in defaults) {
        test("resolves $requested to $expected", () async {
          final resolved = await delegate.load(requested);

          expect(resolved, expected);
          expect(resolved?.country, expected.country, reason: "not a code");
          expect(resolved?.script, expected.script);
        });
      }

      test("prefers an exact entry to a language entry", () async {
        const custom = TypedLocaleDelegate(
          isoCollections: IsoCollections.selective(
            localeMapResolution: [
              LocaleEntry(Locale("fil"), TypedLocale(LangTgl())),
              LocaleEntry(Locale("fil", "PH"), TypedLocale(LangEng())),
            ],
          ),
        );

        expect(
          await custom.load(const Locale("fil", "PH")),
          const TypedLocale(english),
        );
      });

      test("keeps the script of the entry over the locale script", () async {
        const custom = TypedLocaleDelegate(
          isoCollections: IsoCollections.selective(
            localeMapResolution: [
              LocaleEntry(
                Locale("fil"),
                TypedLocale(LangTgl(), script: ScriptLatn()),
              ),
            ],
          ),
        );
        final resolved = await custom.load(
          const Locale.fromSubtags(
            languageCode: "fil",
            scriptCode: "Arab",
            countryCode: "PH",
          ),
        );

        expect(
          resolved,
          const TypedLocale(
            LangTgl(),
            script: ScriptLatn(),
            country: CountryPhl(),
          ),
        );
      });

      test("ignores the language entry of a known language", () async {
        const custom = TypedLocaleDelegate(
          isoCollections: IsoCollections.selective(
            localeMapResolution: [
              LocaleEntry(Locale("en"), TypedLocale(LangDeu())),
            ],
          ),
        );

        expect(
          await custom.load(const Locale("en", "US")),
          const TypedLocale(english, country: CountryUsa()),
        );
      });
    });

    test("falls back to default language on unsupported locale", () async {
      expect(delegate.toString(), contains("LangEng()"));
      expect(
        await delegate.load(const Locale("00")),
        const TypedLocale(english),
      );
    });

    test("uses custom fallbackLanguage when provided", () async {
      const fallbackDelegate = TypedLocaleDelegate(fallbackLanguage: LangDeu());

      expect(
        await fallbackDelegate.load(const Locale("00")),
        const TypedLocale(LangDeu()),
      );
    });

    testWidgets("TypedLocaleDelegate.of", (tester) async {
      final context = await tester.contextExtractor();
      expect(TypedLocaleDelegate.of(context), isNull);
    });
  });
});
