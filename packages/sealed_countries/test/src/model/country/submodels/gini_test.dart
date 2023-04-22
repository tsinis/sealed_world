import "package:sealed_countries/sealed_countries.dart";
import "package:test/test.dart";

void main() => group("GiniExtension", () {
      test("dateTime", () {
        final year = DateTime.now().year;
        expect(Gini(year: year, value: 1).dateTime, DateTime(year));
      });
    });
