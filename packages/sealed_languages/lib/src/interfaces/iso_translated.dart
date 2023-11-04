part of "translated.dart";

/// An abstract interface class that extends [Translated] and implements
/// [IsoStandardized].
///
/// This class is used to represent a standardized ISO object that has been
/// translated into multiple languages. It ensures that the item conforms to
/// ISO standards and provides translations for the item's name.
///
/// The [Translation] type parameter represents the translated name of the item.
/// The [Name] type parameter represents the original name of the ISO object.
///
/// The `translations` parameter is required and should be provided when
/// creating a new instance of [IsoTranslated].
abstract interface class IsoTranslated<Translation extends TranslatedName,
        Name extends Object> extends Translated<Translation>
    implements IsoStandardized<Name> {
  /// Creates a new instance of the [IsoTranslated] object.
  ///
  /// The [translations] parameter is required and should be provided when
  /// creating a new instance. It represents the translations of the item's name
  /// into multiple languages.
  const IsoTranslated({required super.translations}); // coverage:ignore-line
}
