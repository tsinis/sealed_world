import "package:flutter/material.dart";
import "package:sealed_countries/sealed_countries.dart";

import "../../constants/ui_constants.dart";
import "../../models/item_properties.dart";
import "../generic_widgets/list_item_tile.dart";

class LanguageTile extends ListItemTile<NaturalLanguage> {
  const LanguageTile(
    NaturalLanguage language, {
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
    super.index,
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
  }) : super(language);

  LanguageTile.defaultFromProperties(
    ItemProperties<NaturalLanguage> language, {
    Widget? leading,
    Widget? subtitle,
    Widget? title,
    double? minLeadingWidth,
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
          language.item,
          index: language.index,
          isChosen: language.isChosen,
          isDisabled: language.isDisabled,
          title: title ?? Text(language.item.namesNative.first),
          minLeadingWidth: minLeadingWidth ?? UiConstants.constraints.minWidth,
          leading: leading ??
              ConstrainedBox(
                constraints: UiConstants.constraints.copyWith(
                  minWidth: minLeadingWidth ?? UiConstants.constraints.minWidth,
                ),
                child: Text(
                  language.item.code,
                  textAlign: TextAlign.center,
                ),
              ),
          subtitle: subtitle ??
              Text(
                "${language.item.name} (${language.item.codeShort})",
                overflow: TextOverflow.ellipsis,
              ),
        );
}