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
abstract interface class BasicPickerInterface {
  const BasicPickerInterface({
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

  /// The local to use for translations.
  final TypedLocale? translation;
}
