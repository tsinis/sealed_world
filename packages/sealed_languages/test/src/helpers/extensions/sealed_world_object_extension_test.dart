import "package:sealed_languages/src/helpers/extensions/sealed_world_object_extension.dart";
import "package:test/test.dart";

import "test_data.dart";

void main() => group("SealedWorldObjectExtension", () {
      group("maybeToIsoString", () {
        test("from $Enum", () {
          expect(TestData.values.first.maybeToIsoCode(), firstCode);
          expect(
            TestData.values.last.maybeToIsoCode(),
            TestData.values.last.name.toUpperCase(),
          );
        });

        test(
          "from $String",
          () => expect(TestData.values.first.name.maybeToIsoCode(), firstCode),
        );

        test("from $StringBuffer", () {
          final buffer = StringBuffer(TestData.values.first.name);
          expect(buffer.maybeToIsoCode(), firstCode);
        });

        test(
          "from a class with toString() override",
          () => expect(const IsoCodeClass().maybeToIsoCode(), firstCode),
        );
      });
    });
