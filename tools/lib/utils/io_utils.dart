import "dart:io";

import "package:path/path.dart";

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

  File writeContentToFile(String filePath, StringBuffer buffer) =>
      File(filePath)..writeAsStringSync(buffer.toString());

  void deleteFile(File file) => file.existsSync() ? file.deleteSync() : null;

  void resetCurrentDir() => directory = _dirCache;
}
