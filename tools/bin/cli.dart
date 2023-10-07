import "package:cli/exports/exports_generator.dart";

Future<void> main(List<String> arguments) async {
  await ExportsGenerator.run();
}
