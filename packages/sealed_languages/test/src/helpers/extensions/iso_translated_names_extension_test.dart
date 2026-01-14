import "package:sealed_languages/src/helpers/extensions/iso_translated_names_extension.dart";
import "package:sealed_languages/src/model/language/submodels/natural_language.dart";
import "package:test/test.dart";

void main() => group("IsoTranslatedNamesExtension", () {
  group("namesCommonNative", () {
    final country = NaturalLanguage.list.firstWhere(
      (cnt) => cnt.namesNative.length > 1,
    );

    test(
      "separator",
      () => expect(
        country.namesCommonNative(separator: "-"),
        "${country.namesNative.first}-${country.namesNative.last}",
      ),
    );

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
