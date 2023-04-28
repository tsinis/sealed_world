import "package:sealed_languages/sealed_languages.dart";

final class Demonyms {
  const Demonyms({
    required this.language,
    required this.female,
    required this.male,
  })  : assert(female.length > 0, "`female` value should not be empty!"),
        assert(male.length > 0, "`male` value should not be empty!");

  final NaturalLanguage language;
  final String female;
  final String male;

  @override
  String toString() =>
      "Demonyms(language: $language, female: $female, male: $male)";

  @override
  bool operator ==(covariant Demonyms other) {
    if (identical(this, other)) return true;

    return other.language == language &&
        other.female == female &&
        other.male == male;
  }

  @override
  int get hashCode => language.hashCode ^ female.hashCode ^ male.hashCode;
}
