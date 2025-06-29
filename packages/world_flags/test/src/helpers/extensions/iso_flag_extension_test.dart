import "package:flutter/foundation.dart" show Key;
import "package:flutter_test/flutter_test.dart";
import "package:sealed_countries/sealed_countries.dart";
import "package:world_flags/src/helpers/extensions/iso_flag_extension.dart";
import "package:world_flags/src/ui/flags/basic_flag.dart";
import "package:world_flags/src/ui/iso_flag.dart";

void main() => group("IsoFlagExtension", () {
  test("copyWith", () {
    const original = IsoFlag(FiatEur(), <FiatCurrency, BasicFlag>{});
    expect(original.key, isNull);
    const copyKey = Key("copy");

    final copy = original.copyWith(key: copyKey);
    expect(copy.key, isNot(original.key));
    expect(copy.key, copyKey);
    expect(copy, isA<IsoFlag>());
    expect(copy, isNot(original));

    expect(copy.copyWith().key, copyKey);
  });
});
