import '../../../model/geo/submodels/continent.dart';
import '../../../model/geo/submodels/subregion.dart';

/// Convenience helpers for discovering the subregions of a [Continent].
extension ContinentExtension on Continent {
  /// Returns every subregion that belongs to this continent. // TODO! Test it.
  Set<SubRegion> get subregions =>
      SubRegion.list.where((region) => region.continent == this).toSet();
}
