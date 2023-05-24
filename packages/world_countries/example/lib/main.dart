import "package:flutter/foundation.dart";
import "package:flutter/widgets.dart";
import "package:flutter_web_plugins/url_strategy.dart";
import "package:world_countries/world_countries.dart";

import "my_app.dart";

Future<void> main() async {
  const serbia = CountrySrb();
  final countryCode = PlatformDispatcher.instance.locale.countryCode;
  final country = WorldCountry.maybeFromValue(
    countryCode ?? serbia.codeShort,
    where: (expectedCountry) => expectedCountry.codeShort,
  );
  if (kIsWeb) setUrlStrategy(PathUrlStrategy());

  return runApp(MyApp(country: country ?? serbia));
}
