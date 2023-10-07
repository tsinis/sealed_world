import "dart:io";

final class CodeUtils {
  const CodeUtils();

  String readContentUntilFound(String filePath, {String searchFor = "///"}) {
    final lines = File(filePath).readAsLinesSync();
    final buffer = StringBuffer();

    for (final line in lines) {
      if (line.contains(searchFor)) break;
      buffer.writeln(line);
    }

    return buffer.toString();
  }
}
