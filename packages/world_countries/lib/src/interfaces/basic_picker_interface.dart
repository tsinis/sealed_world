import "package:flutter/material.dart";
import "package:world_flags/world_flags.dart" show BasicFlag, IsoTranslated;

import "../constants/ui_constants.dart";
import "../helpers/typed_locale_delegate.dart";
import "../models/iso/iso_maps.dart";

/// An abstract interface defining the basic contract for picker components.
///
/// Provides a common set of properties that can be used to customize the
/// appearance and behavior of picker implementations. This interface ensures
/// consistency across different picker components by providing a standard set
/// of configurable options.
///
/// Parameters:
/// - [searchBarPadding]: The padding around the search bar. Defaults to
///   the [EdgeInsets.only(left: 8, top: 8, right: 8)].
/// - [showClearButton]: A boolean value that determines whether the clear
///   button should be shown. Defaults to `true`, showing the clear button.
/// - [searchBar]: An optional widget that can be passed to replace the default
///   search bar.
/// - [maps]: Optional [IsoMaps] bundle supplying cached translations and
///   optional flag overrides for the picker component.
///
/// Implementing classes should provide behavior for these properties to create
/// a coherent picker experience.
/// Immutable contract for basic picker configuration objects.
@immutable
abstract interface class BasicPickerInterface {
  const BasicPickerInterface( // coverage:ignore-line
  {
    this.searchBarPadding = UiConstants.padding,
    this.showClearButton = true,
    this.searchBar,
    this.maps,
    this.flagsMap = const {},
  });

  /// A boolean indicating whether to show a clear button in the search bar.
  final bool? showClearButton;

  /// The optional search bar to display.
  final TextField? searchBar;

  /// The padding to apply to the search bar.
  final EdgeInsetsGeometry? searchBarPadding;

  /// Bundled translation and flag maps used for localized rendering.
  ///
  /// Provide the [IsoMaps] produced by [TypedLocaleDelegate] (via
  /// `TypedLocale.maps`) to benefit from the pre-computed caches with O(1)
  /// lookup time. Supplying custom [IsoMaps] gives full control over the
  /// displayed strings and flag associations.
  final IsoMaps? maps;

  /// An optional map of flags for the ISO items. Allows to provide a
  /// custom set of flags for the picker, which can be used to display
  /// flags for the ISO items in the picker.
  ///
  /// Country and phone code pickers
  /// already provide a default set of flags. You can override this map
  /// to provide custom flags for the picker. Same applies to language and
  /// currency pickers (although this is not a recommended practice).
  final Map<IsoTranslated, BasicFlag> flagsMap;
}
