import "package:cli/generators/data_list_generator.dart";
import "package:cli/models/package.dart";
import "package:cli/utils/args_parser.dart";

/// Usage: `dart run :data sealed_currencies`.
Future<void> main(List<String> args) {
  final package = ArgsParser(args).maybePackageName();

  return const DataListGenerator().generate(package ?? Package.sealedCountries);
}
