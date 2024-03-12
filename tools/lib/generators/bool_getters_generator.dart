import "package:change_case/change_case.dart";
import "package:sealed_countries/sealed_countries.dart";

import "../models/package.dart";
import "../utils/code_utils.dart";
import "../utils/dart_utils.dart";
import "../utils/io_utils.dart";
import "helpers/extensions/package_associations_extension.dart";

class BoolGettersGenerator {
  const BoolGettersGenerator();

  static const _code = CodeUtils();
  static const _dart = DartUtils();

  Future<void> generate(Package package) async {
    final type = package.type.toString();
    final currentFileDir =
        Directory(join(Directory.current.parent.path, package.fullPath));
    final currentFilePath = join(
      currentFileDir.path,
      "model/${package.dataRepresent.toLowerCase()}/submodels/${type.toSnakeCase()}.g.dart",
    );
    final currentImports = _code.readContentUntilFound(currentFilePath);
    final buffer = StringBuffer(currentImports)..write("""
    extension ${type}BoolGetters on $type {
    """);

    for (final item in package.dataList) {
      final name = item.name;
      final itemName = name is TranslatedName ? name.common : name.toString();
      buffer
        ..write("/// Checks if this [$type] instance is $itemName.")
        ..write("\n")
        ..write("bool get is${item.code.toSentenceCase()}")
        ..write("=> this == const ${item.runtimeType}();")
        ..write("\n");
    }
    buffer.write("}");

    IoUtils()
      ..writeContentToFile(currentFilePath, buffer)
      ..directory = currentFileDir;
    await _dart.fixFormat();

    return _dart.fixFormat();
  }
}
