import "package:flutter/foundation.dart";
import "package:flutter/widgets.dart";
import "package:world_countries/world_countries.dart";

import "my_app.dart";

Future<void> main() async {
  const serbia = CountrySrb();
  final countryCode = PlatformDispatcher.instance.locale.countryCode;
  final country = WorldCountry.maybeFromValue(
    countryCode ?? serbia.codeShort,
    where: (expectedCountry) => expectedCountry.codeShort,
  );

  return runApp(MyApp(country: country ?? serbia));
}
