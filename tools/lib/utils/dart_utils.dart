import "dart:io";

final class DartUtils {
  const DartUtils();

  Future<void> run(List<String> arguments) async {
    final result = await Process.run("dart", arguments);
    // ignore: avoid_print, it's just a CLI tool, not a production code.
    if (result.exitCode != 0) print(result.stderr);
  }

  Future<void> pub(List<String> arguments, {bool isGlobal = false}) => run([
        "pub",
        if (isGlobal) ...["global"] else ...[],
        ...arguments,
      ]);

  Future<void> pubGet() => pub(["get"]);

  Future<void> fixFormat() async {
    await fixApply();
    await format();
  }

  Future<void> fixApply() => run(["fix", "--apply"]);
  Future<void> format() => run(["format", "."]);
}
