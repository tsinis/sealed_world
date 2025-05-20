// ignore_for_file: avoid_print, avoid-non-ascii-symbols
import "package:change_case/change_case.dart";
import "package:cli/constants/path_constants.dart";
import "package:cli/generators/helpers/extensions/package_associations_extension.dart";
import "package:cli/utils/args_parser.dart";
import "package:cli/utils/io_utils.dart";
import "package:cli/utils/json_utils.dart";
import "package:cli/utils/network_utils.dart";

/// Usage: `dart run :translations sealed_countries`.
Future<void> main(List<String> args, {bool skipFetch = true}) async {
  final package = ArgsParser(args).maybePackageName();
  if (package == null) throw ArgumentError("Package name should be provided.");
  final io = IoUtils();

  if (!skipFetch) {
    final clonedDir = await const NetworkUtils().cloneRepository(
      package.umpirskyRepoUrl,
    );

    io
      ..moveJsonFiles(clonedDir)
      ..deleteDirectory(clonedDir);
  }
  final dirName = package.dirName;
  final subDirPath = join(
    "../",
    PathConstants.packages,
    dirName,
    PathConstants.lib,
  );

  final exports = await JsonUtils(
    package,
    join(subDirPath, PathConstants.src),
  ).parseByLanguage();

  final dataType = package.dataRepresent;
  final buffer =
      StringBuffer("""
// This library translations are based on the data from the
// https://github.com/symfony/intl project
// (from The Symfony - Intl Component, Fabien Potencier) and from the
// ${package.umpirskyRepoUrl} project (from Saša Stamenković).
// Both projects are licensed under the MIT License.

/// Provides $dataType translations for $dirName.
""")..write(
        "library sealed_${dataType}_${JsonUtils.translation};\n".toLowerCase(),
      );
  for (final export in exports)
    buffer.writeln(
      'export "${PathConstants.src}/${JsonUtils.translation}/$export";',
    );

  final filename = "$dataType ${JsonUtils.translation}".toSnakeCase();
  final path = join(subDirPath, "$filename.${PathConstants.dart}");
  io.writeContentToFile(path, buffer);
}
