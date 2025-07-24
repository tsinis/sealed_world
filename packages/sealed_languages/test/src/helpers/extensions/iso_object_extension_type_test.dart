import "package:sealed_languages/src/helpers/extensions/iso_object_extension_type.dart";
import "package:test/test.dart";

import "../../test_data.dart";

void main() => group("IsoObject", () {
  group("toUpperCaseCode", () {
    test(
      "from $Null",
      () => expect(IsoObject.maybe(null)?.toUpperCaseCode(), isNull),
    );
    test("from $Enum", () {
      expect(IsoObject(TestData.values.first).toUpperCaseCode(), firstCode);
      expect(
        IsoObject(TestData.values.last).toUpperCaseCode(),
        TestData.values.last.name.toUpperCase(),
      );
    });

    test(
      "from $String",
      () =>
          expect(IsoObject(TestData.values.first).toUpperCaseCode(), firstCode),
    );

    test(
      "from $StringBuffer",
      () => expect(
        IsoObject(StringBuffer(TestData.values.first.name)).toUpperCaseCode(),
        firstCode,
      ),
    );

    test(
      "from a class with toString() override",
      () =>
          expect(const IsoObject(IsoCodeClass()).toUpperCaseCode(), firstCode),
    );
  });
});
