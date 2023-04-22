import "package:flutter/foundation.dart";
import "package:flutter/widgets.dart";
import "package:world_countries/world_countries.dart";

import "my_app.dart";

void main() {
  const usa = CountryUsa();

  final countryCode = PlatformDispatcher.instance.locale.countryCode;
  final country = WorldCountry.maybeFromValue(
    countryCode ?? usa.codeShort,
    where: (expectedCountry) => expectedCountry.codeShort,
  );

  runApp(MyApp(country: country ?? usa));
}
