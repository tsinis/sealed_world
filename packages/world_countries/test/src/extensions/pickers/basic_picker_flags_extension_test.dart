import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/extensions/pickers/basic_picker_flags_extension.dart";
import "package:world_flags/world_flags.dart";

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group("BasicPickerFlagsExtension", () {
    group("adaptFlags", () {
      final firstCountry = WorldCountry.list.first;
      final secondCountry = WorldCountry.list.elementAt(1);
      final firstCurrency = FiatCurrency.list.first;
      final secondCurrency = FiatCurrency.list.elementAt(1);
      final testCurrency3 = FiatCurrency.list.elementAt(2);

      // Get flags from the internal map used by the extension.
      final firstFlag = smallSimplifiedFlagsMap[firstCountry]!;
      final secondFlag = smallSimplifiedFlagsMap[secondCountry]!;

      test("should return original map when itemsMap is empty", () {
        final originalMap = <FiatCurrency, BasicFlag>{firstCurrency: firstFlag};
        final result = originalMap.adaptFlags(const {});

        expect(result, originalMap);
      });

      test("should preserve custom flags when present in original map", () {
        final customFlag = firstFlag;
        final originalMap = <FiatCurrency, BasicFlag>{
          firstCurrency: customFlag,
        };
        final result = originalMap.adaptFlags({
          firstCurrency: [firstCountry],
        });

        expect(result[firstCurrency], customFlag);
      });

      test(
        "should use locale country flag when currency is used by that country",
        () {
          final originalMap = <FiatCurrency, BasicFlag>{};

          final result = originalMap.adaptFlags(
            {
              firstCurrency: [firstCountry, secondCountry],
            },
            localeCountry: firstCountry, // Dart 3.8 formatting.
          );

          expect(result[firstCurrency], isA<BasicFlag>());
          expect(result.containsKey(firstCurrency), isTrue);
        },
      );

      test(
        """should use fallback flag when countries list is empty and fallback provided""",
        () {
          final fallbackFlag = secondFlag;
          final originalMap = <FiatCurrency, BasicFlag>{};

          final result = originalMap.adaptFlags(
            {firstCurrency: []},
            fallbacksMap: {firstCurrency: fallbackFlag},
          );

          expect(result[firstCurrency], fallbackFlag);
        },
      );

      test(
        """should not use fallback when countries list is empty but fallback is null""",
        () {
          final originalMap = <FiatCurrency, BasicFlag>{};

          final result = originalMap.adaptFlags(
            {firstCurrency: []},
            fallbacksMap: {secondCurrency: secondFlag},
          );

          expect(result.containsKey(firstCurrency), isFalse);
        },
      );

      test("should use first country flag when locale country not in list", () {
        final originalMap = <FiatCurrency, BasicFlag>{};

        final result = originalMap.adaptFlags(
          {
            firstCurrency: [secondCountry],
          },
          localeCountry: firstCountry, // Dart 3.8 formatting.
        );

        expect(result[firstCurrency], isA<BasicFlag>());
        expect(result.containsKey(firstCurrency), isTrue);
      });

      test("should handle multiple currencies with different scenarios", () {
        final fallbackFlag = secondFlag;
        final customFlag = firstFlag;
        final originalMap = <FiatCurrency, BasicFlag>{
          firstCurrency: customFlag,
        };

        final result = originalMap.adaptFlags(
          {
            firstCurrency: [firstCountry], // Has custom flag.
            secondCurrency: [], // Empty list, should use fallback.
            testCurrency3: [secondCountry], // Should use first country.
          },
          fallbacksMap: {secondCurrency: fallbackFlag},
          localeCountry: firstCountry,
        );

        expect(result[firstCurrency], customFlag);
        expect(result[secondCurrency], fallbackFlag);
        expect(result[testCurrency3], isA<BasicFlag>());
      });

      test("should apply custom flagsMapper when provided", () {
        bool mapperCalled = false;
        final customFlag = firstFlag;
        final mappedFlag = secondFlag;

        final originalMap = <FiatCurrency, BasicFlag>{
          firstCurrency: customFlag,
        };

        final result = originalMap.adaptFlags(
          {
            firstCurrency: [firstCountry],
          },
          // ignore: prefer-extracting-function-callbacks, this is test.
          flagsMapper: (flag, item, countries) {
            mapperCalled = true;
            expect(flag, customFlag);
            expect(item, firstCurrency);
            expect(countries, [firstCountry]);

            return mappedFlag;
          },
        );

        expect(mapperCalled, isTrue);
        expect(result[firstCurrency], mappedFlag);
      });

      test("should use default mapper when flagsMapper is null", () {
        final customFlag = firstFlag;
        final originalMap = <FiatCurrency, BasicFlag>{
          firstCurrency: customFlag,
        };

        final result = originalMap.adaptFlags({
          firstCurrency: [firstCountry],
        });

        expect(result[firstCurrency], customFlag);
      });

      test("should handle fallback with custom mapper", () {
        final fallbackFlag = secondFlag;
        final mappedFlag = firstFlag;
        bool mapperCalledForFallback = false;

        final originalMap = <FiatCurrency, BasicFlag>{};

        final result = originalMap.adaptFlags(
          {firstCurrency: []},
          fallbacksMap: {firstCurrency: fallbackFlag},
          // ignore: prefer-extracting-function-callbacks, just a test.
          flagsMapper: (flag, item, countries) {
            if (flag == fallbackFlag && (countries?.isEmpty ?? false)) {
              mapperCalledForFallback = true;

              return mappedFlag;
            }

            return flag;
          },
        );

        expect(mapperCalledForFallback, isTrue);
        expect(result[firstCurrency], mappedFlag);
      });

      test("should work with WorldCountry type parameter", () {
        final originalMap = <WorldCountry, BasicFlag>{};

        final result = originalMap.adaptFlags(
          {
            firstCountry: [firstCountry],
          },
          localeCountry: firstCountry, // Dart 3.8 formatting.
        );

        expect(result[firstCountry], isA<BasicFlag>());
      });

      test("should work with NaturalLanguage type parameter", () {
        final testLanguage = NaturalLanguage.list.first;
        final originalMap = <NaturalLanguage, BasicFlag>{};

        final result = originalMap.adaptFlags(
          {
            testLanguage: [firstCountry],
          },
          localeCountry: firstCountry, // Dart 3.8 formatting.
        );

        expect(result[testLanguage], isA<BasicFlag>());
      });
    });
  });
}
