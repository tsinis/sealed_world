import "dart:io";

import "package:sealed_countries/src/helpers/extensions/iterable_natural_language_extension.dart";
import "package:sealed_currencies/sealed_currencies.dart";
import "package:test/test.dart";

void main() => group("IterableNaturalLanguageExtension", () {
  test("byCountryMap() compare to README", () {
    final buffer = StringBuffer(
      "| Code | Language | Main Country | Other Countries |\n"
      "| ---- | -------- | ------------ | --------------- |\n",
    );

    final map = NaturalLanguage.list.byCountryMap()
      ..forEach(
        (language, countries) => buffer.writeln(
          "| ${language.code} | ${language.internationalName} | "
          // ignore: avoid-non-ascii-symbols, this is just a test.
          "${countries.firstOrNull?.emoji ?? '🇺🇳'} "
          "${countries.firstOrNull?.internationalName ?? 'Constructed'} | "
          "${countries.skip(1).map((i) => i.emoji).join()} |",
        ),
      );
    expect(map.length, NaturalLanguage.list.length);

    buffer.writeln("\n> Generated (by test) file, do not edit manually.");
    final readmeFile = File("lib/src/collections/README.languages.md");
    final newContent = buffer.toString();

    expect(
      readmeFile.readAsStringSync(),
      newContent,
      reason:
          "${readmeFile.path} was updated. Please review and commit the changes"
          " if they are correct.",
      skip: false,
    );

    readmeFile.writeAsStringSync(newContent);
  });
});
