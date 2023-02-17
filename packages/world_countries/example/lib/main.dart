import 'package:flutter/material.dart';
import 'package:world_countries/world_countries.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: ThemeData.dark(useMaterial3: true),
        home: const MyHomePage(),
      );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void onPressed() async {
    final country = await const CountryPicker().showInModalBottomSheet(context);
    if (country == null) return debugPrint('No country selected.');
    debugPrint('Selected country: ${country.name.common}.');
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: onPressed),
        body: SafeArea(
          child: CountryPicker(
            onSelect: print,
            chosen: const [CountryAfg(), CountryAla(), CountryDza()],
            disabled: const [CountryAfg(), CountryAlb()],
            itemBuilder: (country) => CountryTile.defaultFromProperties(
              country,
              leading: EmojiFlag.custom(
                country.item,
                style: TextStyle(
                  fontFamily: FunctionalPlatform.maybeWhen(
                    iOS: () => 'EmojiOneColor',
                    macOS: () => 'EmojiOneColor',
                    orElse: () => 'EmojiOneMozilla',
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}
