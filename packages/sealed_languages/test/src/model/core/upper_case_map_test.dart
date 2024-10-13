import "dart:collection" show MapView;

import "package:sealed_languages/src/model/core/upper_case_map.dart";
import "package:test/test.dart";

import "../../test_data.dart";

void main() => group("$UpperCaseMap", () {
      const eng = "ENG";
      const nonEng = "De";
      const defaultMap = {eng: TestData.cn};
      const map = UpperCaseMap(defaultMap);

      test("interfaces", () {
        expect(map, isA<Map<String, TestData>>());
        expect(map, isA<MapView<String, TestData>>());
        expect(map, isA<Map<String, Object>>());
        expect(map, isA<MapView<String, Object>>());
      });

      test("should return defaultValue when key is not present", () {
        const defaultValue = TestData.rus;
        const mapOther = UpperCaseMap(defaultMap, defaultValue: defaultValue);
        expect(mapOther[nonEng], defaultValue);
      });

      test(
        "should return null when key is not present and no defaultValue",
        () => expect(map[nonEng], isNull),
      );

      test("should interpret keys as ISO standardized codes", () {
        expect(map[eng], isNotNull);
        expect(map[eng]?.name, equals(TestData.cn.name));
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
        () => expect(map.toString(), "{$eng: TestData.cn}"),
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
        test("entries", () {
          final expectedEntries =
              map.entries.map((entry) => "${entry.key}: ${entry.value})");
          final actualEntries = defaultMap.entries
              .map((entry) => "${entry.key}: ${entry.value})");
          expect(expectedEntries, equals(actualEntries));
        });
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
            () => map.putIfAbsent(nonEng, () => TestData.cn),
            throwsUnsupportedError,
          ),
        );
      });
    });
