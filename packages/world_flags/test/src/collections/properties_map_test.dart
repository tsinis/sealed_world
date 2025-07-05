import "package:flutter_test/flutter_test.dart";
import "package:sealed_countries/sealed_countries.dart";
import "package:world_flags/src/collections/properties_map.dart";
import "package:world_flags/src/helpers/extensions/flag_extension.dart";

void main() => test("fullFlags", () {
  for (final value in WorldCountry.list) {
    final props = value.flagProperties;
    expect(props, isNotNull, reason: "Properties for $value shouldn't be null");
    // ignore: deprecated_member_use_from_same_package, it's TODO!
    expect(props?.isSimplified, !fullFlags.contains(value));
  }
});
