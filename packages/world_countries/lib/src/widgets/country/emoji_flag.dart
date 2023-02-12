import "package:flutter/widgets.dart";

import "../../../world_countries.dart";
import "../../helpers/functional_platform.dart";

class EmojiFlag extends Text {
  EmojiFlag.twemoji(
    WorldCountry country, {
    TextStyle? style,
    super.key,
    super.strutStyle,
    super.textAlign,
    super.textDirection,
    super.locale,
    super.softWrap,
    super.overflow,
    super.textScaleFactor,
    super.maxLines,
    super.semanticsLabel,
    super.textWidthBasis,
    super.textHeightBehavior,
    super.selectionColor,
  }) : super(
          country.emoji,
          style: (style ?? const TextStyle()).copyWith(
            color: UiConstants.color,
            package: PackageConstants.name,
            fontFamily: FunctionalPlatform.maybeWhen(
              web: () => WorldCountryFonts.twemojiWoff2,
              iOS: () => WorldCountryFonts.twemojiWoff2,
              macOS: () => WorldCountryFonts.twemojiWoff2,
              orElse: () => WorldCountryFonts.twemojiTtf,
            ),
          ),
        );

  EmojiFlag.platformDefault(
    WorldCountry country, {
    TextStyle? style,
    super.key,
    super.strutStyle,
    super.textAlign,
    super.textDirection,
    super.locale,
    super.softWrap,
    super.overflow,
    super.textScaleFactor,
    super.maxLines,
    super.semanticsLabel,
    super.textWidthBasis,
    super.textHeightBehavior,
    super.selectionColor,
  }) : super(
          country.emoji,
          style:
              (style ?? const TextStyle()).copyWith(color: UiConstants.color),
        );
}
