import "package:flutter/foundation.dart" show PlatformDispatcher;
import "package:flutter/widgets.dart" show runApp;
import "package:world_countries/world_countries.dart";

import "my_app.dart";

void main() {
  final country = PlatformDispatcher.instance.locale.maybeCountry;
  runApp(MyApp(country: country ?? const CountrySrb()));
}
