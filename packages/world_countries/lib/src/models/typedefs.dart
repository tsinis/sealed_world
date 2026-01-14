import "dart:ui" show Locale;

import "package:world_flags/world_flags.dart"
    show FiatCurrency, IsoTranslated, NaturalLanguage, WorldCountry;

import "../widgets/generic_widgets/iso_tile.dart";
import "locale/typed_locale.dart";

/// A typedef representing a map entry of [Locale] and [TypedLocale].
///
///
/// The [LocaleEntry] typedef is a shorthand for [MapEntry<Locale, TypedLocale>]
/// type. It defines a map entry where the key is of type [Locale] and
/// the value is of type [TypedLocale].
///
/// Example usage:
///
/// ```dart
/// const localeEntry = LocaleEntry(Locale('en'), TypedLocale(LangEng()));
/// ```
typedef LocaleEntry = MapEntry<Locale, TypedLocale>;

/// A typedef representing a [Map] of translations for [IsoTranslated] items.
typedef TranslationMap<T extends IsoTranslated> = Map<T, String>;

/// A typedef representing a [Map] of [T] and a set of [String].
/// This is used for search functionality, where [T] is the type of the
/// items being searched, and the set of [String] represents the search
/// terms associated with each item.
typedef SearchMap<T extends Object> = Map<T, Set<String>>;

/// A typedef representing a function that formats a translation
/// for a specific [TypedLocale] and [IsoTranslated] item.
/// The function takes a [MapEntry] of [IsoTranslated] and its translation
/// as a [String], and returns a formatted [String] for the given locale.
typedef L10NFormatter<T extends TypedLocale, Iso extends IsoTranslated> =
    String Function(MapEntry<Iso, String> l10n, T locale);

typedef CurrencyTile = IsoTile<FiatCurrency>;
typedef CountryTile = IsoTile<WorldCountry>;
typedef LanguageTile = IsoTile<NaturalLanguage>;
