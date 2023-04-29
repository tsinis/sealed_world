part "weekday.g.dart";

enum Weekday {
  monday("Monday"),
  tuesday("Tuesday"),
  wednesday("Wednesday"),
  thursday("Thursday"),
  friday("Friday"),
  saturday("Saturday"),
  sunday("Sunday");

  const Weekday(this.label);

  final String label;
}
