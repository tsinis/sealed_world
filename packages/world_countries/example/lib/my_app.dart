import "package:flutter/material.dart";
import "package:world_countries/world_countries.dart";

import "pages/main_page.dart";
import "theme/color_schemes.g.dart";

class MyApp extends StatelessWidget {
  const MyApp({required this.country, super.key});

  final WorldCountry country;

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: MainPage(country),
        theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      );
}
