import "dart:convert";

import "package:sealed_currencies/sealed_currencies.dart";

import "../../../helpers/extensions/country_submodels/capital_extension.dart";

/// A class that represents a capital city.
///
/// The `Capital` class is a simple value object that represents a capital city.
/// It consists of a `String` value that represents the name of the capital, and
/// two optional `String` values that represent the de jure and third capitals
/// of the country. The `name` field must not be empty.
///
/// Example usage:
///
/// ```dart
/// final capital = const Capital("Ramallah", deJure: "Jerusalem");
/// print(capital.deFacto); // Prints: "Ramallah"
/// print(capital.deJure); // Prints: "Jerusalem"
/// print(capital.third); // Prints: null
/// ```
// Read more about the world's capitals
// https://en.wikipedia.org/wiki/List_of_countries_with_multiple_capitals
// Reference (Wikipedia).
final class Capital implements JsonEncodable<Capital> {
  /// Creates a new `Capital` object with the given name and optional de jure
  /// and third values.
  ///
  /// The `name` parameter must not be empty.
  const Capital(String name, {this.deJure, this.third})
      : deFacto = name,
        assert(name.length > 0, "`name` of capital should not be empty!"),
        assert(
          deJure == null || deJure.length > 0,
          "`deJure` should not be empty!",
        ),
        assert(
          third == null || third.length > 0,
          "`third` should not be empty!",
        );

  /// The de facto name of this capital.
  final String deFacto;

  /// The de jure name of this capital.
  final String? deJure;

  /// The name of the third capital (if any) of this country.
  final String? third;

  @override
  String toString({bool short = true}) => short
      ? "$Capital($deFacto)"
      : '''$Capital("$deFacto", deJure: ${deJure == null ? null : '"$deJure"'}, third: ${third == null ? null : '"$third"'})''';

  @override
  String toJson({JsonCodec codec = const JsonCodec()}) => codec.encode(toMap());

  @override
  bool operator ==(covariant Capital other) {
    if (identical(this, other)) return true;

    return other.deFacto == deFacto &&
        other.deJure == deJure &&
        other.third == other.third;
  }

  @override
  int get hashCode => deFacto.hashCode ^ deJure.hashCode ^ third.hashCode;
}
