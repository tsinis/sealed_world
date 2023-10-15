import "package:args/args.dart";
import "package:change_case/change_case.dart";
import "package:cli/exports/exports_generator.dart";
import "package:cli/models/package.dart";

/// Usage: `dart run :exports sealed_languages`.
Future<void> main(List<String> args) {
  final arg = ArgParser();
  for (final pkg in Package.values) arg.addCommand(pkg.dirName);
  final maybeCommand = arg.parse(args).command?.name?.toCamelCase();
  if (maybeCommand?.isEmpty ?? true) return ExportsGenerator.run();
  final maybePackage = Package.values.byName(maybeCommand ?? "");

  return ExportsGenerator.run(maybePackage);
}
