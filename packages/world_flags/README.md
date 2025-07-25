[![CodeFactor](https://www.codefactor.io/repository/github/tsinis/sealed_world/badge)](https://www.codefactor.io/repository/github/tsinis/sealed_world)
[![Codecov](https://codecov.io/github/tsinis/sealed_world/branch/main/graph/badge.svg)](https://app.codecov.io/github/tsinis/sealed_world/flags)
[![CodeRabbit](https://img.shields.io/coderabbit/prs/github/tsinis/sealed_world?logo=vowpalwabbit&logoColor=orange&color=dark-green)](https://coderabbit.ai)
[![Dart Code Metrics](https://img.shields.io/badge/passing-dcm?style=flat&logo=dart&logoColor=lightskyblue&label=dcm&color=dark-green)](https://dcm.dev)
[![CI checks](https://github.com/tsinis/sealed_world/actions/workflows/verify_packages.yaml/badge.svg)](https://github.com/tsinis/sealed_world/actions/workflows/verify_packages.yaml)
[![Pub points](https://img.shields.io/pub/points/world_flags)](https://pub.dev/packages/world_flags/score)
[![Last commit](https://img.shields.io/github/last-commit/tsinis/sealed_world)](https://github.com/tsinis/sealed_world/commits/main/packages/world_flags)
[![GitHub stars](https://img.shields.io/github/stars/tsinis/sealed_world?style=flat&color=green)](https://github.com/tsinis/sealed_world/stargazers)
[![License MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Pub package](https://img.shields.io/pub/v/world_flags.svg)](https://pub.dev/packages/world_flags)

# Every country flag is a Widget

Flutter library for compact and visually appealing country flag icons. Optimized for rendering sizes from 18 to 48 pixels (height), these flags draw inspiration from circle-flags, OpenMoji, and Twemoji. Over two-thirds of the flags in this library are also suitable for full-scale use.

Each flag is a vector-based `CustomPainter`, ensuring precise, scalable, and stunning results. Following official color standards and using a declarative design, world_flags allows easy customization of flag shapes, decorations, and aspect ratios without losing quality or breaking flag element proportions.

![Example](https://raw.githubusercontent.com/tsinis/sealed_world/main/packages/world_flags/doc/example.gif)

## Features

- **Fully Customizable**: Adjust the shape, size, decoration, aspect ratio, etc. of any flag to fit your UI needs.
- **Efficient**: No images, SVGs, fonts, or any other type of assets used - it keeps your app lightweight.
- **Flexible**: The declarative approach allows for flags to have different shapes and aspect ratios.
- **High Performance**: Optimized CustomPainters ensure smooth rendering across all devices.
- **Easy to Use**: Simplified API for adding flags with minimal code.
- **Pure Dart**: As these are code-based flags, developers can easily access and manipulate flag colors, aspect ratios, and other properties like any other Dart object.

> The package provides 250 small and simplified world country flags, and **more than 2/3** of these flags can also be used as full-dimensional flags.

## Getting Started

To use this package, you will need a stable Flutter. Add `world_flags` as a dependency in your `pubspec.yaml` file.

```yaml
dependencies:
  world_flags: any
```

### Usage

All you need is a compile-time [WorldCountry](https://github.com/tsinis/sealed_world/tree/main/packages/sealed_countries#usage) instance (either create with factories of that class or just pick some specific one, i.e. `const CountryDeu()`). Use it in the `CountryFlag` widget. For example:

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

> [!IMPORTANT]
> For specific ISO instances and their collections, e.g., `const value = CountryChn(), const items = [CountryAut()]` — prioritize compile-time constant references over `var/final` to ensure canonicalization and benefit from compiler optimizations.

For more usage examples, please see the `/example` folder.

### Additional information

For more information on using this package, check out the API documentation.
If you have any issues or suggestions for the package, please file them in the GitHub repository. **PRs or ideas are always welcome**. If you like this package, please give it a star or like.

### References and credits

This package is licensed under the MIT license (see [LICENSE](./LICENSE) for details). Its dependencies are under their respective licenses, which can be found in the corresponding `LICENSE` and `NOTICE` files.

### FAQ

#### Why should I use this package over any other country flag package?

- **Every flag is a Widget**: This package doesn't use heavy SVG or any other assets, all flags are declarative-style optimized `CustomPainter`s. That means that you **_don't have to worry about pre-caching, increased app size, platform-dependent look of the flags_**, etc. And since it's a widget - you can always change its look - shape, decoration, aspect ratio, etc. Just ask yourself for example - how you can easily change the aspect ratio of asset-based flags without stretching/shrinking them.
- **Up-to-date flags**: This package ensures accurate and timely flag representations, reflecting current designs. Unlike other packages or emoji/font sets that often use outdated flags, this package offers flags with the most recent designs (such as the Afghan flag from 2013 is shown here correctly with a design from year 2021, or the Syrian flag is displayed with a design from year 2025, etc.).
- **Custom flags**: Package provides multiple classes and simple API to create your own flags.
- **Classes with a sealed origin**: This package provides data via classes with a sealed origin, defining specific permitted direct subclasses. This lets you use instances of these subclasses and customize their data or behavior (e.g., overriding methods), offering more structured flexibility than enums or standard open classes.
- **No external 3rd-party dependencies**: This package has no external third-party dependencies. It relies on the Flutter SDK and other packages within the `sealed_world` monorepo, ensuring controlled and consistent integration.
- **Rich data**: This package offers far more data than any other package + tons of translations (all [GlobalMaterialLocalizations](https://api.flutter.dev/flutter/flutter_localizations/GlobalMaterialLocalizations-class.html) and [GlobalCupertinoLocalizations](https://api.flutter.dev/flutter/flutter_localizations/GlobalCupertinoLocalizations-class.html) locales and more).
- **Type-safe**: The contracts and types in this package are exceptionally strong, ensuring that your code is strongly typed and well-defined.
- **High code coverage**: The code in this package has almost 100% code coverage, with **_more than 1.6K (+3.2K in underlying Dart packages) tests_**, providing confidence in its reliability and stability.
- **Comprehensive documentation**: This package provides full documentation for every non-code generated public member, usually with examples, ensuring clarity and ease of use.
- **Lightweight**: This package keeps under 500 KB, ensuring it fits within the pub cache limit. This leads to quick, low-bandwidth downloads and faster caching, minimizing resource impact.
- **Mirrored Repository**: The GitHub repository, including all package tags, is mirrored on [GitLab](https://gitlab.com/tsinis/sealed_world/), providing an alternative access point should GitHub become unavailable.
- **Industry adopted**: This package is actively used in production by numerous European companies, ensuring its efficacy and robustness in real-world scenarios.
- **MIT license**: This package and sources are released under the MIT license, which is a permissive license that allows users to use, modify, and distribute the code with minimal restrictions. The MIT license is considered better than most other open-source licenses because it provides flexibility and allows users to incorporate the code into their projects without worrying about legal implications.
