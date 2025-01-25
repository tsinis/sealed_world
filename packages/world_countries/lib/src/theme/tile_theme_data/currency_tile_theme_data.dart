import "package:world_flags/world_flags.dart";

import "../../models/item_properties.dart";
import "base_tile_theme_data.dart";

/// A theme extension data class that holds theme data for currency tiles.
///
/// This class is specific to tiles that display fiat currency information and
/// extends [BaseTileThemeData] with a specified type of [FiatCurrency]. It
/// provides the ability to customize the appearance and interaction of currency
/// tiles within the app's theme.
///
/// Usage: To use this theme data, you should provide a builder function capable
/// of rendering a tile given [FiatCurrency] item properties.
///
/// Example:
/// ```dart
/// final currencyTileThemeData = CurrencyTileThemeData(
///   builder: (itemProperties, {isDense}) => MyCurrencyTile(
///     title: itemProperties.item.commonNameFor(locale),
///     isDense: isDense,
///   ),
/// );
/// ```
///
/// `MyCurrencyTile` is a hypothetical widget that uses the [FiatCurrency]
/// properties to create a UI component representing a currency.
final class CurrencyTileThemeData extends BaseTileThemeData<FiatCurrency> {
  /// Constructs a [CurrencyTileThemeData] with an optional builder function.
  ///
  /// The builder function should take [ItemProperties] of type [FiatCurrency]
  /// and an optional density flag, and return a widget that visually represents
  /// the currency.
  const CurrencyTileThemeData({super.builder});
}
