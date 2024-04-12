import "dart:collection" show MapView;

import "package:sealed_languages/src/data/natural_languages.data.dart";
import "package:sealed_languages/src/interfaces/iso_standardized.dart";
import "package:sealed_languages/src/model/core/upper_case_iso_map.dart";
import "package:test/test.dart";

void main() => group("$UpperCaseIsoMap", () {
      const eng = "ENG";
      const nonEng = "De";
      const defaultMap = {eng: LangEng()};
      const map = UpperCaseIsoMap(defaultMap, exactLength: null);

      test("interfaces", () {
        expect(map, isA<Map<String, IsoStandardized>>());
        expect(map, isA<MapView<String, IsoStandardized>>());
      });

      test("should return defaultValue when key is not present", () {
        const defaultValue = LangRus();
        const mapOther =
            UpperCaseIsoMap(defaultMap, defaultValue: defaultValue);
        expect(mapOther[nonEng], defaultValue);
      });

      test("should return null if there is no exactLength match", () {
        const mapOther = UpperCaseIsoMap(defaultMap, exactLength: 1);
        expect(mapOther[eng.toLowerCase()], isNull);
      });

      test("should return null if there is no maxLength match", () {
        const mapOther = UpperCaseIsoMap(
          defaultMap,
          exactLength: null,
          maxLength: 2,
          minLength: 1,
        );
        expect(mapOther[eng], isNull);
      });

      test("should return null if there is no minLength match", () {
        const mapOther = UpperCaseIsoMap(
          defaultMap,
          exactLength: null,
          maxLength: 5,
          minLength: 4,
        );
        expect(mapOther[eng], isNull);
      });

      test(
        "should return null when key is not present and no defaultValue",
        () => expect(map[nonEng], isNull),
      );

      test("should interpret keys as ISO standardized codes", () {
        expect(map[eng], isNotNull);
        expect(map[eng]?.name, equals("English"));
      });

      test(
        "containsKey should return true for present keys",
        () => expect(map.containsKey(eng), isTrue),
      );

      test(
        "containsKey should return false for absent keys",
        () => expect(map.containsKey(nonEng), isFalse),
      );

      test(
        "toString should return a string representation of the map",
        () => expect(map.toString(), '{$eng: Language(name: "English")}'),
      );

      group("standard map methods", () {
        test(
          "containsValue",
          () => expect(map.containsValue(defaultMap.values.first), isTrue),
        );

        test("values", () => expect(map.values, defaultMap.values));
        test("keys", () => expect(map.keys, defaultMap.keys));
        test("isEmpty", () => expect(map.isEmpty, isFalse));
        test("isNotEmpty", () => expect(map.isNotEmpty, isTrue));
        test("length", () => expect(map.length, 1));
        test(
          "entries",
          () {
            final expectedEntries =
                map.entries.map((entry) => "${entry.key}: ${entry.value})");
            final actualEntries = defaultMap.entries
                .map((entry) => "${entry.key}: ${entry.value})");
            expect(expectedEntries, equals(actualEntries));
          },
        );
      });

      group("unsupported errors", () {
        test(
          "adAll",
          () => expect(() => map.addAll(defaultMap), throwsUnsupportedError),
        );

        test(
          "addEntries",
          () => expect(
            () => map.addEntries(defaultMap.entries),
            throwsUnsupportedError,
          ),
        );

        test("clear", () => expect(() => map.clear(), throwsUnsupportedError));

        test("remove", () {
          expect(() => map.remove(eng), throwsUnsupportedError);
        });

        test("removeWhere", () {
          expect(
            () => map.removeWhere((key, value) => true),
            throwsUnsupportedError,
          );
        });

        test("update", () {
          expect(
            () => map.update(eng, (value) => value),
            throwsUnsupportedError,
          );
        });

        test(
          "updateAll",
          () => expect(
            () => map.updateAll((key, value) => value),
            throwsUnsupportedError,
          ),
        );

        test(
          "addEntries",
          () => expect(
            () => map.addEntries(defaultMap.entries),
            throwsUnsupportedError,
          ),
        );

        test(
          "putIfAbsent",
          () => expect(
            () => map.putIfAbsent(nonEng, LangEng.new),
            throwsUnsupportedError,
          ),
        );
      });
    });
