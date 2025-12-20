// ignore_for_file: avoid-similar-names

import "dart:ui";

import "package:_sealed_world_tests/sealed_world_tests.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/helpers/typed_locale_delegate.dart";
import "package:world_countries/src/models/locale/typed_locale.dart";
import "package:world_flags/world_flags.dart";

import "../../helpers/widget_tester_extension.dart";

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

    assertTest(
      "throws assertion error on unsupported locale",
      () async => delegate.load(const Locale("00")),
    );

    test("throws no assertion errors if fallbackLanguage specified", () async {
      const fallbackDelegate = TypedLocaleDelegate(fallbackLanguage: english);
      expect(fallbackDelegate.toString(), contains(english.name));
      expect(
        await fallbackDelegate.load(const Locale("00")),
        const TypedLocale(english),
      );
    });

    testWidgets("TypedLocaleDelegate.of", (tester) async {
      final context = await tester.contextExtractor();
      expect(TypedLocaleDelegate.of(context), isNull);
    });
  });
});
