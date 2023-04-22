// ignore_for_file: public_member_api_docs, sort_constructors_first

// Read more about the world's capitals
// https://en.wikipedia.org/wiki/List_of_countries_with_multiple_capitals
// Reference (Wikipedia).
final class Capital {
  const Capital(String name, {this.deJure, this.third})
      : deFacto = name,
        assert(name.length != 0, "Capital name cannot be empty!");

  final String deFacto;
  final String? deJure;
  final String? third;

  @override
  String toString({bool short = true}) => short
      ? "Capital($deFacto)"
      : "Capital($deFacto, deJure: $deJure, third: $third)";

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
