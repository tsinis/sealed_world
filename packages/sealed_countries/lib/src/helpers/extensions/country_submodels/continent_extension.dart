import "../../../model/geo/submodels/continent.dart";
import "../../../model/geo/submodels/subregion.dart";

/// Convenience helpers for discovering the subregions of a [Continent].
extension ContinentExtension on Continent {
  /// Returns every [SubRegion] that belongs to this continent.
  Set<SubRegion> get subregions =>
      SubRegion.list.where((region) => region.continent == this).toSet();
}
