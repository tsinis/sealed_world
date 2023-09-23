import "../../model/language/language.dart";
import "../../model/language_family/language_family.dart";

/// Extension on [NaturalLanguage] that provides a `copyWith` method for
/// creating a new instance of [NaturalLanguage] with updated properties.
extension NaturalLanguageCopyWith on NaturalLanguage {
  /// Creates a new instance of [NaturalLanguage] with updated properties.
  ///
  /// The optional named parameters can be used to specify new values for the
  /// corresponding properties. If a named parameter is not provided, the
  /// corresponding property is copied from the original instance.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// const english = LangEng();
  ///
  /// final americanEnglish = english.copyWith(
  ///   name: 'American English',
  /// );
  /// ```
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
