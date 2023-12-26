import "dart:io";

import "package:path/path.dart";

import "../constants/path_constants.dart";

export "dart:io";

export "package:path/path.dart";

final class IoUtils {
  IoUtils([Directory? directory]) : _dirCache = directory ?? Directory.current;

  final Directory _dirCache;

  set directory(Directory directory) => Directory.current = directory;
  Directory get directory => _dirCache;

  File copyFile(String sourcePath, Directory destination, String filename) {
    final destinationFile = File(join(destination.path, filename));
    if (!destination.existsSync()) destination.createSync(recursive: true);
    destinationFile.writeAsBytesSync(File(sourcePath).readAsBytesSync());

    return destinationFile;
  }

  Directory createDirectory(String path) {
    final directory = Directory(path);
    if (!directory.existsSync()) directory.createSync(recursive: true);

    return directory;
  }

  File? writeContentToFile(String filePath, Object buffer) {
    final content = buffer.toString();
    if (content.length <= 5) return null;
    final file = File(filePath);

    if (!file.existsSync()) {
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

  void deleteDirectory(Directory directory) =>
      directory.existsSync() ? directory.deleteSync(recursive: true) : null;

  void resetCurrentDir() => directory = _dirCache;

  void moveJsonFiles(Directory source, [Directory? destination]) {
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
    Directory directory, {
    required void Function(File file, String filename) withFile,
    String format = PathConstants.json,
  }) =>
      directory.listSync(recursive: true).forEach((file) {
        if (file is! File) return;
        final name = basename(file.path);
        if (name.endsWith(".$format")) withFile(file, withoutExtension(name));
      });
}
