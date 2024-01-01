import "cli/build_cleaner.dart";

void main(List<String> arguments) {
  final cleaner = BuildCleaner();
  if (arguments.any(["-h", "--help"].contains)) return cleaner.printHelp();

  final index = arguments.indexOf("--keep");
  if (index.isNegative || arguments.length <= index + 1) return cleaner.clean();

  final keepValues = arguments[index + 1].split(",");
  cleaner.checkArguments(keepValues);
}
