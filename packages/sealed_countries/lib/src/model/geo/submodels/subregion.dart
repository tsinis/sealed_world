import "package:sealed_currencies/sealed_currencies.dart";

import "../region.dart";
import "continent.dart";

part "../../../data/geo/continental_sections.data.dart";

/// Represents a named subdivision of a [Continent].
///
/// A [SubRegion] describes geographical areas such as "Central America" or
/// "Western Europe". Each subregion belongs to a single [continent] and is
/// modeled as an immutable value object.
sealed class SubRegion extends Region {
  /// Creates a new [SubRegion] with the provided [name] and [continent].
  const SubRegion(this.continent, {required super.name});

  /// Finds a subregion that matches the provided [name] (case-insensitive).
  // ignore: avoid-non-empty-constructor-bodies, false positive, it's factory...
  factory SubRegion.fromName(String name) {
    final upperCaseName = IsoObject(name).toUpperCaseCode();

    return list.firstWhere(
      (region) => region.name.toUpperCase() == upperCaseName,
    );
  }

  /// The parent continent that owns this subregion.
  final Continent continent;

  /// Creates a subregion from an arbitrary [value].
  static SubRegion? maybeFromValue<T extends Object>(
    T? value, {
    Iterable<SubRegion> subregions = list,
    T? Function(SubRegion subRegion)? where,
  }) {
    if (value == null) return null;
    assert(subregions.isNotEmpty, "`subregions` should not be empty!");
    for (final subRegion in subregions) {
      final expectedValue = where?.call(subRegion) ?? subRegion.name;
      if (expectedValue == value) return subRegion;
    }

    return null;
  }

  /// All supported subregions grouped under their parent continents.
  // ignore_for_file: avoid-referencing-subclasses, those are static constants.
  static const list = <SubRegion>[
    /// Americas.
    CentralAmerica(),
    NorthAmerica(),
    SouthAmerica(),
    Caribbean(),

    /// Europe.
    CentralEurope(),
    NorthernEurope(),
    SouthernEurope(),
    EasternEurope(),
    WesternEurope(),
    SouthwestEurope(),

    /// Africa.
    MiddleAfrica(),
    WesternAfrica(),
    SouthernAfrica(),
    EasternAfrica(),
    NorthernAfrica(),

    /// Asia.
    CentralAsia(),
    EasternAsia(),
    WesternAsia(),
    SouthernAsia(),
    SouthEasternAsia(),

    /// Oceania.
    AustraliaAndNewZealand(),
    Melanesia(),
    Micronesia(),
    Polynesia(),
  ];
}
