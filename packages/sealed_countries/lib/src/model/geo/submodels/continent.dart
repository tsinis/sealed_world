import "../../../data/geo/continents.data.dart";
import "../region.dart";

part "continent.g.dart";

class Continent extends SubRegion {
  const Continent({required super.name});

  factory Continent.fromName(String name) =>
      list.firstWhere((continent) => continent.name == name);

  static Continent? maybeFromValue<T extends Object>(
    T value, {
    T? Function(Continent continent)? where,
    Iterable<Continent> continents = list,
  }) {
    assert(continents.isNotEmpty, "`continents` should not be empty!");
    for (final continent in continents) {
      final expectedValue = where?.call(continent) ?? continent.name;
      if (expectedValue == value) return continent;
    }

    return null;
  }

  static const list = [
    Europe(),
    Africa(),
    Americas(),
    Asia(),
    Antarctica(),
    Oceania(),
  ];
}
