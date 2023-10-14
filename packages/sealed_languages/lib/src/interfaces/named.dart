/// An abstract interface class for objects that have a [String] name.
///
/// This interface provides a common structure for objects that have a name.
/// It is intended to be implemented by classes that represent entities
/// with a name.
///
/// Implementing classes should assign a value to the [name] field in their
/// constructors. Once assigned, the [name] field cannot be modified.
abstract interface class Named<T extends Object> {
  /// Constructs a new instance of the [Named] class with the given [name].
  ///
  /// The [name] parameter represents the name of the object.
  /// It should be a non-null [String].
  const Named(this.name); // coverage:ignore-line

  /// The common name of the object.
  final T name;
}
