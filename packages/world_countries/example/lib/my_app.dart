import "package:flutter/material.dart";
import "package:world_countries/world_countries.dart";

import "pages/country_page.dart";

class MyApp extends StatelessWidget {
  const MyApp({required this.country, super.key});

  final WorldCountry country;

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: CountryPage(country: country),
        theme: ThemeData.light(useMaterial3: true),
      );
}
