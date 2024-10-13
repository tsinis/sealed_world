// ignore_for_file: avoid-nullable-parameters-with-default-values

import "package:flutter/material.dart";
import "package:world_flags/world_flags.dart";

import "../../constants/ui_constants.dart";
import "../../extensions/iso_semantics_extension.dart";
import "../../models/item_properties.dart";
import "../generic_widgets/list_item_tile.dart";

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
    super.excludeSemantics = false,
    super.semanticsIdentifier,
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
    double? leadingFlagHeight = 18,
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
    super.excludeSemantics,
  }) : super(
          country.item,
          isChosen: country.isChosen,
          isDisabled: country.isDisabled,
          semanticsIdentifier: country.item.semanticIdentifier,
          title: title ??
              Text(
                country.item.namesCommonNative(skipFirst: true),
                overflow: TextOverflow.ellipsis,
              ),
          leading: Padding(
            padding: const EdgeInsets.only(top: UiConstants.point),
            child: leading ??
                Builder(
                  builder: (context) => CountryFlag.simplified(
                    country.item,
                    height: context.flagTheme?.height ?? leadingFlagHeight,
                    aspectRatio: context.flagTheme?.aspectRatio ??
                        FlagConstants.defaultAspectRatio,
                    decoration: context.flagTheme?.decoration ??
                        const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(UiConstants.point / 2),
                          ),
                        ),
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
    double? leadingFlagHeight = 16,
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
    super.excludeSemantics,
  }) : super(
          country.item,
          isChosen: country.isChosen,
          isDisabled: country.isDisabled,
          semanticsIdentifier: country.item.semanticIdentifier,
          title: title ??
              Text(
                country.item.namesNative.first.common,
                overflow: TextOverflow.ellipsis,
              ),
          leading: leading ??
              Builder(
                builder: (context) => CountryFlag.simplified(
                  country.item,
                  height: context.flagTheme?.height ?? leadingFlagHeight,
                  aspectRatio: context.flagTheme?.aspectRatio ??
                      FlagConstants.defaultAspectRatio,
                  decoration: context.flagTheme?.decoration ??
                      const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(3)),
                      ),
                ),
              ),
        );
}
