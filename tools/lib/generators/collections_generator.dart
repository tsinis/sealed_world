import "package:change_case/change_case.dart";
import "package:sealed_countries/sealed_countries.dart";

import "../models/package.dart";
import "../utils/code_utils.dart";
import "../utils/dart_utils.dart";
import "../utils/io_utils.dart";
import "helpers/extensions/package_associations_extension.dart";

class CollectionsGenerator {
  const CollectionsGenerator();

  static const _code = CodeUtils();
  static const _dart = DartUtils();

  // ignore: avoid-long-functions, it's just a CLI tool, not production code.
  Future<void> generate(Package? package) async {
    final type = package.type.toString();
    final currentFileDir = Directory(
      join(
        Directory.current.parent.path,
        package?.fullPath ?? Package.sealedLanguages.fullPath,
      ),
    );
    final currentFilePath = join(
      currentFileDir.path,
      "collections/${type.toSnakeCase()}_collections.dart",
    );
    final currentImports = _code.readContentUntilFound(currentFilePath);
    final camelCaseType = type.toCamelCase();
    final buffer = StringBuffer(currentImports)
      ..write("""
    /// List of all standard [$type] sorted by code.
    const ${camelCaseType}List = [
    """);

    // ignore: avoid-unnecessary-type-casts, it's a CLI, not production code.
    final items = package.dataList?.cast<IsoStandardized>() ?? Script.list;
    for (final item in items) buffer.write("${item.runtimeType}(),\n");
    buffer
      ..write("];\n")
      ..write("""
    /// Map of [$type] standard codes.
    const ${camelCaseType}CodeMap = {
    """);

    for (final i in items)
      buffer.write('"${i.code.toUpperCase()}": ${i.runtimeType}(),\n');
    buffer
      ..write("};\n")
      ..write("""
    /// Map of [$type] other codes.
    const ${camelCaseType}CodeOtherMap = {
    """);

    for (final item in items) {
      buffer.write(
        '"${item.codeOther.toUpperCase()}": ${item.runtimeType}(),\n',
      );
    }
    buffer.write("};\n");

    if (items.first is WorldCountry) {
      buffer.write("""
    /// Map of [$type] numeric codes.
    const ${camelCaseType}CodeNumericMap = {
    """);
      for (final item in items.cast<WorldCountry>()) {
        if (item.codeNumeric.trim().isEmpty) continue;
        buffer.write('"${item.codeNumeric}": ${item.runtimeType}(),\n');
      }
      buffer.write("};\n");
    }

    IoUtils()
      ..writeContentToFile(currentFilePath, buffer)
      ..directory = currentFileDir;
    await _dart.fixFormat();

    return _dart.fixFormat();
  }
}
