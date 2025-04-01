import "package:flutter/rendering.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_flags/world_flags.dart";

void main() => group("BasicFlagExtensionCopyWith", () {
  test("copyWith()", () {
    const original = BasicFlag(
      FlagProperties([ColorsProperties(Color(0xFFFFFFFF))]),
    );
    expect(original.key, isNull);
    const copyKey = Key("copy");

    final copy = original.copyWith(key: copyKey);
    expect(copy.key, isNot(original.key));
    expect(copy.key, copyKey);
    expect(copy, isA<BasicFlag>());
    expect(copy, isNot(original));

    expect(copy.copyWith().key, copyKey);
  });
});
