import "package:sealed_countries/sealed_countries.dart";

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
/// of emoji flags displayed.
///
/// Usage: To use this theme data, you should provide a builder function capable
/// of rendering a tile given [WorldCountry] item properties. Additionally, you
/// can specify the family of emoji flags to be used with the tiles.
///
/// Example:
/// ```dart
/// final countryTileThemeData = CountryTileThemeData(
///   emojiFamily: EmojiFamily.twemoji,
///   builder: (itemProperties, {isDense}) => MyCountryTile(
///     title: itemProperties.item.translations.first.common,
///     isDense: isDense,
///   ),
/// );
/// ```
///
/// `MyCountryTile` is a hypothetical widget that uses the [WorldCountry]
/// properties to create a UI component representing a country, including an
/// emoji flag based on the specified family.
final class CountryTileThemeData extends BaseTileThemeData<WorldCountry> {
  /// Constructs a [CountryTileThemeData] with an optional emoji flag family and
  /// builder function.
  ///
  /// The `emojiFamily` determines the style of the emoji flag to be used. The
  /// builder function should take [ItemProperties] of type [WorldCountry] and
  /// an optional density flag, and return a widget that visually represents the
  /// country.
  ///
  /// The default emoji flag family is [EmojiFamily.twemoji].
  const CountryTileThemeData({this.emojiFamily, super.builder});

  /// The family of emoji flag to be used when rendering country flags in tiles.
  ///
  /// This allows for consistent flag rendering across the app. The available
  /// families are typically different emoji sets provided by various creators,
  /// such as Twemoji, OpenMoji, Noto Color Emoji, etc.
  ///
  /// The default emoji flag family is [EmojiFamily.twemoji].
  final EmojiFamily? emojiFamily;
}
