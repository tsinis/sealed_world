import "package:flutter/widgets.dart";
import "package:meta/meta.dart";
import "package:world_flags/world_flags.dart";

import "../extensions/core/locale_extension.dart";
import "../extensions/typed_locale_extension.dart";
import "../models/iso/iso_collections.dart";
import "../models/locale/typed_locale.dart";
import "../models/typedefs.dart";

/// A class that implements the [LocalizationsDelegate] for [TypedLocale].
///
/// The [TypedLocaleDelegate] class is responsible for managing the
/// localizations delegate for [TypedLocale]. It allows customization of the
/// fallback language and the resolution of the locale map.
///
/// The [TypedLocaleDelegate] class has the following properties:
/// - [fallbackLanguage]: The fallback language to be used if the locale is not
///   available.
/// - [IsoCollections]: Bundled ISO caches, locale remapping entries, and flag
///   mappings consumed during translation caching.
///
/// Example usage:
///
/// ```dart
/// const typedLocaleDelegate = TypedLocaleDelegate(
///       isoCollections: IsoCollections(
///         localeMapResolution: [
///           LocaleEntry(
///             /// Brazilian Portuguese could be mapped to Euro Portuguese.
///             Locale("pt", "BR"),
///             TypedLocale(LangPor(), country: CountryPrt()),
///           ),
///         ],
///       ),
///     );
/// ```
@immutable
class TypedLocaleDelegate implements LocalizationsDelegate<TypedLocale?> {
  /// Creates an instance of [TypedLocaleDelegate].
  ///
  /// - [fallbackLanguage]: Optional default language when a locale cannot be
  ///   resolved.
  /// - [isoCollections]: Immutable bundle with translation caches, optional
  ///   locale remapping, and ISO flag mappings. See [IsoCollections]
  ///   for details.
  /// - [asyncTranslationCacheProcessing]: When `true`, populates
  ///   [isoCollections] caches asynchronously.
  /// - [shouldReload]: Set to `true` if the resources for this delegate should
  /// be loaded again by calling the [load] method. This method is called
  /// whenever its [Localizations] widget is rebuilt. If it returns true then
  /// dependent widgets will be rebuilt after [load] has completed.
  /// - [l10nFormatter]: Optional formatter that customizes how ISO
  ///   translations are rendered.
  const TypedLocaleDelegate({
    @mustBeConst this.fallbackLanguage,
    bool asyncTranslationCacheProcessing = true,
    @mustBeConst IsoCollections isoCollections = const IsoCollections(),
    L10NFormatter<TypedLocale, IsoTranslated>? l10nFormatter,
    bool shouldReload = false,
  }) : _asyncTranslationCacheProcessing = asyncTranslationCacheProcessing,
       _isoCollections = isoCollections,
       _l10nFormatter = l10nFormatter,
       _shouldReload = shouldReload;

  /// Creates an instance of [TypedLocaleDelegate] without translations caching.
  /// This is useful when you don't want to cache the translations for the
  /// specific unused ISO objects. For example you are only using country
  /// pickers, so you might not need currency an language translations. In this
  /// case you can provide an [IsoCollections.selective] instance that contains
  /// only the caches you require.
  ///
  /// - [fallbackLanguage]: Optional default language when a locale cannot be
  ///   resolved.
  /// - [isoCollections]: Immutable bundle with translation caches, locale
  ///   remapping, and optional ISO flag mappings. Use
  ///   [IsoCollections.selective] to keep caches empty.
  /// - [asyncTranslationCacheProcessing]: When `true`, populates
  ///   [isoCollections] caches asynchronously.
  /// - [shouldReload]: Set to `true` if the resources for this delegate should
  /// be loaded again by calling the [load] method. This method is called
  /// whenever its [Localizations] widget is rebuilt. If it returns true then
  /// dependent widgets will be rebuilt after [load] has completed.
  /// - [l10nFormatter]: Optional formatter that customizes how ISO
  ///   translations are rendered.
  const TypedLocaleDelegate.selectiveCache({
    @mustBeConst this.fallbackLanguage,
    bool asyncTranslationCacheProcessing = true,
    @mustBeConst
    IsoCollections isoCollections = const IsoCollections.selective(),
    L10NFormatter<TypedLocale, IsoTranslated>? l10nFormatter,
    bool shouldReload = false,
  }) : _asyncTranslationCacheProcessing = asyncTranslationCacheProcessing,
       _isoCollections = isoCollections,
       _l10nFormatter = l10nFormatter,
       _shouldReload = shouldReload;

  /// A constant list of [LocaleEntry] objects that define the default
  /// resolution for locale mapping.
  ///
  /// Each [LocaleEntry] in the list maps a [Locale] to an [TypedLocale]. This
  /// mapping is used to resolve the language and country of a [Locale] to the
  /// corresponding language and country.
  ///
  /// The current mappings are
  /// * Filipino (Pilipino) to Tagalog. Tagalog is the foundation of Filipino.
  ///   More details can be found at: https://en.wikipedia.org/wiki/Tagalog_language.
  /// * Swiss German Alemannic Alsatian to German (Switzerland).
  /// * Bosnian (written in the Cyrillic script) to Serbian.
  ///
  /// These mappings are used as the default resolution when no other locale
  /// mapping is provided.
  // ignore: avoid-explicit-type-declaration, vs specify_nonobvious_property_types
  static const List<LocaleEntry> defaultLocaleMapResolution =
      IsoCollections.defaultLocaleMapResolution;

  /// The fallback language to be used if the locale cannot be converted to
  /// [TypedLocale] instance.
  ///
  /// If the locale cannot be converted, the fallback language will be used
  /// as a default (with attempt to create a [TypedLocale] out of it instead).
  final NaturalLanguage? fallbackLanguage;

  final bool _asyncTranslationCacheProcessing;
  final bool _shouldReload;
  final IsoCollections _isoCollections;

  /// A formatter for customizing how ISO translations are formatted.
  ///
  /// When provided, this formatter is used to customize the string
  /// representation of ISO object translations. It takes a [TypedLocale] and an
  /// [IsoTranslated] object as input and returns a formatted string.
  // ignore: prefer-correct-callback-field-name, it's not a builder.
  final L10NFormatter<TypedLocale, IsoTranslated>? _l10nFormatter;

  @override
  @useResult
  bool isSupported(Locale locale) => _toTypedLocale(locale) != null;

  @override
  Future<TypedLocale?> load(Locale locale) async {
    final typedLocale = _toTypedLocale(locale);
    assert(
      typedLocale != null,
      "Unsupported ISO locale: $locale, consider adding "
      "`isoCollections.localeMapResolution` and/or `fallbackLanguage`",
    );

    final translatedMaps = _asyncTranslationCacheProcessing
        ? await typedLocale?.copyWithTranslationsCacheAsync(
            languages: _isoCollections.languagesForTranslationCache,
            currencies: _isoCollections.currenciesForTranslationCache,
            countries: _isoCollections.countriesForTranslationCache,
            l10nFormatter: _l10nFormatter,
          )
        : typedLocale?.copyWithTranslationsCache(
            languages: _isoCollections.languagesForTranslationCache,
            currencies: _isoCollections.currenciesForTranslationCache,
            countries: _isoCollections.countriesForTranslationCache,
            l10nFormatter: _l10nFormatter,
          );

    return await translatedMaps?.copyWithFlagsCache(
      _isoCollections,
      isAsync: _asyncTranslationCacheProcessing,
      localeCountry: typedLocale?.country,
    );
  }

  @override
  bool shouldReload(TypedLocaleDelegate old) => _shouldReload;

  @override
  String toString() =>
      "TypedLocaleDelegate("
      """${fallbackLanguage == null ? '' : 'fallbackLanguage: ${fallbackLanguage.runtimeType}(), '}"""
      "asyncTranslationCacheProcessing: $_asyncTranslationCacheProcessing, "
      "shouldReload: $_shouldReload, isoCollections: $_isoCollections, "
      "l10nFormatter: ${_l10nFormatter.runtimeType},)";

  @override
  Type get type => TypedLocale;

  TypedLocale? _maybeResolutionLocale(Locale locale) =>
      Map<Locale, TypedLocale>.fromEntries(
        _isoCollections.localeMapResolution ?? const [],
      )[locale];

  TypedLocale? _toTypedLocale(Locale locale) =>
      _maybeResolutionLocale(locale) ??
      locale.maybeToTypedLocale(fallbackLanguage);

  /// Returns the [TypedLocale] associated with the given [BuildContext] or
  /// `null` if the [BuildContext] does not contain a [TypedLocale].
  ///
  /// The [context] parameter is the [BuildContext] from which
  /// the [TypedLocale] is retrieved.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// final typedLocale = TypedLocaleDelegate.of(context);
  /// // or just as final typedLocale = context.maybeLocale;
  /// ```
  @useResult
  static TypedLocale? of(BuildContext context) =>
      Localizations.of<TypedLocale>(context, TypedLocale);
}
