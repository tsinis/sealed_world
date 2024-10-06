import "package:change_case/change_case.dart";
import "package:select_annotation/select_annotation.dart";

import "../constants/path_constants.dart";

part "package.select.dart";

@matchable
enum Package {
  sealedLanguages,
  sealedCurrencies,
  sealedCountries;

  String get dirName => name.toSnakeCase();

  String get fullPath =>
      "${PathConstants.packages}/$dirName/${PathConstants.lib}/${PathConstants.src}/";
}
