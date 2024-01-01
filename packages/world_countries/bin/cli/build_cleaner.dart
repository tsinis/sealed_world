// ignore_for_file: avoid_print

import "dart:io";

import "package:world_countries/src/constants/package_constants.dart";
import "package:world_countries/src/models/emoji_family.dart";

class BuildCleaner {
  void checkArguments(List<String> keep) {
    final invalidValues = keep.where((arg) => !_fonts.keys.contains(arg));
    if (invalidValues.isNotEmpty) {
      print('\nInvalid arguments: ${invalidValues.join(', ')}\n');

      return printHelp();
    }

    final enums = <EmojiFamily?>{};
    for (final family in _fonts.keys) {
      if (!keep.contains(family)) enums.add(_fonts[family]);
    }

    clean(enums);
  }

  final _fonts = {for (final f in EmojiFamily.values) f.name.toLowerCase(): f};

  void printHelp() {
    final families = _fonts.keys.join(",");
    print(
      "Usage: dart run ${PackageConstants.name}:clean_build [--keep $families]",
    );
    print(
      """

You can specify multiple families to --keep by separating them with commas, for example:
... clean_build --keep notoemoji,openmoji
will only remove Twemoji related font files from the build directory.
""",
    );
  }

  void clean([Iterable<EmojiFamily?> familiesToRemove = EmojiFamily.values]) {
    final list = familiesToRemove.whereType<EmojiFamily>().toSet();

    if (list.isEmpty) {
      print("Nothing to remove!");

      return printHelp();
    }

    print(
      """${list.length} emoji families to remove ${list.map((f) => f.projectName)}.""",
    );

    if (Directory("./build/web_wasm").existsSync()) list.forEach(removeFontDir);

    for (final family in list) {
      removeFontDir(family, "web");
    }
  }

  void removeFontDir(EmojiFamily family, [String webDir = "web_wasm"]) {
    // ignore: avoid-substring, no emojis in font family name here.
    final dirName = family.name[0].toUpperCase() + family.name.substring(1);
    final dir = Directory(
      "./build/$webDir/assets/packages/${PackageConstants.name}/assets/fonts/$dirName",
    );

    if (dir.existsSync()) dir.deleteSync(recursive: true);
  }
}
