// ignore_for_file: missing-test-assertion, flagGolden method

import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_flags/world_flags.dart";

void main() => group("$BasicFlag", () {
  const basicFlag = BasicFlag(
    FlagProperties([ColorsProperties(Color(0xFFFFFFFF))]),
    key: Key("key"),
  );

  test(
    "toStringShort",
    () => expect(basicFlag.toStringShort(), "$BasicFlag([<'key'>])"),
  );

  test("debugFillProperties", () {
    final builder = DiagnosticPropertiesBuilder();
    expect(builder.properties.any((prop) => prop.name == "padding"), isFalse);

    basicFlag.debugFillProperties(builder);
    expect(builder.properties.any((prop) => prop.name == "padding"), isTrue);
  });
});
