// ignore_for_file: avoid_print, avoid-non-ascii-symbols
import "package:cli/constants/path_constants.dart";
import "package:cli/converters/php_converter.dart";
import "package:cli/generators/helpers/extensions/package_associations_extension.dart";
import "package:cli/models/package.dart";
import "package:cli/utils/args_parser.dart";
import "package:cli/utils/io_utils.dart";
import "package:cli/utils/json_utils.dart";
import "package:sealed_countries/sealed_countries.dart";

/// Usage: `dart run :converters sealed_countries`.
void main(List<String> args) {
  final package = ArgsParser(args).maybePackageName();
  if (package == null) throw ArgumentError("Package name should be provided.");
  final io = IoUtils();
  int i = 0;
  io.forFileInDirectory(
    Directory(join(JsonUtils.defaultDataDirPath, package.dataRepresentPlural)),
    format: PhpConverter.format,
    // ignore: prefer-extracting-function-callbacks, it's CLI tool, not prod.
    withFile: (file, name) {
      // ignore: avoid-substring, no emoji here.
      final langCode = name.substring(0, 2).toLowerCase();
      final language = NaturalLanguage.maybeFromAnyCode(langCode);
      if (language == null) return;

      final phpContent = file.readAsStringSync();
      final translations = package.whenOrNull(
            sealedCurrencies: () =>
                PhpConverter.extractL10nFromLists(phpContent),
          ) ??
          PhpConverter.extractL10nFromSimpleMap(phpContent);

      final path = join(
        JsonUtils.defaultDataDirPath,
        language.codeShort.toLowerCase(),
        "${package.dataRepresent.toLowerCase()}.${PathConstants.json}",
      );
      final result = io.writeContentToFile(path, jsonEncode(translations));
      if (result != null) i += 1;
    },
  );

  print("Conversion completed successfully. $i files converted.");
}
