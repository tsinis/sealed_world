// ignore_for_file: deprecated_member_use_from_same_package

import "package:world_flags/world_flags.dart";

import "../../models/emoji_family.dart";
import "../../models/item_properties.dart";
import "base_tile_theme_data.dart";

/// A theme extension data class that holds theme data for country/phone code
/// tiles.
///
/// This class is specific to tiles that display world country information and
/// extends [BaseTileThemeData] with a specified type of [WorldCountry]. It
/// introduces the ability to customize the appearance and interaction of
/// country and/or phone code tiles within the app's theme, including the style
/// of flags displayed.
///
/// Usage: To use this theme data, you should provide a builder function capable
/// of rendering a tile given [WorldCountry] item properties.
///
/// Example:
/// ```dart
/// final countryTileThemeData = CountryTileThemeData(
///   builder: (itemProperties, {isDense}) => MyCountryTile(
///     title: itemProperties.item.translations.first.common,
///     isDense: isDense,
///   ),
/// );
/// ```
///
/// `MyCountryTile` is a hypothetical widget that uses the [WorldCountry]
/// properties to create a UI component representing a country.
final class CountryTileThemeData extends BaseTileThemeData<WorldCountry> {
  /// Constructs a [CountryTileThemeData] with a builder function.
  ///
  /// The builder function should take [ItemProperties] of type [WorldCountry]
  /// and an optional density flag, and return a widget that visually represents
  /// the country.
  const CountryTileThemeData({
    @Deprecated(
      "Use FlagThemeData instead. This property will be removed in v2.0.0.",
    )
    this.emojiFamily,
    super.builder,
  });

  /// The family of emoji flag to be used when rendering country flags in tiles.
  ///
  /// This allows for consistent flag rendering across the app. The available
  /// families are typically different emoji sets provided by various creators,
  /// such as Twemoji, OpenMoji, Noto Color Emoji, etc.
  ///
  /// The default emoji flag family is [EmojiFamily.twemoji].
  @Deprecated(
    "Use FlagThemeData instead. This property will be removed in v2.0.0.",
  )
  final EmojiFamily? emojiFamily;
}
