import "package:flutter/widgets.dart";
import "package:world_flags/world_flags.dart";

import "../../constants/ui_constants.dart";

/// Small context about other emoji fonts:
/// * FxEmojis is deprecated.
/// * EmojiOne is also deprecated.
/// * emojidex provides no open-source emojis.
/// * Segoe UI Emoji doesn't include country flags.
/// * EmojiTwo has no font (especially COLR) support:
/// https://github.com/EmojiTwo/emojitwo/issues/172
/// * Fluent Emoji has no country flags:
/// https://github.com/microsoft/fluentui-emoji/issues/25
/// * Streamline Emoji has only 32 flags.
/// * Apple Color Emoji are not open-source and free for everyone.
/// * JoyPixels are also not open-source and free for everyone.
class EmojiFlag extends Text {
  /// Platform default representation of the emoji flag.
  EmojiFlag.platformDefault(
    WorldCountry country, {
    double? size,
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
  }) : super(country.emoji, style: _style(style, null, size: size));

  /// Custom representation of the emoji flag.
  EmojiFlag.custom(
    WorldCountry country, {
    double? size,
    TextStyle? style,
    String? package,
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
          style: _style(style, style?.fontFamily, package: package, size: size),
        );

  static TextStyle _style(
    TextStyle? style,
    String? font, {
    String? package,
    double? size,
  }) =>
      (style ?? const TextStyle()).copyWith(
        color: UiConstants.color,
        fontSize: size ?? style?.fontSize,
        fontFamily: font,
        package: package,
      );
}
