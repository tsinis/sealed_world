part of "../../model/language/language.dart";

extension type const _EpoFactory._(LangEpo _) implements LangEpo {
  const _EpoFactory() : this._(const LangEpo._());
}

/// A class that represents the Esperanto language.
class LangEpo extends NaturalLanguage {
  /// {@template sealed_world.language_epo_constructor}
  /// Creates a instance of [LangEpo] (Esperanto language).
  ///
  /// ISO 639-2/T code: `EPO`, ISO 639-1 code: `EO`.
  /// {@endtemplate}
  const factory LangEpo() = _EpoFactory;

  const LangEpo._()
    : super(
        name: "Esperanto",
        code: "EPO",
        codeShort: "EO",
        namesNative: const ["Esperanto"],
        family: const Constructed(),
      );
}
