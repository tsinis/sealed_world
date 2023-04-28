import "../../../model/country/country.dart";

extension WebResourcesExtension on WorldCountry {
  static const png = "png";
  static const svg = "svg";

  String get _lowerCaseCode => codeShort.toLowerCase();

  static const _flagProvider = "https://flagcdn.com";

  String flagPngUrl() => "$_flagProvider/w320/$_lowerCaseCode.$png";
  String flagSvgUrl() => "$_flagProvider/$_lowerCaseCode.$svg";

  static const _coatOfArmsProvider =
      """https://mainfacts.com/media/images/coats_of_arms""";

  String? maybeCoatOfArmsPngUrl() =>
      hasCoatOfArms ? "$_coatOfArmsProvider/$_lowerCaseCode.$png" : null;
  String? maybeCoatOfArmsSvgUrl() =>
      hasCoatOfArms ? "$_coatOfArmsProvider/$_lowerCaseCode.$svg" : null;
}
