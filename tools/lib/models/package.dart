import "package:change_case/change_case.dart";
import "package:select_annotation/select_annotation.dart";

part "package.select.dart";

@matchable
enum Package {
  sealedLanguages,
  sealedCurrencies,
  sealedCountries,
  worldCountries(isFlutter: true);

  const Package({this.isFlutter = false});

  final bool isFlutter;

  String get dirName => name.toSnakeCase();
}
