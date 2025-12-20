import "../model/core/basic_locale.dart";
import "../model/translated_name.dart";
import "basic_localization_delegate.dart";
import "iso_standardized.dart";

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
    implements IsoStandardized<N> {
  /// Returns the [BasicLocalizationDelegate] used for handling translations.
  ///
  /// This delegate provides localization functionality for ISO standardized
  /// entities.
  // TODO? Should be static: https://github.com/dart-lang/language/issues/368.
  BasicLocalizationDelegate<L, T> get l10n;
}
