import "package:sealed_languages/src/helpers/extensions/iso_string_extension_type.dart";
import "package:test/test.dart";

import "../../test_data.dart";

void main() => group("IsoString", () {
  group("toUpperCaseCode", () {
    test(
      "from $Null",
      () => expect(IsoString.maybe(null)?.toUpperCaseCode(), isNull),
    );

    test(
      "from $String",
      () => expect(
        IsoString(TestData.values.first.name).toUpperCaseCode(),
        firstCode,
      ),
    );

    test(
      "from $StringBuffer",
      () => expect(
        IsoString(
          StringBuffer(TestData.values.first.name).toString(), // SB to String.
        ).toUpperCaseCode(),
        firstCode,
      ),
    );

    test(
      "from a class with toString() override",
      () => expect(
        IsoString(const IsoCodeClass().toString()).toUpperCaseCode(),
        firstCode,
      ),
    );
  });
});
