import "package:flutter/widgets.dart";
import "package:world_countries/world_countries.dart";

class CountryFlag extends StatelessWidget {
  const CountryFlag(this.country, {this.size, super.key});

  final WorldCountry country;
  final double? size;

  @override
  Widget build(BuildContext context) => EmojiFlag.fromEmojiFamily(
        country,
        emojiFamily: FunctionalPlatform.maybeWhenConst(
          android: EmojiFamily.openMoji,
          web: EmojiFamily.openMoji,
          orElse: null,
        ),
        style: TextStyle(
          fontSize: size,
          fontFamily: FunctionalPlatform.maybeWhenConst(
            iOS: "EmojiOneColor",
            macOS: "EmojiOneColor",
            orElse: "EmojiOneMozilla",
          ),
        ),
        textAlign: TextAlign.center,
      );
}
