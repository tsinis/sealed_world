import "package:sealed_currencies/sealed_currencies.dart";

part "subregion.dart";

/// An abstract class that represents a region of the world.
///
/// The `Region` class is an abstract class that represents a region of the
/// world. It consists of a `String` value that represents the name of the
/// region. The `name` field is required and must not be empty.
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
sealed class Region implements Named<String> {
  /// Creates a new `Region` object with the given name.
  ///
  /// The `name` parameter is required and must not be empty.
  const Region({required this.name});

  /// The name of the region.
  @override
  final String name;

  @override
  String toString() => '$Region(name: "$name")';
}
