import "dart:collection" show UnmodifiableListView;

import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/extensions/models/search_data_extension.dart";
import "package:world_countries/src/model/search_data.dart";

void main() => group("SearchDataExtension", () {
  group("anyName", () {
    test("should return name when it is not null", () {
      final searchData = SearchData(
        "International Name",
        const {"Native 1", "Native 2"},
        code: "CODE",
        name: "Regular Name",
      );

      expect(searchData.anyName, "Regular Name");
    });

    test("should return internationalName when name is null", () {
      final searchData = SearchData(
        "International Name",
        const {"Native 1"},
        code: "CODE",
        name: null,
      );

      expect(searchData.anyName, "International Name");
    });

    test(
      "should return internationalName when name is null via empty constructor",
      () {
        final searchData = SearchData.empty(
          internationalName: "International Name",
        );

        expect(searchData.anyName, "International Name");
      },
    );

    test("should return name when it is not null using empty constructor", () {
      final searchData = SearchData.empty(
        internationalName: "International Name",
        name: "Regular Name",
      );

      expect(searchData.anyName, "Regular Name");
    });
  });

  group("copyWith", () {
    SearchData originalData = SearchData.empty();

    setUp(
      () => originalData = SearchData(
        "Original International",
        const {"Native 1", "Native 2"},
        code: "ORIG",
        name: "Original Name",
        other: "Other Data",
        others: const ["Other 1", "Other 2"],
      ),
    );

    test("should override code when provided", () {
      final result = originalData.copyWith(code: "NEW_CODE");

      expect(result.code, "NEW_CODE");
      expect(result.internationalName, originalData.internationalName);
      expect(result.name, originalData.name);
      expect(result.namesNative, originalData.namesNative);
      expect(result.other, originalData.other);
      expect(result.others, originalData.others);
    });

    test("should override internationalName when provided", () {
      final result = originalData.copyWith(
        internationalName: "New International",
      );

      expect(result.internationalName, "New International");
      expect(result.code, originalData.code);
      expect(result.name, originalData.name);
      expect(result.namesNative, originalData.namesNative);
      expect(result.other, originalData.other);
      expect(result.others, originalData.others);
    });

    test("should override name when provided", () {
      final result = originalData.copyWith(name: "New Name");

      expect(result.name, "New Name");
      expect(result.code, originalData.code);
      expect(result.internationalName, originalData.internationalName);
      expect(result.namesNative, originalData.namesNative);
      expect(result.other, originalData.other);
      expect(result.others, originalData.others);
    });

    test("should override namesNative when provided", () {
      const newNatives = {"New Native 1", "New Native 2", "New Native 3"};
      final result = originalData.copyWith(namesNative: newNatives);

      expect(result.namesNative, newNatives);
      expect(result.code, originalData.code);
      expect(result.internationalName, originalData.internationalName);
      expect(result.name, originalData.name);
      expect(result.other, originalData.other);
      expect(result.others, originalData.others);
    });

    test("should override other when provided", () {
      final result = originalData.copyWith(other: "New Other");

      expect(result.other, "New Other");
      expect(result.code, originalData.code);
      expect(result.internationalName, originalData.internationalName);
      expect(result.name, originalData.name);
      expect(result.namesNative, originalData.namesNative);
      expect(result.others, originalData.others);
    });

    test("should override others when provided", () {
      const newOthers = ["Other A", "Other B"];
      final result = originalData.copyWith(others: newOthers);

      expect(result.others, newOthers);
      expect(result.code, originalData.code);
      expect(result.internationalName, originalData.internationalName);
      expect(result.name, originalData.name);
      expect(result.namesNative, originalData.namesNative);
      expect(result.other, originalData.other);
    });

    test("should preserve all original values when no parameters provided", () {
      final result = originalData.copyWith();

      expect(result.code, originalData.code);
      expect(result.internationalName, originalData.internationalName);
      expect(result.name, originalData.name);
      expect(result.namesNative, originalData.namesNative);
      expect(result.other, originalData.other);
      expect(result.others, originalData.others);
    });

    test("should override multiple fields simultaneously", () {
      final result = originalData.copyWith(
        code: "MULTI",
        name: "Multi Name",
        other: "Multi Other",
      );

      expect(result.code, "MULTI");
      expect(result.name, "Multi Name");
      expect(result.other, "Multi Other");
      expect(result.internationalName, originalData.internationalName);
      expect(result.namesNative, originalData.namesNative);
      expect(result.others, originalData.others);
    });

    test("should work with SearchData created from empty constructor", () {
      final emptyData = SearchData.empty(
        code: "EMPTY",
        internationalName: "Empty International",
      );

      final result = emptyData.copyWith(name: "New Name", other: "New Other");

      expect(result.code, "EMPTY");
      expect(result.internationalName, "Empty International");
      expect(result.name, "New Name");
      expect(result.other, "New Other");
    });

    test("should handle null values correctly", () {
      final dataWithNulls = SearchData(
        "International",
        const {},
        code: "CODE",
        name: null,
      );

      final result = dataWithNulls.copyWith(
        name: "Added Name",
        other: "Added Other",
      );

      expect(result.name, "Added Name");
      expect(result.other, "Added Other");
      expect(result.code, dataWithNulls.code);
      expect(result.internationalName, dataWithNulls.internationalName);
    });

    test("should create new SearchData instance", () {
      final result = originalData.copyWith(code: "NEW");

      expect(result, isNot(same(originalData)));
      expect(result, isA<SearchData>());
    });
  });

  group("integration with SearchData constructors", () {
    test("should work with standard constructor with all parameters", () {
      final searchData = SearchData(
        "Test International",
        const {"Native 1", "Native 2"},
        code: "TEST",
        name: "Test Name",
        other: "Test Other",
        others: const ["Other 1", "Other 2"],
      );

      expect(searchData.anyName, "Test Name");

      final copied = searchData.copyWith(code: "COPY");
      expect(copied.code, "COPY");
      expect(copied.anyName, "Test Name");
    });

    test("should work with standard constructor with minimal parameters", () {
      final searchData = SearchData(
        "Minimal International",
        const {},
        code: "MIN",
        name: null,
      );

      expect(searchData.anyName, "Minimal International");

      final copied = searchData.copyWith(name: "Added Name");
      expect(copied.anyName, "Added Name");
    });

    test("should work with empty constructor with default values", () {
      final searchData = SearchData.empty();

      expect(searchData.code, "");
      expect(searchData.internationalName, "");
      expect(searchData.name, isNull);
      expect(searchData.namesNative, isEmpty);
      expect(searchData.anyName, "");

      final copied = searchData.copyWith(
        code: "ADDED",
        internationalName: "Added International",
      );
      expect(copied.code, "ADDED");
      expect(copied.internationalName, "Added International");
    });

    test("should work with empty constructor with all parameters", () {
      final searchData = SearchData.empty(
        code: "EMPTY",
        internationalName: "Empty International",
        name: "Empty Name",
        namesNative: const {"Empty Native"},
        other: "Empty Other",
        others: const ["Empty Others"],
      );

      expect(searchData.anyName, "Empty Name");
      expect(searchData.code, "EMPTY");
      expect(searchData.internationalName, "Empty International");
      expect(searchData.namesNative, {"Empty Native"});
      expect(searchData.other, "Empty Other");
      expect(searchData.others, ["Empty Others"]);

      final copied = searchData.copyWith(name: "Modified Name");
      expect(copied.anyName, "Modified Name");
      expect(copied.code, "EMPTY");
    });

    test("should preserve list view functionality after copyWith", () {
      final searchData = SearchData(
        "Test",
        const {"Native"},
        code: "CODE",
        name: "Name",
        other: "Other",
      );

      expect(searchData, isA<UnmodifiableListView<String>>());
      expect(searchData, contains("Name"));
      expect(searchData, contains("Native"));
      expect(searchData, contains("Test"));
      expect(searchData, contains("CODE"));
      expect(searchData, contains("Other"));

      final copied = searchData.copyWith(code: "NEW");
      expect(copied, contains("Name"));
      expect(copied, contains("Native"));
      expect(copied, contains("Test"));
      expect(copied, contains("NEW"));
    });
  });

  group("edge cases", () {
    test("should handle empty namesNative in both constructors", () {
      final standard = SearchData(
        "International",
        const {},
        code: "CODE",
        name: "Name",
      );

      final empty = SearchData.empty(
        internationalName: "International",
        code: "CODE",
        name: "Name",
      );

      expect(standard.anyName, "Name");
      expect(empty.anyName, "Name");
      expect(standard.namesNative, isEmpty);
      expect(empty.namesNative, isEmpty);
    });

    test("should handle very long strings", () {
      final longString = "A" * 1000;
      final searchData = SearchData(
        longString,
        {longString},
        code: longString,
        name: longString,
      );

      expect(searchData.anyName, longString);
      expect(searchData.code, longString);

      final copied = searchData.copyWith(code: "SHORT");
      expect(copied.code, "SHORT");
      expect(copied.anyName, longString);
    });

    test("should handle special characters", () {
      // ignore: avoid-non-ascii-symbols, it's a test.
      const special = "🌍 Test™ © \n\t";
      final searchData = SearchData(
        special,
        const {special},
        code: special,
        name: special,
      );

      expect(searchData.anyName, special);
      final copied = searchData.copyWith(other: special);
      expect(copied.other, special);
    });
  });
});
