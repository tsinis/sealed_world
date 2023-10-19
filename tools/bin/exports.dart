import "package:cli/exports/exports_generator.dart";
import "package:cli/utils/args_parser.dart";

/// Usage: `dart run :exports sealed_languages`.
Future<void> main(List<String> args) {
  final maybePackage = ArgsParser(args).maybePackageName();

  return ExportsGenerator.run(maybePackage);
}
