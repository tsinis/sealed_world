import "package:flutter/material.dart";
import "package:sealed_countries/sealed_countries.dart";

import "../../constants/ui_constants.dart";
import "../../extensions/build_context_extension.dart";
import "../../models/item_properties.dart";
import "../generic_widgets/list_item_tile.dart";

/// A list item tile widget that displays information about a natural language.
class LanguageTile extends ListItemTile<NaturalLanguage> {
  /// Constructor for the [LanguageTile] class.
  ///
  /// * Input language item is the natural language to display information about
  /// * All other parameters are optional and are passed
  /// to the superclass constructor.
  const LanguageTile(
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

  /// Constructor for the [LanguageTile] class, that uses the item-properties.
  LanguageTile.fromProperties(
    ItemProperties<NaturalLanguage> language, {
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
          language.item,
          isChosen: language.isChosen,
          isDisabled: language.isDisabled,
          title: title ?? Text(language.item.namesNative.first),
          minLeadingWidth: minLeadingWidth,
          leading: leading ??
              ConstrainedBox(
                constraints:
                    UiConstants.constraints.copyWith(minWidth: minLeadingWidth),
                child: Builder(
                  builder: (context) => Text(
                    language.item.code,
                    style: context.theme.textTheme.titleMedium,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
          subtitle: subtitle ??
              Text(
                "${language.item.name} (${language.item.codeShort})",
                overflow: TextOverflow.ellipsis,
              ),
        );
}
