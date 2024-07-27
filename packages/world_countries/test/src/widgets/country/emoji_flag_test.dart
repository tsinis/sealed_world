// ignore_for_file: deprecated_member_use_from_same_package

import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/models/emoji_family.dart";
import "package:world_countries/src/widgets/country/emoji_flag.dart";
import "package:world_flags/world_flags.dart";

void main() => group("$EmojiFlag", () {
      final value = WorldCountry.list.first;
      test("equality", () {
        expect(
          EmojiFlag.fromEmojiFamily(value, emojiFamily: EmojiFamily.twemoji)
              .style,
          EmojiFlag.twemoji(value).style,
        );
        expect(
          EmojiFlag.fromEmojiFamily(value, emojiFamily: EmojiFamily.openMoji)
              .style,
          EmojiFlag.openMoji(value).style,
        );
        expect(
          EmojiFlag.fromEmojiFamily(value, emojiFamily: EmojiFamily.notoEmoji)
              .style,
          EmojiFlag.notoEmoji(value).style,
        );
        expect(
          EmojiFlag.custom(value).style,
          EmojiFlag.platformDefault(value).style,
        );
        expect(
          EmojiFlag.twemoji(value).style,
          isNot(EmojiFlag.platformDefault(value).style),
        );
        expect(
          EmojiFlag.twemoji(value).style,
          isNot(
            EmojiFlag.platformDefault(
              value,
              style: EmojiFlag.twemoji(value).style?.copyWith(fontSize: 1),
            ).style,
          ),
        );
      });
    });
