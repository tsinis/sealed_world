import "dart:io" show Directory, File;

/// Usage: `dart run cli:workspace_cleaner`.
void main() {
  const content = "- packages/world_";
  final file = File("${Directory.current.parent.parent.path}/pubspec.yaml");
  final fileContent = file.readAsStringSync();
  final updatedContent = fileContent.replaceAll(content, "# $content");
  file.writeAsStringSync(updatedContent);
  // ignore: avoid_print, this is just CLI helper script for pure-Dart packages.
  print("Commented out Flutter packages in ${file.path}");
}
