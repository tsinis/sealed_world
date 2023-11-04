import "../model/translated_name.dart";
import "iso_standardized.dart";

part "iso_translated.dart";

/// An interface representing a translated object.
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
/// In this example, the `TranslatedObject` class implements the `Translated`
/// interface with a `TranslatedName` type parameter for the translations. The
/// class defines a property `translations` which is a list of objects
/// representing the translated names of the country. The `Translated` interface
/// is used to ensure that the `TranslatedObject` class has the required
/// translations.
abstract interface class Translated<T extends TranslatedName> {
  /// Creates a new instance of the [Translated] object.
  ///
  /// The [translations] parameter is required and represents a list of objects
  /// that implement the [TranslatedName] interface.
  const Translated({required this.translations}); // coverage:ignore-line

  /// A list of [TranslatedName] objects representing the translations, with
  /// different languages, country and script codes.
  final List<T> translations;
}
