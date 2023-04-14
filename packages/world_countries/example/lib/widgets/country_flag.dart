import "package:flutter/widgets.dart";
import "package:world_countries/world_countries.dart";

class CountryFlag extends StatelessWidget {
  const CountryFlag(this.country, {this.size, super.key});

  final WorldCountry country;
  final double? size;

  @override
  Widget build(BuildContext context) => EmojiFlag.custom(
        country,
        style: TextStyle(
          fontSize: size,
          fontFamily: FunctionalPlatform.maybeWhen(
            // TODO: Investigate web platform.
            iOS: () => "EmojiOneColor",
            macOS: () => "EmojiOneColor",
            orElse: () => "EmojiOneMozilla",
          ),
        ),
        textAlign: TextAlign.center,
      );
}
