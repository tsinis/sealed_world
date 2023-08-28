import "package:flutter/widgets.dart";
import "package:world_countries/world_countries.dart";

import "../assets/fonts.gen.dart";

class CountryFlag extends StatelessWidget {
  const CountryFlag(this.country, {this.size, super.key});

  final WorldCountry country;
  final double? size;

  @override
  Widget build(BuildContext context) => EmojiFlag.fromEmojiFamily(
        country,
        style: TextStyle(
          fontSize: size,
          fontFamily: FunctionalPlatform.maybeWhenConst(
            android: FontFamily.emojiOneAndroid,
            iOS: FontFamily.emojiOneColor,
            macOS: FontFamily.emojiOneColor,
            web: FontFamily.emojiOneAndroid,
            orElse: FontFamily.emojiOneMozilla,
          ),
        ),
        textAlign: TextAlign.center,
      );
}
