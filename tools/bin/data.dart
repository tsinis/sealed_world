import "package:cli/generators/bool_getters_generator.dart";
import "package:cli/utils/args_parser.dart";

/// Usage: `dart run :data sealed_currencies`.
Future<void> main(List<String> args) {
  final package = ArgsParser(args).maybePackageName();
  if (package == null) throw ArgumentError("Package name should be provided.");

  return const BoolGettersGenerator().generate(package);
}
