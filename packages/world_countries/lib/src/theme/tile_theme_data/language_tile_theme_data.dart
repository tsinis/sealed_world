import "package:world_flags/world_flags.dart";

import "../../models/item_properties.dart";
import "base_tile_theme_data.dart";

/// A theme extension data class that holds theme data for language tiles.
///
/// This class is specific to tiles that display natural language data and it
/// extends [BaseTileThemeData] with a specified type of [NaturalLanguage]. It
/// capitalizes on the base class's ability to customize the appearance and
/// interaction of tiles within the app's theme.
///
/// Usage: To utilize this theme data, provide a builder function that knows how
/// to render a tile given [NaturalLanguage] item properties.
///
/// Example:
/// ```dart
/// final languageTileThemeData = LanguageTileThemeData(
///   itemBuilder: (itemProperties, defaultTile) {
///     // Use the default tile as-is
///     return defaultTile;
///
///     // Or customize it with copyWith
///     return defaultTile.copyWith(dense: true);
///
///     // Or build a custom tile
///     return MyLanguageTile(
///       title: itemProperties.item.commonNameFor(locale),
///       isDense: defaultTile.dense ?? false,
///     );
///   },
/// );
/// ```
///
/// The `MyLanguageTile` is a hypothetical widget that uses the provided
/// [NaturalLanguage] properties to build a UI component representing a
/// language.
final class LanguageTileThemeData extends BaseTileThemeData<NaturalLanguage> {
  /// Constructs a [LanguageTileThemeData] with an optional builder function.
  ///
  /// The builder function should take [ItemProperties] of type
  /// [NaturalLanguage] and the default tile widget, and return a widget that
  /// visually represents the language (optionally by returning or customizing
  /// the default tile).
  const LanguageTileThemeData({super.itemBuilder});
}
