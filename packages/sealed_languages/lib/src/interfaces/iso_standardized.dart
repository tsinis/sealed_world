/// An interface that represents an ISO-standardized object.
///
/// The [IsoStandardized] interface is used to represent objects that conform to
/// ISO standards. The interface defines properties for the ISO code, the name
/// of the object, and other optional properties.
///
/// The [Name] type parameter is used to specify the type of the name property.
/// The name property can be any object that represents the name of the object.
///
/// Example usage:
///
/// ```dart
/// class NaturalLanguage implements IsoStandardized<String> {
///   const NaturalLanguage({
///     required this.name,
///     required this.code,
///     this.namesNative,
///     this.codeShort,
///   });
///
///   final String code;
///   final String? codeShort;
///
///   final String name;
///   final List<String>? namesNative;
///
///   @override
///   String? get codeOther => codeShort;
/// }
/// ```
///
/// In this example the `NaturalLanguage` class implements the `IsoStandardized`
/// interface with a `String` type parameter for the name property. The class
/// defines properties for the ISO code, the name of the natural language, and
/// other optional properties. The `IsoStandardized` interface is used to ensure
/// that the `NaturalLanguage` class conforms to ISO standards.
abstract interface class IsoStandardized<Name extends Object> {
  /// Creates a new instance of the [IsoStandardized] object.
  ///
  /// The [name] and [code] parameters are required. The [namesNative] and
  /// [codeOther] parameters are optional.
  const IsoStandardized( // coverage:ignore-line
      {
    required this.name,
    required this.code,
    this.namesNative,
    this.codeOther,
  });

  /// A string representing the ISO 3-letter code for the object.
  final String code;

  /// An optional string representing an alternative ISO code for the object.
  /// This is typically used for short code (2-letter, as codeShort) or numeric
  /// code (3-digit, as codeNumeric).
  final String? codeOther;

  /// An object representing the name of the object.
  final Name name;

  /// An optional list of objects representing the native names of the object.
  final List<Name>? namesNative;

  @override
  String toString({bool short = true});
}
