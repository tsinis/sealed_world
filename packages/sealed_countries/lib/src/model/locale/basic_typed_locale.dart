import "package:sealed_currencies/sealed_currencies.dart";

import "../country/country.dart";

/// A basic typed representation of a locale.
class BasicTypedLocale extends BasicLocale {
  /// Creates an instance of [BasicLocale].
  ///
  /// The [language] parameter is required.
  /// The [country], [regionalCode] and [script] parameters are optional.
  const BasicTypedLocale(
    super.language, {
    this.country,
    super.script,
    String? regionalCode,
  }) : super(countryCode: regionalCode); // TODO!: Add assert.

  /// The optional country information of type [WorldCountry]. Has higher
  /// priority than primitive-typed `regionalCode` aka [countryCode].
  final WorldCountry? country;

  @override
  String? get countryCode => country?.codeShort ?? super.countryCode;

  @override
  String toString({bool short = true}) => short
      ? toUnicodeLocaleId()
      : "BasicTypedLocale(${language.runtimeType}()"
          '${countryCode == null ? '' : ', countryCode: "$countryCode"'}'
          "${script == null ? '' : ', script: ${script.runtimeType}()'})";
}
