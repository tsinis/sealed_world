import "package:sealed_countries/sealed_countries.dart";
import "package:test/test.dart";

import "../../../test_data.dart";

void main() => group("GiniExtension", () {
      test("dateTime", () {
        final year = DateTime.now().year;

        expect(
          Gini(year: year, coefficient: TestData.float).dateTime,
          DateTime(year),
        );
      });
    });
