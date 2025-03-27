import "package:_sealed_world_tests/sealed_world_tests.dart";
import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_flags/src/model/colors_properties.dart";
import "package:world_flags/src/model/flag_properties.dart";

void main() => group("$FlagProperties", () {
  const value = FlagProperties([ColorsProperties(Color(0xff000000))]);

  test(
    "toString",
    () => expect(
      value.toString(),
      startsWith("$FlagProperties([ColorsProperties"),
    ),
  );

  assertTest("stripeColors empty", () => FlagProperties(const []));
});
