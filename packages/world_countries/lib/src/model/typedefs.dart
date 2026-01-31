import "dart:ui" show Locale;

import "package:world_flags/world_flags.dart"
    show
        BasicTypedLocale,
        FiatCurrency,
        IsoTranslated,
        NaturalLanguage,
        WorldCountry;

import "../widgets/country/country_picker.dart";
import "../widgets/currency/currency_picker.dart" show CurrencyPicker;
import "../widgets/generic_widgets/iso_tile.dart";
import "../widgets/language/language_picker.dart";
import "../widgets/phone_code/phone_code_picker.dart";
import "locale/typed_locale.dart";
import "search_data.dart";

/// A factory that creates a comparator for sorting translation map entries.
///
/// Used by `MapIsoL10nExtension.sortAlphabetically` to allow custom sorting
/// logic. The factory receives the [locale] once and returns a [Comparator]
/// that compares [MapEntry] instances containing the ISO object and its
/// translated name.
///
/// This design ensures efficient sorting by constructing locale-specific
/// resources (like collators) only once, rather than on every comparison.
///
/// The returned comparator should return a negative number if the first entry
/// should come before the second, zero if they are equal, or a positive number
/// if the first should come after.
///
/// Example with `intl4x` package for locale-aware diacritics handling:
/// ```dart
/// final sorterFactory = (BasicTypedLocale typed) {
///   final locale = Locale.parse(typed.toUnicodeLocaleId());
///   final collator = Collation(locale: locale);
///   return (a, b) => collator.compare(a.value, b.value);
/// };
/// ```
typedef L10nSorter<T extends IsoTranslated> =
    Comparator<MapEntry<T, String>> Function(BasicTypedLocale locale);

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

/// A typedef representing a [Map] of [T] and its [SearchData].
/// This is used for search functionality, where [T] is the type of the
/// items being searched and [SearchData] contains the normalized search
/// terms associated with each item.
typedef SearchMap<T extends Object> = Map<T, SearchData>;

/// A typedef representing a function that formats a translation
/// for a specific [TypedLocale] and [IsoTranslated] item.
/// The function takes a [MapEntry] of [IsoTranslated] and its translation
/// as a [String], and returns a formatted [String] for the given locale.
typedef L10NFormatter<T extends TypedLocale, Iso extends IsoTranslated> =
    String Function(MapEntry<Iso, String> l10n, T locale);

/// A typedef for an [IsoTile] specialized for [FiatCurrency] items.
///
/// Used in [CurrencyPicker] to display currency list items with their
/// properties such as name, code, symbol, and optional flag.
typedef CurrencyTile = IsoTile<FiatCurrency>;

/// A typedef for an [IsoTile] specialized for [WorldCountry] items.
///
/// Used in [CountryPicker] and [PhoneCodePicker] to display country list
/// items with their properties such as name, flag, code, and phone code.
typedef CountryTile = IsoTile<WorldCountry>;

/// A typedef for an [IsoTile] specialized for [NaturalLanguage] items.
///
/// Used in [LanguagePicker] to display language list items with their
/// properties such as name, code, and optional flag.
typedef LanguageTile = IsoTile<NaturalLanguage>;
