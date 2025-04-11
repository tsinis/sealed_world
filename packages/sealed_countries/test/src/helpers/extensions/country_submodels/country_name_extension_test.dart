import "package:sealed_countries/src/helpers/extensions/country_submodels/country_name_extension.dart";
import "package:sealed_countries/src/model/country/submodels/country_name.dart";
import "package:sealed_currencies/sealed_currencies.dart";
import "package:test/test.dart";

import "../../../test_data.dart";

void main() => group("CountryNameExtension", () {
  const value = CountryName(
    language: LangEng(),
    official: TestData.string,
    common: TestData.string,
  );

  group("copyWith", () {
    test("with non-null values", () {
      final copy = value.copyWith(language: const LangSlv());
      expect(copy.language, const LangSlv());
      expect(copy.common, value.common);
      expect(copy.official, value.official);
    });

    test("with null values", () {
      final copy = value.copyWith();
      expect(copy.language, value.language);
      expect(copy.common, value.common);
      expect(copy.official, value.official);
    });
  });
});
