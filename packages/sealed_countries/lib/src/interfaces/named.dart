// TODO! Move to languages.
/// An abstract interface class for objects that have a [String] name.
abstract interface class Named {
  const Named(this.name); // coverage:ignore-line

  /// The common name of the object.
  final String name;
}
