import "dart:io";

final class DartUtils {
  const DartUtils();

  Future<void> run(
    List<String> arguments, {
    String process = "dart",
    String? workingDir,
  }) async {
    final result = await Process.run(
      process,
      arguments,
      workingDirectory: workingDir,
    );
    // ignore: avoid_print, it's just a CLI tool, not a production code.
    if (result.exitCode != 0) print(result.stderr);
  }

  Future<void> pub(List<String> arguments, {bool isGlobal = false}) => run([
    "pub",
    // ignore: avoid-empty-spread, it's CLI tool.
    if (isGlobal) "global" else ...[],
    ...arguments,
  ]);

  Future<void> pubGet() => pub(const ["get"]);

  Future<void> fixFormat() async {
    await fixApply();
    await format();
  }

  Future<void> fixApply() => run(const ["fix", "--apply"]);

  Future<void> format() => run(const ["format", "."]);

  Future<void> dcm({String? directory}) =>
      run(const ["fix", "."], process: "dcm", workingDir: directory);
}
