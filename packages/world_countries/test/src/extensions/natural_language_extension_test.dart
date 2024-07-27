import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/extensions/natural_language_extension.dart";
import "package:world_flags/world_flags.dart";

void main() => group("NaturalLanguageExtension ", () {
      final value = NaturalLanguage.list.first;

      group("toLocale", () {
        test(
          "should return correct $Locale instance with codeShort",
          () => expect(value.toLocale(), Locale(value.codeShort.toLowerCase())),
        );

        test(
          "should return correct $Locale instance with all properties",
          () {
            const countryCode = "countryCode";
            const scriptCode = "scriptCode";
            expect(
              value.toLocale(countryCode: countryCode, scriptCode: scriptCode),
              Locale.fromSubtags(
                languageCode: value.codeShort.toLowerCase(),
                scriptCode: scriptCode,
                countryCode: countryCode,
              ),
            );
          },
        );
      });
    });
