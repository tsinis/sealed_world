import "../common/dart_utils.dart";
import "../common/io_utils.dart";
import "../constants/path_constants.dart";
import "../models/package.dart";

sealed class ExportsGenerator {
  static const _generatorPackage = "index_generator";
  static const _dart = DartUtils();

  static Future<void> run([Package package = Package.sealedCountries]) async {
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
