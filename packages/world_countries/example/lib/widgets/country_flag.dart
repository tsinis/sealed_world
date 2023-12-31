import "package:flutter/widgets.dart";
import "package:world_countries/helpers.dart";
import "package:world_countries/world_countries.dart";

import "../assets/fonts.gen.dart";

class CountryFlag extends StatelessWidget {
  const CountryFlag(this.country, {required this.size, super.key});

  final WorldCountry country;
  final double size;

  @override
  Widget build(BuildContext context) => FunctionalPlatform.maybeWhenConst(
        web: EmojiFlag.platformDefault(country, size: size),
        orElse: DecoratedBox(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: context.theme.colorScheme.onSecondary,
                blurRadius: UiConstants.point,
              ),
            ],
            shape: BoxShape.circle,
          ),
          child: EmojiFlag.fromEmojiFamily(
            country,
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
        ),
      );
}
