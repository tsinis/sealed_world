import "package:flutter/widgets.dart";
import "package:world_countries/world_countries.dart";

import "../assets/fonts.gen.dart";

class CountryFlag extends StatelessWidget {
  const CountryFlag(this.country, {required this.size, super.key});

  final WorldCountry country;
  final double size;

  @override
  Widget build(BuildContext context) => DecoratedBox(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: context.theme.colorScheme.onPrimary,
              offset: FunctionalPlatform.maybeWhenConst(
                web: Offset(0, -size / 4),
                orElse: Offset.zero,
              ),
              blurRadius: UiConstants.point,
            ),
          ],
          shape: FunctionalPlatform.maybeWhenConst(
            web: BoxShape.rectangle,
            orElse: BoxShape.circle,
          ),
        ),
        child: EmojiFlag.fromEmojiFamily(
          country,
          emojiFamily: FunctionalPlatform.maybeWhenConst(
            web: EmojiFamily.openMoji,
            orElse: null,
          ),
          style: TextStyle(
            fontSize: size,
            fontFamily: FunctionalPlatform.maybeWhenConst(
              android: FontFamily.emojiOneAndroid,
              iOS: FontFamily.emojiOneColor,
              macOS: FontFamily.emojiOneColor,
              orElse: FontFamily.emojiOneMozilla,
            ),
          ),
          textAlign: TextAlign.center,
        ),
      );
}
