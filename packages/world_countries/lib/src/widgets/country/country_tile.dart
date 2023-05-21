import "package:flutter/material.dart";
import "package:sealed_countries/sealed_countries.dart";

import "../../models/item_properties.dart";
import "../generic_widgets/list_item_tile.dart";
import "emoji_flag.dart";

/// A tile widget that displays information about a world country.
class CountryTile extends ListItemTile<WorldCountry> {
  /// Constructor for the [CountryTile] class.
  ///
  /// * [country] is the world country to display information about.
  /// * All other parameters are optional and are passed to the superclass
  /// constructor.
  const CountryTile(
    WorldCountry country, {
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
  }) : super(country);

  /// Constructor for the [CountryTile] class that uses an [ItemProperties]
  /// object.
  ///
  /// * [country] is the [ItemProperties] object containing the world country to
  ///   display information about.
  /// * All other parameters are optional and are passed to the superclass
  ///   constructor.
  /// * [translation] is an optional `NaturalLanguage` object used to translate
  ///   the country's name.
  CountryTile.fromProperties(
    ItemProperties<WorldCountry> country, {
    Widget? leading,
    Widget? subtitle,
    Widget? title,
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
    super.subtitleTextStyle,
    super.textColor,
    super.tileColor,
    super.titleAlignment,
    super.titleTextStyle,
    super.visualDensity,
    NaturalLanguage? translation,
  }) : super(
          country.item,
          isChosen: country.isChosen,
          isDisabled: country.isDisabled,
          title: title ?? Text(country.item.namesNative.first.common),
          leading: leading ?? EmojiFlag.twemoji(country.item),
          subtitle: subtitle ??
              Text(
                country.item.nameTranslated(translation)?.common ??
                    country.item.namesCommonNative(skipFirst: true),
                overflow: TextOverflow.ellipsis,
              ),
        );
}
