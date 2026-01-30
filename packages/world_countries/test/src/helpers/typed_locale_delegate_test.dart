// ignore_for_file: avoid-similar-names

import "dart:ui";

import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/helpers/typed_locale_delegate.dart";
import "package:world_countries/src/model/iso/iso_collections.dart";
import "package:world_countries/src/model/locale/typed_locale.dart";
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
