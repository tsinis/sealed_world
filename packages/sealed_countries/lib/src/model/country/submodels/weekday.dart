part "weekday.g.dart";

enum Weekday {
  monday("Monday", labelShort: "Mon"),
  tuesday("Tuesday", labelShort: "Tue"),
  wednesday("Wednesday", labelShort: "Wed"),
  thursday("Thursday", labelShort: "Thu"),
  friday("Friday", labelShort: "Fri"),
  saturday("Saturday", labelShort: "Sat"),
  sunday("Sunday", labelShort: "Sun");

  const Weekday(this.label, {required this.labelShort});

  final String label;
  final String labelShort;
}
