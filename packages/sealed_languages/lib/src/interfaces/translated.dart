import "../model/core/basic_locale.dart";
import "../model/translated_name.dart";
import "basic_localization_delegate.dart";
import "iso_standardized.dart";

part "iso_translated.dart";

/// An sealed interface representing a translated object.
///
/// The [Translated] interface is used to represent objects that have
/// translations. The interface defines a required parameter `translations`
/// which is a list of objects that implement the [TranslatedName] interface.
///
/// The [T] type parameter is used to specify the type of the translations. The
/// translations can be any objects that implement the [TranslatedName]
/// interface.
///
/// Example usage:
///
/// ```dart
/// class TranslatedObject implements Translated<TranslatedName> {
///   const TranslatedObject({required this.translations});
///
///   final List<TranslatedName> translations;
/// }
/// ```
///
/// In this example, the `TranslatedObject` class implements the [Translated]
/// interface with a `TranslatedName` type parameter for the translations. The
/// class defines a property `translations` which is a list of objects
/// representing the translated names of the country. The [Translated] interface
/// is used to ensure that the `TranslatedObject` class has the required
/// translations.
@Deprecated("Translations are now provided via `l10n`")
sealed class Translated<T extends TranslatedName> {
  /// Creates a new instance of the [Translated] object.
  ///
  /// The [translations] parameter is required and represents a list of objects
  /// that implement the [TranslatedName] interface.
  @Deprecated("Translations are now provided via `l10n`") //coverage:ignore-line
  const Translated({List<T>? translations}) // coverage:ignore-line
    : _translations = translations;

  final List<T>? _translations;

  /// A list of [TranslatedName] objects representing the translations, with
  /// different languages, country and script codes.
  ///
  /// IMPORTANT! It's recommended to cache the result of this getter, because
  /// it's mostly a computed property on very large collections. If you need
  /// to access localization data for specific locale please use the
  /// methods called `commonName*` on ISO objects.
  ///
  /// Example:
  /// ```dart
  /// // Not recommended: Accessing translations directly
  /// final allTranslations = isoObject.translations;
  ///
  /// // Recommended: Using commonName* methods
  /// final translation = isoObject.commonNameFor(const BasicLocale(LangEng()));
  /// ```
  @Deprecated("Use `l10n` getter instead") // coverage:ignore-line
  List<T> get translations => _translations ?? []; // coverage:ignore-line
}
