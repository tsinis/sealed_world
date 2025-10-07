part of "translated.dart";

/// An abstract interface class that extends `Translated` and implements
/// [IsoStandardized].
///
/// This class is used to represent a standardized ISO object that has been
/// translated into multiple languages. It ensures that the item conforms to
/// ISO standards and provides translations for the item's name.
///
/// The [T] type parameter represents the translated name of the item.
/// The [N] type parameter represents the name of the ISO object.
/// The [L] type parameter represents the basic locale used for localization.
abstract interface class IsoTranslated<
  T extends TranslatedName,
  N extends Object,
  L extends BasicLocale
>
    extends
        // ignore: deprecated_member_use_from_same_package, it's TODO!
        Translated<T>
    implements IsoStandardized<N> {
  /// Creates a new instance of the [IsoTranslated] object.
  ///
  /// The [translations] parameter isn't required and could be provided when
  /// creating a new (custom) instance. It represents the translations
  /// of the item's name into multiple languages.
  const IsoTranslated({@deprecated super.translations}); // coverage:ignore-line

  /// Returns the [BasicLocalizationDelegate] used for handling translations.
  ///
  /// This delegate provides localization functionality for ISO standardized
  /// entities.
  // TODO? Should be static: https://github.com/dart-lang/language/issues/368.
  BasicLocalizationDelegate<L, T> get l10n;
}
