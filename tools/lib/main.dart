// ignore_for_file: avoid_print, avoid-non-ascii-symbols
import "package:change_case/change_case.dart";

import "constants/path_constants.dart";
import "generators/helpers/extensions/package_associations_extension.dart";
import "models/package.dart";
import "utils/io_utils.dart";
import "utils/json_utils.dart";

Future<void> main() async {
  const package = Package.sealedCountries;
  final exports = await const JsonUtils(package).parseByItems();

  final dataType = package.dataRepresent;
  final buffer = StringBuffer(
    """
// This library translations are based on the data from the
// https://github.com/symfony/intl project
// (from The Symfony - Intl Component, Fabien Potencier) and from the
// ${package.umpirskyRepoUrl} project (from Saša Stamenković).
// Both projects are licensed under the MIT License.

/// Provides $dataType translations for ${package.dirName}.
""",
  )..write(
      "library sealed_${dataType}_${JsonUtils.translation};\n".toLowerCase(),
    );
  for (final export in exports) buffer.writeln('export "$export";');
  final filename = "$dataType ${JsonUtils.translation}".toSnakeCase();

  final path = join(JsonUtils.translation, "$filename.${PathConstants.dart}");
  IoUtils().writeContentToFile(path, buffer);
}
