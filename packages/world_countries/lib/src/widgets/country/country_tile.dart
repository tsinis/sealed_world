import "package:flutter/material.dart";
import "package:sealed_countries/sealed_countries.dart";

import "../../constants/ui_constants.dart";
import "../../extensions/world_countries_build_context_extension.dart";
import "../../models/emoji_family.dart";
import "../../models/item_properties.dart";
import "../generic_widgets/list_item_tile.dart";
import "emoji_flag.dart";

/// A tile widget that displays information about a world country.
class CountryTile extends ListItemTile<WorldCountry> {
  /// Constructor for the [CountryTile] class.
  ///
  /// * Input country item is the world country to display information about.
  /// * All other parameters are optional and are passed to the superclass
  /// constructor.
  const CountryTile(
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

  /// Constructor for the [CountryTile] class that uses an [ItemProperties]
  /// object.
  ///
  /// * [country] is the [ItemProperties] object containing the world country to
  ///   display information about.
  /// * All other parameters are optional and are passed to the superclass
  ///   constructor.
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
          country.item,
          isChosen: country.isChosen,
          isDisabled: country.isDisabled,
          title: title ??
              Text(
                country.item.namesCommonNative(skipFirst: true),
                overflow: TextOverflow.ellipsis,
              ),
          leading: Padding(
            padding: const EdgeInsets.only(top: UiConstants.point),
            child: leading ??
                Builder(
                  builder: (context) => EmojiFlag.fromEmojiFamily(
                    country.item,
                    emojiFamily: context.countryTileTheme?.emojiFamily ??
                        EmojiFamily.twemoji,
                  ),
                ),
          ),
          subtitle: subtitle ?? Text(country.item.namesNative.first.common),
        );

  /// Constructor for the [CountryTile] class that uses an [ItemProperties]
  /// object. It creates a simple dense country tile with no subtitle.
  ///
  /// * [country] is the [ItemProperties] object containing the world country to
  ///   display information about.
  /// * All other parameters are optional and are passed to the superclass
  ///   constructor.
  CountryTile.simple(
    ItemProperties<WorldCountry> country, {
    Widget? leading,
    Widget? title,
    super.autofocus,
    super.chosenIcon,
    super.contentPadding,
    super.dense = true,
    super.enableFeedback,
    super.focusColor,
    super.focusNode,
    super.horizontalTitleGap,
    super.hoverColor,
    super.iconColor,
    super.isThreeLine = false,
    super.key,
    super.leadingAndTrailingTextStyle,
    super.minLeadingWidth,
    super.minVerticalPadding,
    super.mouseCursor,
    super.onFocusChange,
    super.onLongPress,
    super.onPressed,
    super.selectedColor,
    super.selectedTileColor,
    super.shape,
    super.splashColor,
    super.style,
    super.subtitle,
    super.subtitleTextStyle,
    super.textColor,
    super.tileColor,
    super.titleAlignment,
    super.titleTextStyle,
    super.visualDensity = VisualDensity.compact,
  }) : super(
          country.item,
          isChosen: country.isChosen,
          isDisabled: country.isDisabled,
          title: title ??
              Text(
                country.item.namesNative.first.common,
                overflow: TextOverflow.ellipsis,
              ),
          leading: leading ??
              leading ??
              Builder(
                builder: (context) => EmojiFlag.fromEmojiFamily(
                  country.item,
                  emojiFamily: context.countryTileTheme?.emojiFamily ??
                      EmojiFamily.twemoji,
                ),
              ),
        );
}
