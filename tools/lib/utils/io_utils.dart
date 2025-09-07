// ignore_for_file: avoid-similar-names, prefer-correct-setter-parameter-name,
// ignore_for_file: prefer-extracting-function-callbacks

import "dart:io";

import "package:path/path.dart";

import "../constants/path_constants.dart";

export "dart:io";

export "package:path/path.dart";

final class IoUtils {
  IoUtils([Directory? directory]) : _dirCache = directory ?? Directory.current;

  final Directory _dirCache;

  set directory(Directory value) => Directory.current = value;
  Directory get directory => _dirCache;

  File copyFile(String sourcePath, Directory destination, [String? filename]) {
    final name = filename ?? basename(sourcePath);
    final destinationFile = File(join(destination.path, name));
    if (!destination.existsSync()) destination.createSync(recursive: true);
    destinationFile.writeAsBytesSync(File(sourcePath).readAsBytesSync());

    return destinationFile;
  }

  Directory createDirectory(String path) {
    final value = Directory(path);
    if (!directory.existsSync()) value.createSync(recursive: true);

    return value;
  }

  File? writeContentToFile(String filePath, Object buffer) {
    final content = buffer.toString();
    if (content.length <= 5) return null;
    final file = File(filePath);

    if (!file.existsSync()) {
      // ignore: avoid-returning-cascades, it's CLI tool.
      return file
        ..createSync(recursive: true)
        ..writeAsStringSync(content);
    }
    file
      ..deleteSync(recursive: true)
      ..createSync(recursive: true)
      ..writeAsStringSync(content);

    return file;
  }

  void deleteFile(File file) =>
      file.existsSync() ? file.deleteSync(recursive: true) : null;

  void deleteDirectory(Directory value) =>
      value.existsSync() ? value.deleteSync(recursive: true) : null;

  void resetCurrentDir() => directory = _dirCache;

  void moveJsonFiles(Directory source, [Directory? destination]) {
    // ignore: avoid-mutating-parameters, it's CLI tool.
    destination ??= Directory.current;
    final destinationPath = join(destination.path, PathConstants.json);
    if (!destination.existsSync()) destination.createSync(recursive: true);

    forFileInDirectory(
      source,
      withFile: (file, _) {
        final newPath = destinationPath + file.path.replaceAll(source.path, "");
        File(newPath).createSync(recursive: true);
        file.renameSync(newPath);
      },
    );
  }

  void forFileInDirectory(
    Directory value, {
    required void Function(File file, String filename) withFile,
    String format = PathConstants.json,
  }) => value.listSync(recursive: true).forEach((file) {
    if (file is! File) return;
    final name = basename(file.path);
    if (name.endsWith(".$format")) withFile(file, withoutExtension(name));
  });
}
