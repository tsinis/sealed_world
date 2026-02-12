import "package:flutter/foundation.dart" show immutable;
import "package:flutter/material.dart" show TextField, Theme;
import "package:flutter/widgets.dart" show EdgeInsetsGeometry;
import "package:world_flags/world_flags.dart";

import "../constants/ui_constants.dart";
import "../helpers/typed_locale_delegate.dart";
import "../model/iso/iso_maps.dart";

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
/// - [flagTheme]: Optional [FlagThemeData] override for flags rendering.
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
    this.flagTheme,
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

  /// Optional [FlagThemeData] override for the flags rendered in tiles.
  ///
  /// When not provided, the [FlagThemeData] from the current [Theme] is used.
  final FlagThemeData? flagTheme;
}
