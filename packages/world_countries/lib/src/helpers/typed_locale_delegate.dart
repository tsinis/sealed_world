import "package:flutter/widgets.dart";
import "package:sealed_countries/sealed_countries.dart";

import "../extensions/locale_extension.dart";
import "../models/locale/typed_locale.dart";
import "../models/typedefs.dart";

/// A class that implements the [LocalizationsDelegate] for [TypedLocale].
///
/// The [TypedLocaleDelegate] class is responsible for managing the
/// localizations delegate for [TypedLocale]. It allows customization of the
/// fallback language and the resolution of the locale map.
///
/// The [TypedLocaleDelegate] class has the following properties:
/// - `fallbackLanguage`: The fallback language to be used if the locale is not
///   available.
/// - `localeMapResolution`: The resolution strategy for resolving the locale
///   map.
///
/// Example usage:
///
/// ```dart
/// const typedLocaleDelegate = TypedLocaleDelegate(
///       localeMapResolution: [
///         LocaleEntry(
///           /// Brazilian Portuguese could be mapped to Euro Portuguese.
///           Locale("pt", "BR"),
///           IsoLocale(LangPor(), country: CountryPrt()),
///         ),
///       ],
///     );
/// ```
class TypedLocaleDelegate implements LocalizationsDelegate<TypedLocale?> {
  /// Creates an instance of [TypedLocaleDelegate].
  ///
  /// The [fallbackLanguage] parameter is optional. If provided, it sets the
  /// fallback language. The [localeMapResolution] parameter is optional. If
  /// provided, it sets the resolution strategy for the locale map.
  const TypedLocaleDelegate({this.fallbackLanguage, this.localeMapResolution});

  /// The fallback language to be used if the locale cannot be converted to
  /// [TypedLocale] instance.
  ///
  /// If the locale cannot be converted, the fallback language will be used
  /// as a default (with attempt to create a [TypedLocale] out of it instead).
  final NaturalLanguage? fallbackLanguage;

  /// The resolution strategy for resolving the locale map.
  ///
  /// The locale map resolution strategy determines how the locale map
  /// is resolved based on the available locales.
  final Iterable<LocaleEntry>? localeMapResolution;

  @override
  bool isSupported(Locale locale) => _toTypedLocale(locale) != null;

  @override
  Future<TypedLocale?> load(Locale locale) async {
    assert(
      isSupported(locale),
      """Unsupported locale: $locale, consider adding `localeMapResolution` and/or `fallbackLanguage`""",
    );

    return _toTypedLocale(locale);
  }

  @override // coverage:ignore-line
  bool shouldReload(TypedLocaleDelegate old) => false;

  @override // coverage:ignore-line
  String toString() =>
      """TypedLocaleDelegate(fallbackLanguage: $fallbackLanguage, localeMapResolution: $localeMapResolution)""";

  @override
  Type get type => TypedLocale;

  TypedLocale? _maybeResolutionLocale(Locale locale) =>
      Map<Locale, TypedLocale>.fromEntries(localeMapResolution ?? [])[locale];

  TypedLocale? _toTypedLocale(Locale locale) =>
      _maybeResolutionLocale(locale) ??
      locale.maybeToTypedLocale(fallbackLanguage);

  /// Returns the [TypedLocale] associated with the given [BuildContext].
  ///
  /// The [context] parameter is the [BuildContext] from which
  /// the [TypedLocale] is retrieved.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// final typedLocale = TypedLocaleDelegate.maybeOf(context);
  /// // or just as final typedLocale = context.maybeLocale;
  /// ```
  static TypedLocale? maybeOf(BuildContext context) =>
      Localizations.of<TypedLocale?>(context, TypedLocale);
}
