@TestOn("vm")
library;

import "package:skills_lint/skills_lint.dart";
import "package:test/test.dart";

/// Lints the Agent Skills this package publishes in its `skills/` directory,
/// with the rules shared by all packages in `packages/skills_lint.yaml`.
void main() => test("published skills pass skills_lint", () async {
  final config = await ConfigParser.loadConfig(path: "../skills_lint.yaml");
  expect(
    config.parsingErrors,
    const <String>[],
    reason: "the shared config is valid",
  );

  final isValid = await validateSkills(
    config: config,
    skillDirPaths: const ["skills"],
  );
  expect(isValid, true, reason: "skills_lint findings are printed above");
});
