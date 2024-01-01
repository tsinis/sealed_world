// ignore_for_file: avoid_print

import "dart:io";

import "package:world_countries/src/constants/package_constants.dart";
import "package:world_countries/src/models/emoji_family.dart";

class BuildCleaner {
  void checkArguments(List<String> keep) {
    final invalidValues = keep.where((arg) => !_fonts.keys.contains(arg));
    if (invalidValues.isNotEmpty) {
      print('Invalid arguments: ${invalidValues.join(', ')}');

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
will only remove Twemoji related font files from the build directory.""",
    );
  }

  void clean([
    Iterable<EmojiFamily?> familiesToRemove = EmojiFamily.values,
  ]) {
    final removing = familiesToRemove.whereType<EmojiFamily>().toSet();

    if (removing.isEmpty) {
      print("Nothing to remove!");

      return printHelp();
    }

    print(
      """Starting to remove ${removing.length} emoji families ${removing.map((f) => f.projectName)}.""",
    );

    removing.forEach(_removeFontDirectory);
  }

  void _removeFontDirectory(EmojiFamily family) {
    // ignore: avoid-substring, no emojis in font family name here.
    final dirName = family.name[0].toUpperCase() + family.name.substring(1);
    final dir = Directory(
      "./build/web/assets/packages/${PackageConstants.name}/assets/fonts/$dirName",
    );

    print("Removing ${family.projectName} font directory: ${dir.path}");
    if (dir.existsSync()) dir.deleteSync(recursive: true);
  }
}
