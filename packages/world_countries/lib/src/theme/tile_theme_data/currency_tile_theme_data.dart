import "package:world_flags/world_flags.dart";

import "../../model/item_properties.dart" show ItemProperties;
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
/// import 'package:world_countries/world_countries.dart';
///
/// void main() {
///   final currencyTileTheme = CurrencyTileThemeData(
///     itemBuilder: (props, defaultTile) => defaultTile,
///   );
///   assert(currencyTileTheme.itemBuilder != null);
/// }
/// ```
///
/// `MyCurrencyTile` is a hypothetical widget that uses the [FiatCurrency]
/// properties to create a UI component representing a currency.
final class CurrencyTileThemeData extends BaseTileThemeData<FiatCurrency> {
  /// Constructs a [CurrencyTileThemeData] with an optional builder function.
  ///
  /// The builder function should take [ItemProperties] of type [FiatCurrency]
  /// and the default tile widget, and return a widget that visually represents
  /// the currency (optionally by returning or customizing the default tile).
  const new({super.itemBuilder});
}
