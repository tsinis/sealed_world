import "package:flutter/material.dart";

import "../constants/ui_constants.dart";
import "../models/locale/typed_locale.dart";

/// An abstract interface defining the basic contract for picker components.
///
/// Provides a common set of properties that can be used to customize the
/// appearance and behavior of picker implementations. This interface ensures
/// consistency across different picker components by providing a standard set
/// of configurable options.
///
/// Parameters:
/// - `searchBarPadding`: The padding around the search bar. Defaults to
///   the `EdgeInsets.only(left: 8, top: 8, right: 8)`.
/// - `showClearButton`: A boolean value that determines whether the clear
///   button should be shown. Defaults to `true`, showing the clear button.
/// - `searchBar`: An optional widget that can be passed to replace the default
///   search bar.
/// - `translation`: An optional argument for providing localized text strings
///   for the picker component.
///
/// Implementing classes should provide behavior for these properties to create
/// a coherent picker experience.
abstract interface class BasicPickerInterface<T extends TypedLocale> {
  const BasicPickerInterface( // coverage:ignore-line
      {
    this.searchBarPadding = UiConstants.padding,
    this.showClearButton = true,
    this.searchBar,
    this.translation,
  });

  /// A boolean indicating whether to show a clear button in the search bar.
  final bool? showClearButton;

  /// The optional search bar to display.
  final TextField? searchBar;

  /// The padding to apply to the search bar.
  final EdgeInsetsGeometry? searchBarPadding;

  /// The locale to use for translations.
  ///
  /// It is recommended to create instances of [TypedLocale] and all its related
  /// classes using the `.withTranslationsCache` factory constructors
  /// to ensure that the translation caches for languages, currencies, and
  /// countries are populated.
  ///
  /// Using this constructor ensures that the pickers have access to the
  /// necessary translation hash-maps for displaying localized names with 1(0)
  /// access time.
  ///
  /// Those hash-maps are cached in the [TypedLocale] class by default, when
  /// using a `TypedLocaleDelegate` - providing translations to translated
  /// common country/currency/language names based on the device's locale. But
  /// when custom translations are provided, those hash-maps are not relevant
  /// because provided custom [translation] will be used instead.
  ///
  /// If [TypedLocale] is instantiated without these caches, the
  /// pickers will use on-demand `.where` methods in `translations` to search
  /// for the corresponding translation, which will result in slower performance
  /// (especially comparing it to 1(0) access time that cached maps provide).
  ///
  /// Refer to [TypedLocale.withTranslationsCache] for more information on how
  /// the caches are created and updated.
  final T? translation;
}
