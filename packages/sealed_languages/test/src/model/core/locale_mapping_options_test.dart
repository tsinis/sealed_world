import "package:sealed_languages/src/helpers/extensions/locale_mapping_options_extension.dart";
import "package:sealed_languages/src/model/core/locale_mapping_options.dart";
import "package:test/test.dart";

void main() => group("$LocaleMappingOptions", () {
  const options = LocaleMappingOptions<String>();

  test("toString", () {
    expect(
      options.toString(),
      'LocaleMappingOptions(altSymbol: "+", localizeFullNames: true, '
      "useLanguageFallback: true, formatter: false)",
    );
  });

  group("copyWith", () {
    test("returns same values when no parameters provided", () {
      final copy = options.copyWith();
      expect(copy.altSymbol, options.altSymbol);
      expect(copy.fallbackLocale, options.fallbackLocale);
      expect(copy.localizeFullNames, options.localizeFullNames);
      expect(copy.mainLocale, options.mainLocale);
      expect(copy.useLanguageFallback, options.useLanguageFallback);
    });

    test("updates multiple fields correctly", () {
      final copy = options.copyWith(
        altSymbol: "*",
        mainLocale: "fr",
        localizeFullNames: false,
        useLanguageFallback: false,
      );

      expect(copy.altSymbol, "*");
      expect(copy.mainLocale, "fr");
      expect(copy.localizeFullNames, isFalse);
      expect(copy.useLanguageFallback, isFalse);
      expect(copy.fallbackLocale, options.fallbackLocale);
    });
  });
});
