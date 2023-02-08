part of "../language_family.dart";

class NaturalLanguageFamily extends LanguageFamily {
  const NaturalLanguageFamily({required super.name});

  factory NaturalLanguageFamily.fromName(String name) => list.firstWhere(
        (family) => family.name == name,
      );

  static NaturalLanguageFamily? maybeFromValue<T extends Object>(
    T value, {
    T? Function(NaturalLanguageFamily family)? where,
    Iterable<NaturalLanguageFamily> families = list,
  }) {
    assert(families.isNotEmpty, "`families` should not be empty!");
    for (final family in families) {
      final expectedValue = where?.call(family) ?? family.name;
      if (expectedValue == value) {
        return family;
      }
    }

    return null;
  }

  static const list = [
    AfroAsiatic(),
    Algonquian(),
    Austroasiatic(),
    Austronesian(),
    Aymaran(),
    Constructed(),
    Creole(),
    DeneYeniseian(),
    Dravidian(),
    EskimoAleut(),
    IndoEuropean(),
    Japonic(),
    Koreanic(),
    LanguageIsolate(),
    Mongolic(),
    NigerCongo(),
    NiloSaharan(),
    NortheastCaucasian(),
    NorthwestCaucasian(),
    Quechuan(),
    SinoTibetan(),
    SouthCaucasian(),
    TaiKadai(),
    Tupian(),
    Turkic(),
    Uralic(),
  ];
}
