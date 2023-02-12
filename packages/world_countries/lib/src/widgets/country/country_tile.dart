import "package:flutter/material.dart";
import "package:sealed_countries/sealed_countries.dart";

import "../../models/item_properties.dart";
import "../generic_widgets/list_item_tile.dart";
import "emoji_flag.dart";

class CountryTile extends ListItemTile<WorldCountry> {
  const CountryTile(
    WorldCountry country, {
    super.chosenIcon,
    super.index,
    super.isChosen,
    super.isDisabled,
    super.key,
    super.leading,
    super.leadingAndTrailingTextStyle,
    super.minLeadingWidth,
    super.onPressed,
    super.subtitle,
    super.title,
  }) : super(country);

  CountryTile.defaultFromProperties(
    ItemProperties<WorldCountry> country, {
    Widget? leading,
    Widget? subtitle,
    Widget? title,
    super.chosenIcon,
    super.leadingAndTrailingTextStyle,
    super.minLeadingWidth,
    super.onPressed,
    super.key,
  }) : super(
          country.item,
          index: country.index,
          isChosen: country.isChosen,
          isDisabled: country.isDisabled,
          title: title ?? Text(country.item.namesNative.first.common),
          leading: leading ?? EmojiFlag.twemoji(country.item),
          subtitle: subtitle ??
              Text(
                country.item.namesCommonNative(skipFirst: true) ??
                    country.item.nameEnglish.common,
                overflow: TextOverflow.ellipsis,
              ),
        );
}
