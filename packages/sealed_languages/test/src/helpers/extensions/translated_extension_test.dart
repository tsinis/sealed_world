// ignore_for_file: avoid-non-ascii-symbols

import "package:sealed_languages/src/helpers/extensions/translated_extension.dart";
import "package:sealed_languages/src/model/core/basic_locale.dart";
import "package:sealed_languages/src/model/language/language.dart";
import "package:test/test.dart";

void main() => group("TranslatedExtension", () {
  const portuguese = LangPor();

  group("commonNameFor", () {
    test("returns translation for valid locale", () {
      final name = portuguese.commonNameFor(const BasicLocale(LangRus()));
      expect(name, "португальский");
    });

    test("returns orElse value when translation not found", () {
      final name = portuguese.commonNameFor(
        const BasicLocale(LangKal()),
        orElse: "Not Found",
      );
      expect(name, "Not Found");
    });

    test("returns empty string by default when translation not found", () {
      final name = portuguese.commonNameFor(const BasicLocale(LangKal()));
      expect(name, isEmpty);
    });
  });

  group("maybeCommonNameFor", () {
    test(
      "returns null for null locale",
      () => expect(portuguese.maybeCommonNameFor<BasicLocale>(null), isNull),
    );

    test("returns translation for valid locale", () {
      final name = portuguese.maybeCommonNameFor(const BasicLocale(LangRus()));
      expect(name, "португальский");
    });

    test("returns orElse value when translation not found", () {
      final name = portuguese.maybeCommonNameFor(
        const BasicLocale(LangKal()),
        orElse: "Not Found",
      );
      expect(name, "Not Found");
    });

    test("returns null by default when translation not found", () {
      final name = portuguese.maybeCommonNameFor(const BasicLocale(LangKal()));
      expect(name, isNull);
    });
  });
});
