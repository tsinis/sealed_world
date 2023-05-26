import "package:flutter_test/flutter_test.dart";
import "package:sealed_countries/sealed_countries.dart";
import "package:world_countries/src/widgets/language/language_tile.dart";

void main() => group("$LanguageTile", () {
      test(
        "constructor",
        () => expect(
          LanguageTile(NaturalLanguage.list.first).autofocus,
          isNotNull,
        ),
      );
    });
