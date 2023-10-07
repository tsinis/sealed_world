import "package:change_case/change_case.dart";

import "../models/package.dart";
import "../utils/code_utils.dart";
import "../utils/dart_utils.dart";
import "../utils/io_utils.dart";
import "helpers/extensions/package_associations_extension.dart";

class DataListGenerator {
  const DataListGenerator();

  static const _dart = DartUtils();
  static const _code = CodeUtils();

  Future<void> generate([Package package = Package.sealedLanguages]) async {
    final currentFileDir =
        Directory(join(Directory.current.parent.path, package.fullPath));
    final currentFilePath =
        join(currentFileDir.path, "data/${package.dataFilePrefix}.data.dart");
    final currentImports = _code.readContentUntilFound(currentFilePath);
    final buffer = StringBuffer(currentImports);

    for (final item in package.dataList) {
      final code = item.code.toPascalCase();
      final itemString = item.toString(short: false);
      final type = package.type;
      final superString = itemString.replaceFirst(type.toString(), ": super");
      final string = superString.replaceAll(": [", ": const [");
      final className = "${package.classPrefix}$code";
      buffer
        ..write("""

/// A class that represents the ${item.name} ${package.dataRepresent}.
class $className extends $type {
/// Creates a instance of [$className] that represents the ${item.name}.
///
/// ISO ${package.isoCodeAssociated} code: "${item.code}", ISO ${package.isoCodeOtherAssociated} code: "${item.codeOther}".
const $className()
        """)
        ..write(string)
        ..write(";}\n");
    }
    File(currentFilePath).writeAsStringSync(buffer.toString());
    Directory.current = currentFileDir;

    await _dart.fixApply();
  }
}
