import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/models/search_data.dart";

void main() => group("$SearchData", () {
  group("toString", () {
    group("with short: true (default)", () {
      test("should return short string representation", () {
        final searchData = SearchData(
          "International Name",
          const {"Native 1", "Native 2"},
          code: "CODE",
          name: "Name",
          other: "Other",
          others: const ["Others 1", "Others 2"],
        );

        final result = searchData.toString();

        expect(result, equals(searchData.toList().toString()));
      });

      test("should work with SearchData.empty", () {
        final searchData = SearchData.empty(
          code: "EMPTY",
          internationalName: "Empty International",
          name: "Empty Name",
        );

        final result = searchData.toString();

        expect(result, equals(searchData.toList().toString()));
      });

      test("should explicitly work with short: true parameter", () {
        final searchData = SearchData(
          "Test",
          const {},
          code: "CODE",
          name: "Name",
        );

        final result = searchData.toString();

        expect(result, equals(searchData.toList().toString()));
      });
    });

    group("with short: false", () {
      test("should return formatted string with all non-null parameters", () {
        final searchData = SearchData(
          "International Name",
          const {"Native 1", "Native 2"},
          code: "CODE",
          name: "Name",
          other: "Other",
          others: const ["Others 1", "Others 2"],
        );

        final result = searchData.toString(short: false);

        expect(result, contains("International Name"));
        expect(result, contains("Native 1"));
        expect(result, contains("Native 2"));
        expect(result, contains('code: "CODE"'));
        expect(result, contains('name: "Name"'));
        expect(result, contains('other: "Other"'));
        expect(result, contains("Others 1"));
        expect(result, contains("Others 2"));
      });

      test("should handle null name parameter", () {
        final searchData = SearchData(
          "International",
          const {"Native"},
          code: "CODE",
          name: null,
        );

        final result = searchData.toString(short: false);

        expect(result, contains("International"));
        expect(result, contains("Native"));
        expect(result, contains('code: "CODE"'));
        expect(result, contains('name: "null"'));
      });

      test("should handle null other parameter", () {
        final searchData = SearchData(
          "International",
          const {},
          code: "CODE",
          name: "Name",
        );

        final result = searchData.toString(short: false);

        expect(result, contains('other: "null"'));
      });

      test("should handle null others parameter", () {
        final searchData = SearchData(
          "International",
          const {},
          code: "CODE",
          name: "Name",
        );

        final result = searchData.toString(short: false);

        expect(result, contains('others: "null"'));
      });

      test("should handle empty namesNative", () {
        final searchData = SearchData(
          "International",
          const {},
          code: "CODE",
          name: "Name",
        );

        final result = searchData.toString(short: false);

        expect(result, contains("International"));
        expect(result, contains('code: "CODE"'));
        expect(result, contains('name: "Name"'));
      });

      test("should work with SearchData.empty constructor", () {
        final searchData = SearchData.empty(
          code: "EMPTY",
          internationalName: "Empty International",
          name: "Empty Name",
          namesNative: const {"Empty Native"},
          other: "Empty Other",
          others: const ["Empty Others"],
        );

        final result = searchData.toString(short: false);

        expect(result, contains("Empty International"));
        expect(result, contains("Empty Native"));
        expect(result, contains('code: "EMPTY"'));
        expect(result, contains('name: "Empty Name"'));
        expect(result, contains('other: "Empty Other"'));
        expect(result, contains("Empty Others"));
      });

      test("should handle default values from SearchData.empty", () {
        final searchData = SearchData.empty();

        final result = searchData.toString(short: false);

        expect(result, contains('code: ""'));
        expect(result, contains('name: "null"'));
        expect(result, contains('other: "null"'));
        expect(result, contains('others: "null"'));
      });

      test("should produce string starting with SearchData(", () {
        final searchData = SearchData(
          "Test",
          const {},
          code: "CODE",
          name: "Name",
        );

        final result = searchData.toString(short: false);

        expect(result, startsWith("SearchData("));
      });

      test("should include all fields in output", () {
        final searchData = SearchData(
          "International",
          const {"Native"},
          code: "CODE",
          name: "Name",
          other: "Other",
          others: const ["Others"],
        );

        final result = searchData.toString(short: false);

        expect(result, contains("code:"));
        expect(result, contains("name:"));
        expect(result, contains("other:"));
        expect(result, contains("others:"));
      });
    });
  });
});
