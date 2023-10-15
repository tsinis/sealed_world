// ignore_for_file: avoid_print

import "../constants/path_constants.dart";
import "../models/package.dart";
import "../utils/dart_utils.dart";
import "../utils/io_utils.dart";

sealed class ExportsGenerator {
  static const _generatorPackage = "index_generator";
  static const _dart = DartUtils();

  static Future<void> run([Package? selectedPackage]) async {
    if (selectedPackage == null)
      print("Generating all exports...");
    else
      print("Generating ${selectedPackage.dirName} exports...");

    final package = selectedPackage ?? Package.sealedLanguages; // TODO: Remove.
    final packageDirName = package.dirName;
    final sourcePath =
        "configs/${packageDirName}_exports.${PathConstants.yaml}";
    final packageDir =
        Directory("../${PathConstants.packages}/$packageDirName");

    final io = IoUtils();
    final copy = io.copyFile(
      sourcePath,
      packageDir,
      "$_generatorPackage.${PathConstants.yaml}",
    );
    io.directory = packageDir;

    await _dart.pub(["activate", _generatorPackage], isGlobal: true);
    await _dart.pub(["run", _generatorPackage], isGlobal: true);
    await _dart.fixFormat();

    io
      ..resetCurrentDir()
      ..deleteFile(copy);
  }
}
