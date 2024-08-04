// ignore_for_file: deprecated_member_use_from_same_package

import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/widgets/country/emoji_flag.dart";
import "package:world_flags/world_flags.dart";

void main() => group("$EmojiFlag", () {
      final value = WorldCountry.list.first;
      test("equality", () {
        expect(
          EmojiFlag.custom(value).style,
          EmojiFlag.platformDefault(value).style,
        );
        expect(
          EmojiFlag.custom(value).style,
          isNot(
            EmojiFlag.platformDefault(
              value,
              style: EmojiFlag.custom(value).style?.copyWith(fontSize: 1),
            ).style,
          ),
        );
      });
    });
