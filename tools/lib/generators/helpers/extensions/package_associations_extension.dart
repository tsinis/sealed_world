import "package:change_case/change_case.dart";
import "package:sealed_languages/sealed_languages.dart";

import "../../../models/package.dart";

extension PackageAssociationsExtension on Package {
  Type get type =>
      whenConstOrNull(sealedLanguages: NaturalLanguage) ?? NaturalLanguage;

  String get classPrefix => whenConstOrNull(sealedLanguages: "Lang") ?? "";

  List<IsoStandardized> get dataList =>
      whenConstOrNull(sealedLanguages: NaturalLanguage.list) ?? const [];

  String get dataFilePrefix =>
      whenConstOrNull(sealedLanguages: "${type.toString().toSnakeCase()}s") ??
      "";

  String get dataRepresent =>
      whenConstOrNull(sealedLanguages: "language") ?? "";

  String get isoCodeAssociated =>
      whenConstOrNull(sealedLanguages: "639-2") ?? "";

  String get isoCodeOtherAssociated =>
      whenConstOrNull(sealedLanguages: "639-1") ?? "";
}
