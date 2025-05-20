// ignore_for_file: avoid-non-ascii-symbols
import "package:cli/constants/path_constants.dart";
import "package:cli/generators/l10n_data_generator.dart";
import "package:cli/utils/args_parser.dart";
import "package:cli/utils/io_utils.dart";

/// Usage: `dart run :l10n_data sealed_languages`.
Future<void> main(List<String> args) {
  final package = ArgsParser(args).maybePackageName();
  if (package == null) throw ArgumentError("Package name should be provided.");

  final dirName = package.dirName;
  final path = join(
    "../",
    PathConstants.packages,
    dirName,
    "lib",
    PathConstants.src,
    PathConstants.src,
  );

  final generator = L10NDataGenerator(package);

  return generator.generate(path);
}
