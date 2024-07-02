import "package:flutter/material.dart";
import "package:world_flags/world_flags.dart";

void main() => runApp(
      MaterialApp(
        home: const Main(),
        theme: ThemeData(
          /// Provide flag decorations globally.
          extensions: const [
            FlagThemeData(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(2)),
              ),
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
  static const height = 50.0;

  final _aspectRatio = ValueNotifier<double>(1);

  late final countries = List<WorldCountry>.unmodifiable(
    WorldCountry.list.where((country) => !notReadyYet.contains(country)),
  );

  @override
  Widget build(BuildContext context) => ColoredBox(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: SafeArea(
          minimum: const EdgeInsets.all(height / 2),
          child: Scaffold(
            body: LayoutBuilder(
              builder: (_, constraints) => ValueListenableBuilder<double>(
                valueListenable: _aspectRatio,
                builder: (_, aspectRatio, __) => Scaffold(
                  body: ListView.builder(
                    itemBuilder: (_, i) {
                      final country = countries[i];

                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: SizedBox(
                          height: height / 3,
                          child: ListTile(
                            title: Text(country.internationalName),
                            trailing: CountryFlag.simplified(
                              country,
                              aspectRatio: aspectRatio,
                            ),
                            dense: true,
                          ),
                        ),
                      );
                    },
                    itemCount: countries.length,
                  ),
                  bottomNavigationBar: SizedBox(
                    height: height,
                    child: Slider(
                      value: aspectRatio,
                      onChanged: (newRatio) => _aspectRatio.value = newRatio,
                      min: 1,
                      max: 2.2,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}
