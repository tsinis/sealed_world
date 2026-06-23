import "package:sealed_currencies/sealed_currencies.dart";

/// A class that represents a region of the world.
///
/// The [Region] class is a class that represents a region of the
/// world. It consists of a [String] value that represents the name of the
/// region. The [name] field is required and must not be empty.
///
/// Example usage:
///
/// ```dart
/// class City extends Region {
///   const City({required super.name});
/// }
///
/// final city = City(name: "Warsaw");
/// print(city.name); // Prints: "Warsaw"
/// ```
/// Base type shared by continent and subregion models.
@Deprecated.subclass(
  "This class will be marked as `final` in the next major version to support "
  "deep immutability optimizations. Do not extend or implement this class.",
)
class Region implements Named<String> {
  /// Creates a new [Region] object with the given name.
  ///
  /// The [name] parameter is required and must not be empty.
  // ignore: deprecated_consistency, constructor cannot be annotated with it.
  const Region({required this.name});

  /// The name of the region.
  @override
  final String name;

  @override
  String toString({bool short = true}) => 'Region(name: "$name")';
}
