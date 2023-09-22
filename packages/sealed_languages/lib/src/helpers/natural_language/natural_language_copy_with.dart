import "../../model/language/language.dart";
import "../../model/language_family/language_family.dart";

extension NaturalLanguageCopyWith on NaturalLanguage {
  NaturalLanguage copyWith({
    String? name,
    String? code,
    String? codeShort,
    List<String>? namesNative,
    String? bibliographicCode,
    NaturalLanguageFamily? family,
    bool? isRightToLeft,
  }) =>
      NaturalLanguage(
        name: name ?? this.name,
        codeShort: codeShort ?? this.codeShort,
        namesNative: namesNative ?? this.namesNative,
        code: code ?? this.code,
        bibliographicCode: bibliographicCode ?? this.bibliographicCode,
        family: family ?? this.family,
        isRightToLeft: isRightToLeft ?? this.isRightToLeft,
      );
}
