import "package:change_case/change_case.dart";

import "../models/package.dart";
import "../utils/code_utils.dart";
import "../utils/dart_utils.dart";
import "../utils/io_utils.dart";
import "helpers/extensions/package_associations_extension.dart";

class DataListGenerator {
  const DataListGenerator();

  static const _code = CodeUtils();
  static const _dart = DartUtils();

  Future<void> generate([Package package = Package.sealedLanguages]) async {
    final currentFileDir =
        Directory(join(Directory.current.parent.path, package.fullPath));
    final currentFilePath =
        join(currentFileDir.path, "data/${package.dataFilePrefix}.data.dart");
    final currentImports = _code.readContentUntilFound(currentFilePath);
    final buffer = StringBuffer(currentImports);

    for (final item in package.dataList) {
      final type = package.type.toString();
      final code = item.code.toPascalCase();
      final itemString = item.toString(short: false);
      final className = "${package.classPrefix}$code";
      final superBody = itemString.replaceFirst(type, ": super");
      final setsBody = superBody.replaceAll(": {", ": const {");
      final classBody = setsBody.replaceAll(": [", ": const [");

      buffer
        ..write("""
/// A class that represents the ${item.name} ${package.dataRepresent}.
class $className extends $type {
/// Creates a instance of [$className] (${item.name} ${package.dataRepresent}).
///
/// ISO ${package.isoCodeAssociated} code: "${item.code}", ISO ${package.isoCodeOtherAssociated} code: "${item.codeOther}".
const $className()""")
        ..write(classBody)
        ..write(";}\n");
    }

    IoUtils()
      ..writeContentToFile(currentFilePath, buffer)
      ..directory = currentFileDir;

    await _dart.fixFormat();

    return _dart.fixFormat();
  }
}
