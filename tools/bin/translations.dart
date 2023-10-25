// ignore_for_file: avoid_print, avoid-non-ascii-symbols
import "package:change_case/change_case.dart";
import "package:cli/constants/path_constants.dart";
import "package:cli/generators/helpers/extensions/package_associations_extension.dart";
import "package:cli/utils/args_parser.dart";
import "package:cli/utils/io_utils.dart";
import "package:cli/utils/json_utils.dart";
import "package:cli/utils/network_utils.dart";

/// Usage: `dart run :translations sealed_currencies`.
Future<void> main(List<String> args) async {
  final package = ArgsParser(args).maybePackageName();
  if (package == null) throw ArgumentError("Package name should be provided.");

  final clonedDir =
      await const NetworkUtils().cloneRepository(package.umpirskyRepoUrl);
  final io = IoUtils()
    ..moveJsonFiles(clonedDir)
    ..deleteDirectory(clonedDir);

  final exports = await JsonUtils(package).parseByLanguage();

  final dataType = package.dataRepresent;
  final buffer = StringBuffer(
    """
// This library translations are based on the data from the
// ${package.umpirskyRepoUrl} project (from Saša Stamenković),
// which is licensed under the MIT License.

/// Provides $dataType translations for ${package.dirName}.
""",
  )..write(
      "library sealed_${dataType}_${JsonUtils.translation};\n".toLowerCase(),
    );
  for (final export in exports) buffer.writeln('export "$export";');
  final filename = "$dataType ${JsonUtils.translation}".toSnakeCase();

  final path = join(JsonUtils.translation, "$filename.${PathConstants.dart}");
  io.writeContentToFile(path, buffer);
}
