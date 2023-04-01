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
  static const picker =
      CountryPicker(onSelect: print, disabled: [CountryAfg(), CountryAlb()]);

  void onPressed() async {
    final country = await picker
        .copyWith(
          itemBuilder: (country) => CountryTile.fromProperties(
            country,
            onPressed: print,
            leading: EmojiFlag.fromEmojiFamily(
              country.item,
              emojiFamily: EmojiFamily.openMoji,
            ),
          ),
        )
        .showInDialog(context);
    if (country == null) return debugPrint('No country selected.');
    debugPrint('Selected country: ${country.name.common}.');
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () => picker.showInSearch(context),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: onPressed),
        body: SafeArea(
          child: CountryPicker(
            chosen: const [CountryAfg(), CountryAla(), CountryDza()],
            disabled: picker.disabled,
            itemBuilder: (country) => CountryTile.fromProperties(
              country,
              onPressed: print,
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
