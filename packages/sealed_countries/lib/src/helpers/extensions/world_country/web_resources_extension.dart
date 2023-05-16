import "../../../model/country/country.dart";

/// Provides extension methods for accessing web resources related to a
/// `WorldCountry` object.
extension WebResourcesExtension on WorldCountry {
  /// The file extension for PNG images.
  static const png = "png";

  /// The file extension for SVG images.
  static const svg = "svg";

  String get _lowerCaseCode => codeShort.toLowerCase();

  static const _flagProvider = "https://flagcdn.com";

  /// Returns the URL of the PNG image file for the country's flag.
  String flagPngUrl() => "$_flagProvider/w320/$_lowerCaseCode.$png";

  /// Returns the URL of the SVG image file for the country's flag.
  String flagSvgUrl() => "$_flagProvider/$_lowerCaseCode.$svg";

  static const _coatOfArmsProvider =
      """https://mainfacts.com/media/images/coats_of_arms""";

  /// Returns the URL of the PNG image file for the country's coat of arms if it
  /// has one, or `null` otherwise.
  ///
  /// If the `hasCoatOfArms` property of the `WorldCountry` object is `true`,
  /// returns the URL of the PNG image file for the country's coat of arms.
  /// Otherwise, returns `null`.
  String? maybeCoatOfArmsPngUrl() =>
      hasCoatOfArms ? "$_coatOfArmsProvider/$_lowerCaseCode.$png" : null;

  /// Returns the URL of the SVG image file for the country's coat of arms if it
  /// has one, or `null` otherwise.
  ///
  /// If the `hasCoatOfArms` property of the `WorldCountry` object is `true`,
  /// returns the URL of the SVG image file for the country's coat of arms.
  /// Otherwise, returns `null`.
  String? maybeCoatOfArmsSvgUrl() =>
      hasCoatOfArms ? "$_coatOfArmsProvider/$_lowerCaseCode.$svg" : null;
}
