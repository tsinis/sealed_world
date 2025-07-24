// ignore_for_file: deprecated_member_use_from_same_package, it's TODO!

import "package:sealed_languages/src/helpers/extensions/sealed_world_object_extension.dart";
import "package:test/test.dart";

import "../../test_data.dart";

void main() => group("SealedWorldObjectExtension", () {
  group("toUpperCaseIsoCode", () {
    test("from $Enum", () {
      expect(TestData.values.first.toUpperCaseIsoCode(), firstCode);
      expect(
        TestData.values.last.toUpperCaseIsoCode(),
        TestData.values.last.name.toUpperCase(),
      );
    });

    test(
      "from $String",
      () => expect(TestData.values.first.name.toUpperCaseIsoCode(), firstCode),
    );

    test("from $StringBuffer", () {
      final buffer = StringBuffer(TestData.values.first.name);
      expect(buffer.toUpperCaseIsoCode(), firstCode);
    });

    test(
      "from a class with toString() override",
      () => expect(const IsoCodeClass().toUpperCaseIsoCode(), firstCode),
    );
  });
});
