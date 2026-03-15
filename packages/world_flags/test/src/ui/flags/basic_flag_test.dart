// ignore_for_file: missing-test-assertion, flagGolden method

import "package:flutter/foundation.dart";
import "package:flutter/widgets.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_flags/src/model/colors_properties.dart";
import "package:world_flags/src/model/flag_properties.dart";
import "package:world_flags/src/ui/flags/basic_flag.dart";

void main() => group("$BasicFlag", () {
  const basicFlag = BasicFlag(
    FlagProperties([ColorsProperties(Color(0xFFFFFFFF))]),
    key: Key("key"),
    child: Text("Flag Child"),
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
