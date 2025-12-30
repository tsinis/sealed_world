// ignore_for_file: avoid-mutating-parameters

import "dart:ui" show Locale;

import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/extensions/platform_dispatcher_extension.dart";
import "package:world_flags/world_flags.dart";

void main() => group("PlatformDispatcherExtension", () {
  tearDown(
    // ignore: avoid-returning-cascades, it's just a test setup.
    () => TestWidgetsFlutterBinding.instance.platformDispatcher
      ..clearLocalesTestValue()
      ..clearLocaleTestValue(),
  );

  group("firstCountryOrNull", () {
    testWidgets("should return null when locales is empty", (tester) async {
      tester.platformDispatcher.localesTestValue = const [];
      expect(tester.platformDispatcher.firstCountryOrNull, isNull);
    });

    testWidgets("should return null when no locales have a country code", (
      tester,
    ) async {
      tester.platformDispatcher.localesTestValue = [const Locale.fromSubtags()];
      expect(tester.platformDispatcher.firstCountryOrNull, isNull);
    });

    testWidgets("should return the first valid country from the list", (
      tester,
    ) async {
      tester.platformDispatcher.localesTestValue = const [
        Locale("en", "US"),
        Locale("es", "ES"),
      ];
      expect(tester.platformDispatcher.firstCountryOrNull, const CountryUsa());
    });

    testWidgets("should support alpha-3 country codes", (tester) async {
      tester.platformDispatcher.localesTestValue = const [Locale("en", "USA")];
      expect(tester.platformDispatcher.firstCountryOrNull, const CountryUsa());
    });

    testWidgets(
      "should skip invalid country codes and return the next valid one",
      (tester) async {
        tester.platformDispatcher.localesTestValue = const [
          Locale("en", "XX"), // Invalid code.
          Locale("es", "ES"),
        ];
        expect(
          tester.platformDispatcher.firstCountryOrNull,
          const CountryEsp(),
        );
      },
    );
  });

  group("firstLanguageOrNull", () {
    testWidgets("should return null when locales is empty", (tester) async {
      tester.platformDispatcher.localesTestValue = const [];
      expect(tester.platformDispatcher.firstLanguageOrNull, isNull);
    });

    testWidgets("should return the first valid language from the list", (
      tester,
    ) async {
      tester.platformDispatcher.localesTestValue = const [
        Locale("en", "US"),
        Locale("es", "ES"),
      ];
      expect(tester.platformDispatcher.firstLanguageOrNull, const LangEng());
    });

    testWidgets("should support alpha-3 language codes", (tester) async {
      tester.platformDispatcher.localesTestValue = const [Locale("eng", "US")];
      expect(tester.platformDispatcher.firstLanguageOrNull, const LangEng());
    });

    testWidgets(
      "should skip invalid language codes and return the next valid one",
      (tester) async {
        tester.platformDispatcher.localesTestValue = const [
          Locale("xx", "US"), // Invalid code.
          Locale("es", "ES"),
        ];
        expect(tester.platformDispatcher.firstLanguageOrNull, const LangSpa());
      },
    );
  });

  group("firstScriptOrNull", () {
    testWidgets("should return null when locales is empty", (tester) async {
      tester.platformDispatcher.localesTestValue = const [];
      expect(tester.platformDispatcher.firstScriptOrNull, isNull);
    });

    testWidgets("should return null when no locales have a script code", (
      tester,
    ) async {
      tester.platformDispatcher.localesTestValue = const [
        Locale("en"),
        Locale("es"),
      ];
      expect(tester.platformDispatcher.firstScriptOrNull, isNull);
    });

    testWidgets("should return the first valid script from the list", (
      tester,
    ) async {
      tester.platformDispatcher.localesTestValue = const [
        Locale.fromSubtags(scriptCode: "Latn"),
        Locale.fromSubtags(scriptCode: "Cyrl"),
      ];
      expect(tester.platformDispatcher.firstScriptOrNull, const ScriptLatn());
    });

    testWidgets(
      "should skip invalid script codes and return the next valid one",
      (tester) async {
        tester.platformDispatcher.localesTestValue = const [
          Locale.fromSubtags(scriptCode: "Xxxx"), // Invalid code.
          Locale.fromSubtags(scriptCode: "Cyrl"),
        ];
        expect(tester.platformDispatcher.firstScriptOrNull, const ScriptCyrl());
      },
    );
  });

  group("maybeLocale", () {
    testWidgets(
      "should return null if the primary locale's language is invalid",
      (tester) async {
        tester.platformDispatcher.localeTestValue = const Locale("xx", "US");
        expect(tester.platformDispatcher.maybeLocale, isNull);
      },
    );

    testWidgets(
      """should return a typed locale with only language if other parts are missing""",
      (tester) async {
        tester.platformDispatcher.localeTestValue = const Locale("en");
        final typedLocale = tester.platformDispatcher.maybeLocale;
        expect(typedLocale, isNotNull);
        expect(typedLocale?.language, const LangEng());
        expect(typedLocale?.country, isNull);
        expect(typedLocale?.script, isNull);
      },
    );

    testWidgets("should return a typed locale with language and country", (
      tester,
    ) async {
      tester.platformDispatcher.localeTestValue = const Locale("es", "ES");
      final typedLocale = tester.platformDispatcher.maybeLocale;
      expect(typedLocale, isNotNull);
      expect(typedLocale?.language, const LangSpa());
      expect(typedLocale?.country, const CountryEsp());
      expect(typedLocale?.script, isNull);
    });

    testWidgets("should return a typed locale with all parts when available", (
      tester,
    ) async {
      tester.platformDispatcher.localeTestValue = const Locale.fromSubtags(
        languageCode: "ru",
        countryCode: "RU",
        scriptCode: "Cyrl",
      );
      final typedLocale = tester.platformDispatcher.maybeLocale;
      expect(typedLocale, isNotNull);
      expect(typedLocale?.language, const LangRus());
      expect(typedLocale?.country, const CountryRus());
      expect(typedLocale?.script, const ScriptCyrl());
    });

    testWidgets("should resolve alpha-3 language and country codes", (
      tester,
    ) async {
      tester.platformDispatcher.localeTestValue = const Locale.fromSubtags(
        languageCode: "eng",
        countryCode: "USA",
      );
      final typedLocale = tester.platformDispatcher.maybeLocale;
      expect(typedLocale, isNotNull);
      expect(typedLocale?.language, const LangEng());
      expect(typedLocale?.country, const CountryUsa());
    });
  });
});
