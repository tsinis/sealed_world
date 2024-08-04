import "dart:ui";

import "package:_sealed_world_tests/tests/advanced_tests.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_flags/src/model/elements/elements_properties.dart";

void main() => group("$ElementsProperties", () {
      const value = ElementsProperties(Color(0xffffffff), shape: null);

      test(
        "toString",
        () => expect(
          value.toString(),
          startsWith("$ElementsProperties(Color(0xffffffff)"),
        ),
      );

      group("asserts", () {
        const negative = -1.0;
        assertTest(
          "negative heightFactor",
          () => ElementsProperties(
            const Color(0xffffffff),
            shape: null,
            heightFactor: negative,
          ),
        );

        assertTest(
          "negative widthFactor",
          () => ElementsProperties(
            const Color(0xffffffff),
            shape: null,
            widthFactor: negative,
          ),
        );
      });
    });
