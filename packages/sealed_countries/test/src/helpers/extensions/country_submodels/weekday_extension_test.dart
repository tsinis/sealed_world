import "package:sealed_countries/src/helpers/extensions/country_submodels/weekday_extension.dart";
import "package:sealed_countries/src/model/country/submodels/weekday.dart";
import "package:test/test.dart";

void main() => group("WeekdayExtension", () {
  test("labelShort", () {
    expect(Weekday.monday.labelShort, "Mon");
    expect(Weekday.tuesday.labelShort, "Tue");
    expect(Weekday.wednesday.labelShort, "Wed");
    expect(Weekday.thursday.labelShort, "Thu");
    expect(Weekday.friday.labelShort, "Fri");
    expect(Weekday.saturday.labelShort, "Sat");
    expect(Weekday.sunday.labelShort, "Sun");
  });
});
