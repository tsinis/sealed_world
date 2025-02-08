import "package:sealed_currencies/sealed_currencies.dart";

part "weekday.g.dart";

/// An enum that represents the days of the week.
///
/// The [Weekday] enum is a simple enumeration that represents the days of the
/// week. Each enumeration value has a corresponding label that represents the
/// name of the day.
///
/// Example usage:
///
/// ```dart
/// final monday = Weekday.monday;
/// print(monday.label); // Prints: "Monday"
/// ```
enum Weekday implements JsonEncodable<Weekday> {
  /// Represents Monday.
  monday("Monday"),

  /// Represents Tuesday.
  tuesday("Tuesday"),

  /// Represents Wednesday.
  wednesday("Wednesday"),

  /// Represents Thursday.
  thursday("Thursday"),

  /// Represents Friday.
  friday("Friday"),

  /// Represents Saturday.
  saturday("Saturday"),

  /// Represents Sunday.
  sunday("Sunday");

  /// Creates a new [Weekday] object with the given label.
  const Weekday(this.label);

  /// The label that corresponds to this `Weekday` object.
  final String label;

  @override
  String toJson({JsonCodec codec = const JsonCodec()}) => codec.encode(toMap());

  /// {@macro to_map_method}
  Map<String, String> toMap() => {"weekday": name};

  /// {@macro from_map_method}
  static Weekday fromMap(JsonMap map) =>
      values.byName(map.values.first.toString());
}
