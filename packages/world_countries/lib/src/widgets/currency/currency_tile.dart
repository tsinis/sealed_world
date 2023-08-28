import "package:flutter/material.dart";
import "package:sealed_countries/sealed_countries.dart";

import "../../constants/ui_constants.dart";
import "../../extensions/build_context_extension.dart";
import "../../models/item_properties.dart";
import "../generic_widgets/list_item_tile.dart";

/// A tile widget that displays information about a fiat currency.
class CurrencyTile extends ListItemTile<FiatCurrency> {
  /// Constructor for the [CurrencyTile] class.
  ///
  /// * Input currency item is the fiat currency to display information about.
  /// * All other parameters are optional and are passed to the superclass
  /// constructor.
  const CurrencyTile(
    super._item, {
    super.autofocus,
    super.chosenIcon,
    super.contentPadding,
    super.dense,
    super.enableFeedback,
    super.focusColor,
    super.focusNode,
    super.horizontalTitleGap,
    super.hoverColor,
    super.iconColor,
    super.isChosen,
    super.isDisabled,
    super.isThreeLine,
    super.key,
    super.leading,
    super.leadingAndTrailingTextStyle,
    super.minLeadingWidth,
    super.minVerticalPadding,
    super.mouseCursor,
    super.onFocusChange,
    super.onLongPress,
    super.onPressed,
    super.onTap,
    super.selectedColor,
    super.selectedTileColor,
    super.shape,
    super.splashColor,
    super.style,
    super.subtitle,
    super.subtitleTextStyle,
    super.textColor,
    super.tileColor,
    super.title,
    super.titleAlignment,
    super.titleTextStyle,
    super.visualDensity,
  });

  /// Constructor for the [CurrencyTile] class that uses an [ItemProperties]
  /// object.
  ///
  /// * [currency] is the [ItemProperties] object containing the fiat currency
  ///   to display information about.
  /// * All other parameters are optional and are passed to the superclass
  ///   constructor.
  CurrencyTile.fromProperties(
    ItemProperties<FiatCurrency> currency, {
    Widget? leading,
    Widget? subtitle,
    Widget? title,
    double? minLeadingWidth = UiConstants.minWidth,
    super.autofocus,
    super.chosenIcon,
    super.contentPadding,
    super.dense,
    super.enableFeedback,
    super.focusColor,
    super.focusNode,
    super.horizontalTitleGap,
    super.hoverColor,
    super.iconColor,
    super.isThreeLine,
    super.key,
    super.leadingAndTrailingTextStyle,
    super.minVerticalPadding,
    super.mouseCursor,
    super.onFocusChange,
    super.onLongPress,
    super.onPressed,
    super.onTap,
    super.selectedColor,
    super.selectedTileColor,
    super.shape,
    super.splashColor,
    super.style,
    super.subtitleTextStyle,
    super.textColor,
    super.tileColor,
    super.titleAlignment,
    super.titleTextStyle,
    super.visualDensity,
  }) : super(
          currency.item,
          isChosen: currency.isChosen,
          isDisabled: currency.isDisabled,
          title: title ?? Text(currency.item.namesNative.first),
          minLeadingWidth: minLeadingWidth,
          leading: leading ??
              ConstrainedBox(
                constraints:
                    UiConstants.constraints.copyWith(minWidth: minLeadingWidth),
                child: Builder(
                  builder: (context) => Text(
                    currency.item.unit,
                    style: context.theme.textTheme.titleMedium,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
          subtitle: subtitle ??
              Text(
                "${currency.item.name} (${currency.item.code})",
                overflow: TextOverflow.ellipsis,
              ),
        );
}
