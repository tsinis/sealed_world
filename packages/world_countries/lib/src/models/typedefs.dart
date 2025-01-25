import "dart:ui" show Locale;

import "locale/typed_locale.dart";

/// A typedef representing a map entry of [Locale] and [TypedLocale].
///
///
/// The `LocaleEntry` typedef is a shorthand for `MapEntry<Locale, TypedLocale>`
/// type. It defines a map entry where the key is of type [Locale] and
/// the value is of type [TypedLocale].
///
/// Example usage:
///
/// ```dart
/// const localeEntry = LocaleEntry(Locale('en'), TypedLocale(LangEng()));
/// ```
typedef LocaleEntry = MapEntry<Locale, TypedLocale>;

/// A typedef representing an [TypedLocale].
@Deprecated("Please use `TypedLocale` instead.")
typedef IsoLocale = TypedLocale;
