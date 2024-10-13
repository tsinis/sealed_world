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
///   String get codeOther => codeShort;
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
  /// The [name], [code] and  [codeOther] parameters are required.
  /// The [namesNative] parameter is optional.
  const IsoStandardized( // coverage:ignore-line
      {
    required this.name,
    required this.code,
    required this.codeOther,
    this.namesNative,
  });

  /// The regular length of the ISO code (3 characters). However, it's important
  /// to note that this length is not standardized for all ISO codes. Some ISO
  /// codes may have a different length. For example, the ISO 15924 code has a
  /// length of 4.
  /// To determine the specific length of the code for a particular ISO
  /// realization of this interface, please refer to the documentation of that
  /// realization.
  ///
  /// In case of difference - the length of the code will be specified as a
  /// compile-time constant in case of a different length.
  static const codeLength = 3;

  /// The regular length of the short ISO code (2 characters).
  static const codeShortLength = 2;

  /// The acronym for the International Organization for Standardization (ISO).
  static const standardAcronym = "ISO";

  /// A string representing the ISO (usually a 3-letter) code for the object.
  final String code;

  /// An string representing an alternative ISO code for the object.
  /// This is typically used for short code (2-letter, as codeShort) or numeric
  /// code (3-digit, as codeNumeric).
  final String codeOther;

  /// An object representing the name of the object.
  final Name name;

  /// An [String] representing the international name of the object. This is
  /// typically a English name of the ISO object.
  String get internationalName;

  /// An optional list of objects representing the native names of the object.
  final List<Name>? namesNative;

  @override
  // ignore: avoid-unnecessary-overrides, it has boolean config flag.
  String toString({bool short = true});
}
