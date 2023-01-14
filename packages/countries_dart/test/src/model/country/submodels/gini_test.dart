import "package:countries_dart/src/model/country/submodels/gini.dart";
import "package:test/test.dart";

void main() => group("$Gini", () {
      test("dateTime", () {
        final year = DateTime.now().year;
        expect(Gini(year: year, value: 1).dateTime, DateTime(year));
      });
    });
