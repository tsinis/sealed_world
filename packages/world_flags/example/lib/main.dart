import "package:flutter/material.dart";
import "package:world_flags/world_flags.dart";

void main() => runApp(
      MaterialApp(
        home: const Main(),
        theme: ThemeData(
          extensions: const [
            FlagThemeData(
                // decoration: BoxDecoration(shape: BoxShape.circle),
                ),
          ],
        ),
      ),
    );

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  late final countries = List<WorldCountry>.unmodifiable(
    WorldCountry.list.where((country) => !notReadyYet.contains(country)),
  );

  int index = 0;
  double opacity = 1 / 2;

  void incrementIndex() {
    index = index >= smallSimplifiedFlagsMap.length ? 0 : index + 1;
    setState(() => opacity = 1 / 2);
  }

  WorldCountry get country => countries.elementAt(index);

  String labelBuilder() => switch (opacity) {
        1 => "Original flag",
        0 => "Flag from the package",
        _ => " ${(opacity * 100).round()}% opacity ",
      };

  @override
  Widget build(BuildContext context) => ColoredBox(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: SafeArea(
          minimum: const EdgeInsets.all(40),
          child: Scaffold(
            appBar: AppBar(
              title: SelectableText(
                "${country.internationalName} (${country.code}): ${index + 1}",
                textAlign: TextAlign.center,
              ),
            ),
            body: GestureDetector(
              onTap: incrementIndex,
              child: Center(
                child: Stack(
                  alignment: Alignment.center,
                  clipBehavior: Clip.none,
                  children: [
                    CountryFlag.simplified(country),
                    Opacity(
                      opacity: opacity,
                      child: Image.network(country.flagPngUrl(), scale: 0.1),
                    ),
                  ],
                ),
              ),
            ),
            bottomNavigationBar: SizedBox(
              height: 40,
              child: Slider(
                value: opacity,
                onChanged: (newOpacity) => setState(() => opacity = newOpacity),
                divisions: 10,
                label: labelBuilder(),
                autofocus: true,
              ),
            ),
          ),
        ),
      );
}
