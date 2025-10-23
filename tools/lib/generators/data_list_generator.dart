// ignore_for_file: avoid_print, it's just a CLI tool.
import "package:change_case/change_case.dart";
import "package:sealed_languages/sealed_languages.dart";

import "../models/package.dart";
import "../utils/dart_utils.dart";
import "../utils/io_utils.dart";
import "helpers/extensions/package_associations_extension.dart";

class DataListGenerator {
  const DataListGenerator();

  static const _dart = DartUtils();

  // ignore: avoid-long-functions, it's just a CLI tool.
  Future<void> generate(Package package) async {
    final currentFileDir = Directory(
      join(Directory.current.parent.path, package.fullPath),
    );
    final isoDataDir = Directory(
      join(currentFileDir.path, "data", package.dataRepresentPlural),
    );

    // Create the iso data directory if it doesn't exist.
    if (!isoDataDir.existsSync()) isoDataDir.createSync(recursive: true);
    final dataRepresent = package.dataRepresent;
    final type = package.type.toString();

    for (final item in package.dataList) {
      final code = item.code.toPascalCase();
      final lowerCaseCode = code.toLowerCase();
      final itemString = item.toString(short: false);
      final className = "${package.classPrefix}$code";
      final superBody = itemString.replaceFirst(type, ": super");
      final setsBody = superBody.replaceAll(": {", ": const {");
      final classBody = setsBody.replaceAll(": [", ": const [");
      final itemName = item.internationalName;
      final factoryName = "_${code}Factory";
      final buffer = StringBuffer();
      if (package == Package.sealedCountries) {
        buffer.write("""
// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators
""");
      }
      buffer
        ..write("""
part of "../../model/$dataRepresent/$dataRepresent.dart";

extension type const $factoryName._($className _) implements $className {
  const $factoryName() : this._(const $className._());
}

/// A class that represents the $itemName $dataRepresent.
class $className extends $type {
/// {@template sealed_world.${dataRepresent}_${lowerCaseCode}_constructor}
/// Creates a instance of [$className] ($itemName $dataRepresent).
///
/// ${IsoStandardized.standardAcronym} ${package.isoCodeAssociated} code: `${item.code}`, ${IsoStandardized.standardAcronym} ${package.isoCodeOtherAssociated} code: `${item.codeOther}`.
/// {@endtemplate}
const factory $className() = $factoryName;

const $className._()""")
        ..write(classBody)
        ..write(";\n\n}\n");

      final filePath = join(isoDataDir.path, "$lowerCaseCode.data.dart");
      if (lowerCaseCode != "unk")
        IoUtils().writeContentToFile(filePath, buffer);
      print('Finished "part "$filePath";');
    }

    IoUtils().directory = currentFileDir;

    print(
      "Generated ${package.dataList.length} $dataRepresent for "
      '"${package.name}".',
    );

    final directory = isoDataDir.path;
    print("Ready to fix in directory: $directory");
    await _dart.dcm(directory);
    await _dart.fixFormat(directory);
    print("Formatted generated $dataRepresent.");
    await _dart.dcm(directory);
    await _dart.fixFormat();
    print("DCM Fixed issues in the package");
  }

  void showConstructors(Package package) {
    for (final country in package.dataList) {
      final code = country.code.toLowerCase();
      // ignore: avoid-substring, it's CLI.
      final capitilize = "${code[0].toUpperCase()}${code.substring(1)}";
      print("""
/// {@macro sealed_world.${package.dataRepresent}_${code}_constructor}
const factory ${package.type}.$code() = _${capitilize}Factory;\n
""");
    }
  }
}
