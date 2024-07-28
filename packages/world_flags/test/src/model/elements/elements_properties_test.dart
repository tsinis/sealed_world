import "dart:ui";

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
    });
