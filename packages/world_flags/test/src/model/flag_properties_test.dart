import "package:flutter_test/flutter_test.dart";
import "package:world_flags/src/model/flag_properties.dart";

void main() => group("$FlagProperties", () {
      const value = FlagProperties([]);

      test(
        "toString",
        () => expect(
          value.toString(),
          startsWith("$FlagProperties([]"),
        ),
      );
    });
