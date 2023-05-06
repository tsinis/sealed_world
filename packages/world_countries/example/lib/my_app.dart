import "dart:typed_data" show Uint8List;

import "package:flutter/material.dart";
import "package:world_countries/world_countries.dart";

import "pages/main_page.dart";
import "theme/color_schemes.g.dart";

class MyApp extends StatelessWidget {
  const MyApp({required this.country, this.imageBytes, super.key});

  final WorldCountry country;
  final Uint8List? imageBytes;

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: MainPage(country, maybeBackground: imageBytes),
        theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      );
}
