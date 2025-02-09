part of "region.dart";

/// A class that represents a subregion of the world.
///
/// The [SubRegion] class is an abstract class that represents a subregion of
/// the world. It extends the [Region] class, which represents a region of the
/// world. It consists of a [String] value that represents the name of the
/// subregion. The [name] field is required and must not be empty.
class SubRegion extends Region {
  /// Creates a new `SubRegion` object with the given name.
  ///
  /// The [name] parameter is required and must not be empty.
  const SubRegion({required super.name});
}
