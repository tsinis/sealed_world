import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/extensions/world_countries_build_context_extension.dart";
import "package:world_countries/src/helpers/typed_locale_delegate.dart";
import "package:world_countries/src/models/locale/typed_locale.dart";
import "package:world_countries/src/theme/pickers_theme_data.dart";
import "package:world_countries/src/theme/tile_theme_data/base_tile_theme_data.dart";
import "package:world_countries/src/theme/tile_theme_data/country_tile_theme_data.dart";
import "package:world_countries/src/theme/tile_theme_data/currency_tile_theme_data.dart";
import "package:world_countries/src/theme/tile_theme_data/language_tile_theme_data.dart";
import "package:world_flags/world_flags.dart";

import "../../helpers/widget_tester_extension.dart";

void main() => group("WorldCountriesBuildContextExtension", () {
  group("maybeLocale", () {
    testWidgets("should return null when TypedLocaleDelegate is not provided", (
      tester,
    ) async {
      final context = await tester.contextExtractor();
      expect(context.maybeLocale, isNull);
    });

    testWidgets(
      "should return TypedLocale when TypedLocaleDelegate is provided",
      (tester) async {
        const delegate = TypedLocaleDelegate();
        await tester.pumpMaterialApp(const SizedBox(), null, delegate);
        await tester.pumpAndSettle();

        final context = tester.element(find.byType(SizedBox));
        expect(context.maybeLocale, isA<TypedLocale>());
        expect(context.maybeLocale?.language, isA<LangEng>());
      },
    );

    testWidgets("should return TypedLocale with proper structure", (
      tester, // Dart 3.8 formatting.
    ) async {
      const delegate = TypedLocaleDelegate();
      await tester.pumpMaterialApp(const SizedBox(), null, delegate);
      await tester.pumpAndSettle();

      final context = tester.element(find.byType(SizedBox));
      final locale = context.maybeLocale;

      expect(locale, isA<TypedLocale>());
      expect(locale?.language, isA<NaturalLanguage>());
      expect(locale?.country, isA<WorldCountry>());
      expect(locale?.language.codeShort, isNotEmpty);
    });
  });

  group("pickersTheme", () {
    testWidgets("should return null when PickersThemeData is not provided", (
      tester,
    ) async {
      await tester.pumpWidget(const SizedBox());
      final context = tester.element(find.byType(SizedBox));
      expect(context.pickersTheme, isNull);
    });

    testWidgets("should return PickersThemeData when provided", (tester) async {
      final context = await tester.contextExtractor();
      expect(context.pickersTheme, isA<PickersThemeData>());
      expect(context.pickersTheme?.cacheExtent, 100);
    });

    testWidgets("should return custom PickersThemeData", (tester) async {
      const customTheme = PickersThemeData(cacheExtent: 200, padding: .zero);
      await tester.pumpMaterialApp(const SizedBox(), customTheme);
      final context = tester.element(find.byType(SizedBox));

      expect(context.pickersTheme, customTheme);
      expect(context.pickersTheme?.cacheExtent, 200);
      expect(context.pickersTheme?.padding, EdgeInsets.zero);
    });
  });

  group("languageTileTheme", () {
    testWidgets(
      "should return null when LanguageTileThemeData is not provided",
      (tester) async {
        await tester.pumpWidget(const MaterialApp(home: SizedBox()));
        final context = tester.element(find.byType(SizedBox));
        expect(context.languageTileTheme, isNull);
      },
    );

    testWidgets("should return LanguageTileThemeData when provided", (
      tester,
    ) async {
      const languageTheme = LanguageTileThemeData();
      await tester.pumpMaterialApp(const SizedBox(), languageTheme);

      final context = tester.element(find.byType(SizedBox));
      expect(context.languageTileTheme, languageTheme);
    });

    testWidgets("should use tileTheme method internally", (tester) async {
      const languageTheme = LanguageTileThemeData();

      await tester.pumpWidget(
        MaterialApp(
          home: const Scaffold(body: SizedBox()),
          theme: ThemeData(extensions: const [languageTheme]),
        ),
      );

      final context = tester.element(find.byType(SizedBox));
      expect(context.languageTileTheme, context.tileTheme<NaturalLanguage>());
    });
  });

  group("countryTileTheme", () {
    testWidgets(
      "should return null when CountryTileThemeData is not provided",
      (tester) async {
        await tester.pumpWidget(const MaterialApp(home: SizedBox()));
        final context = tester.element(find.byType(SizedBox));
        expect(context.countryTileTheme, isNull);
      },
    );

    testWidgets("should return CountryTileThemeData when provided", (
      tester, // Dart 3.8 formatting.
    ) async {
      const countryTheme = CountryTileThemeData();
      await tester.pumpMaterialApp(const SizedBox(), countryTheme);

      final context = tester.element(find.byType(SizedBox));
      expect(context.countryTileTheme, countryTheme);
    });

    testWidgets("should use switch expression to filter CountryTileThemeData", (
      tester,
    ) async {
      const countryTheme = CountryTileThemeData();
      await tester.pumpMaterialApp(const SizedBox(), countryTheme);

      final context = tester.element(find.byType(SizedBox));
      final tileTheme = context.tileTheme<WorldCountry>();

      expect(context.countryTileTheme, tileTheme);
      expect(context.countryTileTheme, countryTheme);
    });

    testWidgets(
      "should return null when tileTheme is not CountryTileThemeData",
      (
        tester, // Dart 3.8 formatting.
      ) async {
        await tester.pumpWidget(
          MaterialApp(home: const SizedBox(), theme: ThemeData()),
        );

        final context = tester.element(find.byType(SizedBox));
        expect(context.countryTileTheme, isNull);
      },
    );
  });

  group("currencyTileTheme", () {
    testWidgets(
      "should return null when CurrencyTileThemeData is not provided",
      (tester) async {
        await tester.pumpMaterialApp(const SizedBox());
        final context = tester.element(find.byType(SizedBox));
        expect(context.currencyTileTheme, isNull);
      },
    );

    testWidgets("should return CurrencyTileThemeData when provided", (
      tester,
    ) async {
      const currencyTheme = CurrencyTileThemeData();
      await tester.pumpMaterialApp(const SizedBox(), currencyTheme);
      final context = tester.element(find.byType(SizedBox));
      expect(context.currencyTileTheme, currencyTheme);
    });

    testWidgets("should use tileTheme method internally", (tester) async {
      const currencyTheme = CurrencyTileThemeData();
      await tester.pumpMaterialApp(const SizedBox(), currencyTheme);

      final context = tester.element(find.byType(SizedBox));
      expect(context.currencyTileTheme, context.tileTheme<FiatCurrency>());
    });
  });

  group("tileTheme", () {
    testWidgets("should return null when no theme extension is provided", (
      tester,
    ) async {
      await tester.pumpMaterialApp(const SizedBox());
      final context = tester.element(find.byType(SizedBox));
      expect(context.tileTheme<WorldCountry>(), isNull);
      expect(context.tileTheme<FiatCurrency>(), isNull);
      expect(context.tileTheme<NaturalLanguage>(), isNull);
    });

    testWidgets("should return correct theme for WorldCountry type", (
      tester,
    ) async {
      const countryTheme = CountryTileThemeData();
      await tester.pumpMaterialApp(const SizedBox(), countryTheme);

      final context = tester.element(find.byType(SizedBox));
      final theme = context.tileTheme<WorldCountry>();

      expect(theme, isA<CountryTileThemeData>());
      expect(theme, isA<BaseTileThemeData<WorldCountry>>());
    });

    testWidgets("should return correct theme for FiatCurrency type", (
      tester,
    ) async {
      const currencyTheme = CurrencyTileThemeData();
      await tester.pumpMaterialApp(const SizedBox(), currencyTheme);

      final context = tester.element(find.byType(SizedBox));
      final theme = context.tileTheme<FiatCurrency>();

      expect(theme, isA<CurrencyTileThemeData>());
      expect(theme, isA<BaseTileThemeData<FiatCurrency>>());
    });

    testWidgets("should return correct theme for NaturalLanguage type", (
      tester,
    ) async {
      const languageTheme = LanguageTileThemeData();
      await tester.pumpMaterialApp(const SizedBox(), languageTheme);

      final context = tester.element(find.byType(SizedBox));
      final theme = context.tileTheme<NaturalLanguage>();

      expect(theme, isA<LanguageTileThemeData>());
      expect(theme, isA<BaseTileThemeData<NaturalLanguage>>());
    });

    testWidgets("should handle multiple theme extensions simultaneously", (
      tester,
    ) async {
      const countryTheme = CountryTileThemeData();
      const currencyTheme = CurrencyTileThemeData();
      const languageTheme = LanguageTileThemeData();

      await tester.pumpWidget(
        MaterialApp(
          home: const Scaffold(body: SizedBox()),
          theme: ThemeData(
            extensions: const [countryTheme, currencyTheme, languageTheme],
          ),
        ),
      );

      final context = tester.element(find.byType(SizedBox));

      expect(context.tileTheme<WorldCountry>(), isA<CountryTileThemeData>());
      expect(context.tileTheme<FiatCurrency>(), isA<CurrencyTileThemeData>());
      expect(
        context.tileTheme<NaturalLanguage>(),
        isA<LanguageTileThemeData>(),
      );
    });
  });

  group("integration tests", () {
    testWidgets("should work with all extensions together", (tester) async {
      const delegate = TypedLocaleDelegate();
      const pickersTheme = PickersThemeData(cacheExtent: 100);
      const countryTheme = CountryTileThemeData();
      const currencyTheme = CurrencyTileThemeData();
      const languageTheme = LanguageTileThemeData();

      await tester.pumpWidget(
        MaterialApp(
          home: const Scaffold(body: SizedBox()),
          localizationsDelegates: const [delegate],
          locale: const Locale("en", "US"),
          theme: ThemeData(
            extensions: const [
              pickersTheme,
              countryTheme,
              currencyTheme,
              languageTheme,
            ],
          ),
        ),
      );
      await tester.pumpAndSettle();

      final context = tester.element(find.byType(SizedBox));

      expect(context.maybeLocale, isA<TypedLocale>());
      expect(context.pickersTheme, pickersTheme);
      expect(context.countryTileTheme, isA<CountryTileThemeData>());
      expect(context.currencyTileTheme, isA<CurrencyTileThemeData>());
      expect(context.languageTileTheme, isA<LanguageTileThemeData>());
    });

    testWidgets("should return null for all themes when nothing is provided", (
      tester,
    ) async {
      await tester.pumpWidget(const MaterialApp(home: SizedBox()));
      final context = tester.element(find.byType(SizedBox));

      expect(context.maybeLocale, isNull);
      expect(context.pickersTheme, isNull);
      expect(context.countryTileTheme, isNull);
      expect(context.currencyTileTheme, isNull);
      expect(context.languageTileTheme, isNull);
      expect(context.tileTheme<WorldCountry>(), isNull);
      expect(context.tileTheme<FiatCurrency>(), isNull);
      expect(context.tileTheme<NaturalLanguage>(), isNull);
    });
  });
});
