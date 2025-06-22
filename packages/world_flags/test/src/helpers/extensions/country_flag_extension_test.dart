import "package:flutter_test/flutter_test.dart";
import "package:sealed_countries/sealed_countries.dart";
import "package:world_flags/src/helpers/extensions/country_flag_extension.dart";
import "package:world_flags/src/ui/country_flag.dart";

void main() => group("CountryFlagExtension", () {
  const value = CountryDeu();

  test(
    "country",
    () => expect(const CountryFlag.simplified(value).country, value),
  );
});
