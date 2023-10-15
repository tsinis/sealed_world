import "package:args/args.dart";
import "package:change_case/change_case.dart";
import "package:cli/exports/exports_generator.dart";
import "package:cli/models/package.dart";

/// Usage: `dart run :exports sealed_languages`.
Future<void> main(List<String> args) {
  final parser = ArgParser();
  for (final package in Package.values) parser.addCommand(package.dirName);
  final maybeCommand = parser.parse(args).command?.name?.toCamelCase();
  if (maybeCommand?.isEmpty ?? true) return ExportsGenerator.run();
  final maybePackage = Package.values.byName(maybeCommand ?? "");

  return ExportsGenerator.run(maybePackage);
}
