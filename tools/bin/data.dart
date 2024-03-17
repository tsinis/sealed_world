import "package:cli/generators/collections_generator.dart";
import "package:cli/utils/args_parser.dart";

/// Usage: `dart run :data sealed_currencies`.
Future<void> main(List<String> args) {
  final package = ArgsParser(args).maybePackageName();

  return const CollectionsGenerator().generate(package);
}
