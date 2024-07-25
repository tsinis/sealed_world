[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Pub package](https://img.shields.io/pub/v/world_flags.svg)](https://pub.dev/packages/world_flags)

# Every country flag is a Widget

Flutter library for compact and visually appealing country flag icons. Optimized for rendering sizes from 18 to 48 pixels (height), these flags draw inspiration from circle-flags, OpenMoji, and Twemoji. Over two-thirds of the flags in this library are also suitable for full-scale use.

Each flag is a vector-based CustomPainter, ensuring precise, scalable, and stunning results at any size. By following official color standards and using a declarative design, world_flags allows easy customization of flag shapes, decorations and aspect ratios without losing quality.

![Example](https://raw.githubusercontent.com/tsinis/sealed_world/main/packages/world_flags/doc/example.gif)

## Features

- **Fully Customizable**: Adjust the shape, size, decoration, aspect ratio, etc. of any flag to fit your UI needs.
- **Efficient**: No images, SVGs, fonts or any other type of assets used - it keeps your app lightweight.
- **Flexible**: Declarative approach allows for flags to have different shapes and aspect ratios.
- **High Performance**: Optimized CustomPainters ensure smooth rendering across all devices.
- **Easy to Use**: Simplified API for adding flags with minimal code.

> Package provides 250 small and simplified world country flags, but at the same time 2/3 of these flags can be used as full-dimensional flags.

## Getting Started

To use this package, you will need Flutter version 3.10+. Add `world_flags` as a dependency in your `pubspec.yaml` file.

```yaml
dependencies:
  world_flags: any
```

### Usage

All you need is a [WorldCountry](https://github.com/tsinis/sealed_world/tree/main/packages/sealed_countries#usage) instance (either create with factories of that class or just pick some specific one, i.e. `CountryDeu()`). Use it in the `CountryFlag` widget. For example:

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
                borderRadius: BorderRadius.all(Radius.circular(4)),
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
  static const size = kMinInteractiveDimension / 2;
  static const countries = WorldCountry.list;

  final _aspectRatio = ValueNotifier(FlagConstants.defaultAspectRatio);

  @override
  void dispose() {
    _aspectRatio.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => ColoredBox(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: SafeArea(
          minimum: const EdgeInsets.all(size / 2),
          child: ValueListenableBuilder(
            valueListenable: _aspectRatio,
            builder: (_, aspectRatio, __) => Scaffold(
              body: ListView.builder(
                itemBuilder: (_, i) => ListTile(
                  title: Text(countries[i].internationalName),
                  trailing: CountryFlag.simplified(
                    countries[i],
                    height: size,
                    aspectRatio: aspectRatio,
                  ),
                ),
                itemCount: countries.length,
              ),
              bottomNavigationBar: SizedBox(
                height: size * 2,
                child: Slider(
                  value: aspectRatio,
                  onChanged: (newRatio) => _aspectRatio.value = newRatio,
                  min: FlagConstants.minAspectRatio,
                  max: FlagConstants.maxAspectRatio,
                ),
              ),
            ),
          ),
        ),
      );
}
```

> TIP: You can also provide your global flag decorations in the theme extensions.

### Additional information

For more information on using this package, check out the API documentation.
If you have any issues or suggestions for the package, please file them in the GitHub repository. **PRs or ideas are always welcome**. If you like this package, please give it a star or like.

### References and credits

This package is licensed under the MIT license. See [LICENSE](./LICENSE) for details. This package dependencies are under their respective licenses (that can be found in their respective folders under LICENSE and NOTICE files).
