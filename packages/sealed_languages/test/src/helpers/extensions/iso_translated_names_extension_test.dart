// ignore_for_file: prefer-match-file-name, avoid-dynamic

import "package:sealed_languages/src/helpers/extensions/iso_translated_names_extension.dart";
import "package:sealed_languages/src/interfaces/iso_translated.dart";
import "package:sealed_languages/src/model/language/submodels/natural_language.dart";
import "package:test/test.dart";

void main() => group("IsoTranslatedNamesExtension", () {
  group("namesCommonNative", () {
    final country = NaturalLanguage.list.firstWhere(
      (cnt) => cnt.namesNative.length == 2,
    );

    test(
      "default separator",
      () => expect(
        country.namesCommonNative(),
        "${country.namesNative.first}/${country.namesNative.last}",
      ),
    );

    test(
      "custom separator",
      () => expect(
        country.namesCommonNative(separator: "-"),
        "${country.namesNative.first}-${country.namesNative.last}",
      ),
    );

    test("empty namesNative", () {
      const emptyNameLanguage = _MockLanguageWithEmptyNames();
      expect(emptyNameLanguage.namesCommonNative(), "");
    });

    test("null namesNative", () {
      const nullNameLanguage = _MockLanguageWithNullNames();
      expect(nullNameLanguage.namesCommonNative(), "");
    });

    test("duplicate names with default separator", () {
      const duplicateLanguage = _MockLanguageWithDuplicateNames();
      expect(duplicateLanguage.namesCommonNative(), "Mock/Mock/Test");
    });

    test("duplicate names with skipFirst", () {
      const duplicateLanguage = _MockLanguageWithDuplicateNames();
      expect(duplicateLanguage.namesCommonNative(skipFirst: true), "Mock/Test");
    });

    group("skipFirst", () {
      const fallback = "Fallback Name";
      final singleNameCountry = NaturalLanguage.list.firstWhere(
        (cnt) => cnt.namesNative.length == 1,
      );

      test(
        "with multiple names",
        () => expect(
          country.namesCommonNative(skipFirst: true),
          country.namesNative.last,
        ),
      );

      test(
        "with single name",
        () => expect(
          singleNameCountry.namesCommonNative(skipFirst: true),
          singleNameCountry.namesNative.first,
        ),
      );

      test(
        "with single name and orElse",
        () => expect(
          singleNameCountry.namesCommonNative(
            skipFirst: true,
            orElse: fallback,
          ),
          fallback,
        ),
      );

      test(
        "with single name and orElse but skipFirst false",
        () => expect(
          singleNameCountry.namesCommonNative(orElse: fallback),
          singleNameCountry.namesNative.first,
        ),
      );

      test(
        "with multiple names and orElse",
        () => expect(
          country.namesCommonNative(skipFirst: true, orElse: fallback),
          country.namesNative.last,
        ),
      );
    });
  });
});

/// Mock language implementation for testing edge cases.
class _MockLanguageWithEmptyNames implements IsoTranslated {
  const _MockLanguageWithEmptyNames();

  @override
  List<String> get namesNative => const [];

  @override
  String get code => "mock";

  @override
  String get codeOther => "mk";

  @override
  String get internationalName => "Mock Language";

  @override
  String get name => "Mock";

  @override
  String toString({bool short = true}) => name;

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

/// Mock language implementation with null namesNative for testing edge cases.
class _MockLanguageWithNullNames implements IsoTranslated {
  const _MockLanguageWithNullNames();

  @override
  List<String>? get namesNative => null;

  @override
  String get code => "mock";

  @override
  String get codeOther => "mk";

  @override
  String get internationalName => "Mock Language";

  @override
  String get name => "Mock";

  @override
  String toString({bool short = true}) => name;

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

/// Mock language implementation with duplicate names for testing edge cases.
class _MockLanguageWithDuplicateNames implements IsoTranslated {
  const _MockLanguageWithDuplicateNames();

  @override
  List<String> get namesNative => const ["Mock", "Mock", "Test"];

  @override
  String get code => "mock";

  @override
  String get codeOther => "mk";

  @override
  String get internationalName => "Mock Language";

  @override
  String get name => "Mock";

  @override
  String toString({bool short = true}) => name;

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
