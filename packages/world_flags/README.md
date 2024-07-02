[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Pub package](https://img.shields.io/pub/v/world_flags.svg)](https://pub.dev/packages/world_flags)

# Every country flag is a Flutter Widget

![Example](https://raw.githubusercontent.com/tsinis/sealed_world/main/packages/world_flags/doc/example.gif)

## Features

- **Fully Customizable**: Adjust the shape, size, decoration, aspect ratio, etc. of any flag to fit your UI needs.
- **Efficient**: No images, SVGs, fonts or any other type of assets used - it keeps your app lightweight.
- **Flexible**: Declarative approach allows for flags to have different shapes and aspect ratios.
- **High Performance**: Optimized CustomPainters ensure smooth rendering across all devices.
- **Easy to Use**: Simplified API for adding flags with minimal code.

> Package provides 240 out of all 250 small and simplified world country flags.

## Getting Started

To use this package, you will need Flutter version 3.10+. Add `world_flags` as a dependency in your `pubspec.yaml` file.

```yaml
dependencies:
  world_flags: any
```

### Usage

All you need is a WorldCountry object (either create with factories of that class or just pick some specific, i.e. `CountryDeu()`). Use it in the `CountryFlag` widget. For example:

```dart
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
```

### Additional information

For more information on using this package, check out the API documentation.
If you have any issues or suggestions for the package, please file them in the GitHub repository. **PRs or ideas are always welcome**. If you like this package, please give it a star or like.

### References and credits

This package is licensed under the MIT license. See [LICENSE](./LICENSE) for details. This package dependencies are under their respective licenses (that can be found in their respective folders under LICENSE and NOTICE files).
