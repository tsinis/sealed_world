import "../../helpers/extensions/basic_locale_extension.dart";
import "../../interfaces/iso_standardized.dart";
import "../../interfaces/json_encodable.dart";
import "../language/language.dart";
import "../script/writing_system.dart";

/// A basic representation of a locale.
class BasicLocale implements JsonEncodable<BasicLocale> {
  /// Creates an instance of [BasicLocale].
  ///
  /// The [language] parameter is required.
  /// The [countryCode] and [script] parameters are optional.
  const BasicLocale(this.language, {this.countryCode, this.script})
      : assert(
          countryCode == null ||
              countryCode.length >= IsoStandardized.codeShortLength,
          """`countryCode` have to be at least ${IsoStandardized.codeShortLength} characters long!""",
        );

  /// The [NaturalLanguage] representing the language of the locale.
  final NaturalLanguage language;

  /// The region subtag for the locale.
  ///
  /// This may be null, indicating that there is no specified region subtag.
  ///
  /// This is expected to be string registered in the The two-letter ISO 3166-1
  /// Alpha-2 code of the country.
  final String? countryCode;

  /// The optional script information of type [Script].
  final Script? script;

  @override
  String toJson({JsonCodec codec = const JsonCodec()}) => codec.encode(toMap());

  @override
  String toString() => "BasicLocale(${language.runtimeType}()"
      '${countryCode == null ? '' : ', countryCode: "$countryCode"'}'
      "${script == null ? '' : ', script: ${script.runtimeType}()'})";
}
