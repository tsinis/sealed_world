import "package:flutter/widgets.dart" show runApp;
import "package:url_strategy/url_strategy.dart";

import "my_app.dart";

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}
