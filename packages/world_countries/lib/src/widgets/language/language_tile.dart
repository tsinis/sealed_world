// ignore_for_file: avoid-nullable-parameters-with-default-values

import "package:flutter/material.dart";
import "package:world_flags/world_flags.dart";

import "../../constants/ui_constants.dart";
import "../../extensions/build_context_extension.dart";
import "../../extensions/iso_semantics_extension.dart";
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
    super.item, {
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
    super.excludeSemantics,
  }) : super(
         language.item,
         isChosen: language.isChosen,
         isDisabled: language.isDisabled,
         semanticsIdentifier: language.item.semanticIdentifier,
         title:
             title ??
             Text(
               "${language.item.name} (${language.item.codeShort})",
               overflow: TextOverflow.ellipsis,
             ),
         minLeadingWidth: minLeadingWidth,
         leading:
             leading ??
             ConstrainedBox(
               constraints: UiConstants.constraints.copyWith(
                 minWidth: minLeadingWidth,
               ),
               child: Padding(
                 padding: const EdgeInsets.only(top: UiConstants.point),
                 child: Builder(
                   builder: (context) => Text(
                     language.item.code,
                     style: context.theme.textTheme.titleMedium,
                     textAlign: TextAlign.center,
                   ),
                 ),
               ),
             ),
         subtitle: subtitle ?? Text(language.item.namesNative.first),
       );
}
