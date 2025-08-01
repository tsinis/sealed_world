// ignore_for_file: avoid-referencing-subclasses, those are static constants.

import "package:sealed_currencies/sealed_currencies.dart";

import "../../../data/geo/continental_sections.data.dart";
import "../../../data/geo/continents.data.dart";
import "../region.dart";

part "continent.g.dart";

/// A class that represents a continent.
///
/// The [Continent] class is a simple value object that represents a continent.
/// It extends the [SubRegion] class, which represents a subregion of the world.
/// It consists of a [String] value that represents the name of the continent.
/// The [name] field is required and must not be empty. The [Continent] class
/// includes a factory constructor `fromName` to create a new continent object
/// from its name, and a static method [maybeFromValue] to create a new
/// continent object from a value, such as a string, while handling null values.
/// The [Continent] class also includes a static constant [list] that contains
/// all of the continents of the world.
///
/// Example usage:
///
/// ```dart
/// final europe = Continent.fromName("Europe");
/// print(europe.name); // Prints: "Europe"
///
/// final africa = Continent.maybeFromValue<String>("Africa");
/// print(africa?.name); // Prints: "Africa"
///
/// final unknown = Continent.maybeFromValue<int>(42);
/// print(unknown); // Prints: null
/// ```
class Continent extends SubRegion {
  /// Creates a new [Continent] object with the given name.
  ///
  /// The [name] parameter is required and must not be empty.
  const Continent({required super.name});

  /// Creates a new [Continent] object from its name.
  // ignore: avoid-non-empty-constructor-bodies, false positive, it's factory...
  factory Continent.fromName(String name) {
    final upperCaseName = IsoObject(name).toUpperCaseCode();

    return list.firstWhere(
      (region) => region.name.toUpperCase() == upperCaseName,
    );
  }

  /// Creates a new [Continent] object from a value.
  ///
  /// The [value] parameter is the value to be compared to the name of each
  /// continent in the [continents] list. If the [value] parameter matches the
  /// name of a continent, a new [Continent] object representing that continent
  /// is returned. If there is no match, `null` is returned. If the [where]
  /// parameter is provided, it is used to determine the value to compare for
  /// each continent.
  ///
  /// The [continents] parameter is the list of continents to search. If no
  /// value is provided, the [list] constant is used.
  static Continent? maybeFromValue<T extends Object>(
    T value, {
    Iterable<Continent> continents = list,
    T? Function(Continent continent)? where,
  }) {
    assert(continents.isNotEmpty, "`continents` should not be empty!");
    for (final continent in continents) {
      final expectedValue = where?.call(continent) ?? continent.name;
      if (expectedValue == value) return continent;
    }

    return null;
  }

  /// A list of all the continents currently
  /// supported by the [Continent] class.
  static const list = <Continent>[
    /// General continents.
    Africa(),
    Americas(),
    Antarctica(),
    Asia(),
    Europe(),
    Oceania(),

    /// Subregions.
    CentralAmerica(),
    NorthAmerica(),
    SouthAmerica(),
    Caribbean(),
    CentralEurope(),
    NorthernEurope(),
    SouthernEurope(),
    EasternEurope(),
    WesternEurope(),
    SouthwestEurope(),
    MiddleAfrica(),
    WesternAfrica(),
    SouthernAfrica(),
    EasternAfrica(),
    NorthernAfrica(),
    CentralAsia(),
    EasternAsia(),
    WesternAsia(),
    SouthernAsia(),
    SouthEasternAsia(),
    AustraliaAndNewZealand(),
    Melanesia(),
    Micronesia(),
    Polynesia(),
  ];
}
