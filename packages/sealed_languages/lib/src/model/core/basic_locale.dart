import "../../helpers/extensions/basic_locale_extension.dart";
import "../../helpers/extensions/sealed_world_object_extension.dart";
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
  const BasicLocale(this.language, {String? countryCode, this.script})
      : assert(
          countryCode == null ||
              countryCode.length >= IsoStandardized.codeShortLength,
          """`countryCode` have to be at least ${IsoStandardized.codeShortLength} characters long!""",
        ),
        _countryCode = countryCode;

  /// The [NaturalLanguage] representing the language of the locale.
  final NaturalLanguage language;

  /// The optional script information of type [Script].
  final Script? script;

  final String? _countryCode;

  /// The region subtag for the locale.
  ///
  /// This may be `null`, indicating that there is no specified region subtag.
  ///
  /// This is expected to be UPPERCASE registered two-letter ISO 3166-1 Alpha-2
  /// string code of the country.
  String? get countryCode => _countryCode?.toUpperCaseIsoCode();

  @override
  String toJson({JsonCodec codec = const JsonCodec()}) => codec.encode(toMap());

  @override
  String toString({bool short = true}) => short
      ? toUnicodeLocaleId()
      : "BasicLocale(${language.runtimeType}()"
          '${_countryCode == null ? '' : ', countryCode: "$countryCode"'}'
          "${script == null ? '' : ', script: ${script.runtimeType}()'})";
}
