// ignore_for_file: avoid_print, it's just a CLI tool, not a production code.

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

    final package = selectedPackage ??
        Package.sealedLanguages; // TODO(tsinis): Remove, no issue related.
    final packageDirName = package.dirName;
    final sourcePath =
        "configs/${packageDirName}_exports.${PathConstants.yaml}";
    final packageDirectory =
        Directory("../${PathConstants.packages}/$packageDirName");

    final io = IoUtils();
    final copy = io.copyFile(
      sourcePath,
      packageDirectory,
      "$_generatorPackage.${PathConstants.yaml}",
    );
    io.directory = packageDirectory;

    await _dart.pub(["activate", _generatorPackage], isGlobal: true);
    await _dart.pub(["run", _generatorPackage], isGlobal: true);
    await _dart.fixFormat();

    io
      ..resetCurrentDir()
      ..deleteFile(copy);
  }
}
