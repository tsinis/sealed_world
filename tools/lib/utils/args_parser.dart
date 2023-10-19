import "package:args/args.dart";
import "package:change_case/change_case.dart";

import "../models/package.dart";

final class ArgsParser {
  const ArgsParser(this.args);

  final List<String> args;

  Package? maybePackageName() {
    final parser = ArgParser();
    for (final package in Package.values) parser.addCommand(package.dirName);
    final command = parser.parse(args).command?.name?.toCamelCase();

    // ignore: avoid-non-null-assertion, null-checked during [isEmpty] check.
    return command?.isEmpty ?? true ? null : Package.values.byName(command!);
  }
}
