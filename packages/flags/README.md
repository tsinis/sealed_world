[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Pub package](https://img.shields.io/pub/v/flags.svg)](https://pub.dev/packages/flags)

# Every country flag is a Flutter Widget

## Features

- **Fully Customizable**: Adjust the shape, size, decoration, aspect ratio, etc. of any flag to fit your UI needs.
- **Flexible**: Declarative approach allows for flags to have different shapes and aspect ratios.
- **Efficient**: No heavy image assets or SVGs, which keeps your app lightweight.
- **High Performance**: Optimized CustomPainters ensure smooth rendering across all devices.
- **Easy to Use**: Simplified API for adding flags with minimal code.

## Getting Started

To use this package, you will need Flutter version 3.10+. Add `flags` as a dependency in your `pubspec.yaml` file.

```yaml
dependencies:
  flags: any
```

### Usage

### Additional information

For more information on using this package, check out the API documentation.
If you have any issues or suggestions for the package, please file them in the GitHub repository. **PRs or ideas are always welcome**. If you like this package, please give it a star or like.

### References and credits

This package is licensed under the MIT license. See [LICENSE](./LICENSE) for details. This package dependencies are under their respective licenses (that can be found in their respective folders under LICENSE and NOTICE files).

### Attributions

The color emoji flags fonts used in this package were obtained from open-source repositories of the original creators.

---

### FAQ

#### Why should I use this package over any other country/currency/language picker package?

- **Sealed classes**: This package provides data in the form of sealed classes, allowing you to create your own instances and work with them as with existing ones (for example this is not possible with enums or regular classes (without losing it's sealed nature), you can also override existing or add new data, etc.).
- **No 3rd-party dependencies**: This package has no third-party dependencies, ensuring that you won't have any issues or conflicts with other dependencies (no even `meta` here, because of that).
- **Rich data**: This package offers far more data than any other package + tons of translations (all [GlobalMaterialLocalizations](https://api.flutter.dev/flutter/flutter_localizations/GlobalMaterialLocalizations-class.html) and [GlobalCupertinoLocalizations](https://api.flutter.dev/flutter/flutter_localizations/GlobalCupertinoLocalizations-class.html) locales and more).
- **Type-safe**: The contracts and types in this package are very strong, ensuring that your code is strongly typed and well-defined.
- **High code coverage**: The code in this package has almost 100% code coverage, with more than 130 (+3140 in underling Dart packages) tests, providing confidence in its reliability and stability.
- **Industry adopted**: This package is actively used in production by numerous European companies, ensuring its efficacy and robustness in real-world scenarios.
- **MIT License**: This package and sources are released under the MIT license, which is a permissive license that allows users to use, modify, and distribute the code with minimal restrictions. The MIT license is considered better than most other open-source licenses because it provides flexibility and allows users to incorporate the code into their projects without worrying about legal implications.
