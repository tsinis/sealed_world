// ignore_for_file: avoid-nullable-parameters-with-default-values

import "package:flutter/material.dart";
import "package:world_flags/world_flags.dart";

import "../../extensions/iso_semantics_extension.dart";
import "../../models/item_properties.dart";
import "../generic_widgets/list_item_tile.dart";
import "../helpers/maybe_widget.dart";

/// A tile widget that displays information about the ISO object.
class IsoTile<T extends IsoTranslated> extends ListItemTile<T> {
  /// Constructor for the [IsoTile] class.
  ///
  /// * Input ISO item is the ISO object to display information about.
  /// * All other parameters are optional and are passed to the superclass
  /// constructor.
  const IsoTile(
    super.item, {
    this.flagTheme = const FlagThemeData.small(),
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
    super.semanticsIdentifier,
    super.minTileHeight,
    super.internalAddSemanticForOnTap,
    super.statesController,
    super.excludeSemantics = false,
  });

  /// Constructor for the [IsoTile] class that uses an [ItemProperties]
  /// object.
  ///
  /// * [iso] is the [ItemProperties] object containing the ISO object to
  ///   display information about.
  /// * All other parameters are optional and are passed to the superclass
  ///   constructor.
  IsoTile.fromProperties(
    ItemProperties<T> iso, {
    this.flagTheme = const FlagThemeData.small(),
    BasicFlag? leadingFlag,
    Widget? title,
    Widget? subtitle,
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
    super.minTileHeight,
    super.internalAddSemanticForOnTap,
    super.statesController,
    super.excludeSemantics = false,
  }) : super(
         iso.item,
         isChosen: iso.isChosen,
         isDisabled: iso.isDisabled,
         semanticsIdentifier: iso.item.semanticIdentifier,
         leading: leadingFlag?.copyWithTheme(theme: flagTheme),
         title:
             title ??
             MaybeWidget.orNull(
               iso.item.namesNative?.firstOrNull?.toString(),
               (firstName) => Text(firstName, overflow: TextOverflow.ellipsis),
             ),
         subtitle:
             subtitle ??
             Text(
               iso.item.namesCommonNative(
                 skipFirst: title == null,
                 orElse: iso.item.code,
               ),
               overflow: TextOverflow.ellipsis,
             ),
       );

  /// The theme data for the displayed in the tile, could be also provided
  /// via [ThemeExtension<FlagThemeData>].
  final FlagThemeData flagTheme;
}
