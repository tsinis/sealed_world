// GENERATED CODE - DO NOT MODIFY BY HAND

part of "emoji_family.dart";

extension EmojiFamilyExtension on EmojiFamily {
  bool get isTwemoji => this == EmojiFamily.twemoji;
  bool get isOpenMoji => this == EmojiFamily.openMoji;
  bool get isNotoEmoji => this == EmojiFamily.notoEmoji;

  R map<R>({
    required R Function(EmojiFamily twemoji) twemoji,
    required R Function(EmojiFamily openMoji) openMoji,
    required R Function(EmojiFamily notoEmoji) notoEmoji,
  }) {
    switch (this) {
      case EmojiFamily.twemoji:
        return twemoji(this);
      case EmojiFamily.openMoji:
        return openMoji(this);
      case EmojiFamily.notoEmoji:
        return notoEmoji(this);
    }
  }

  R maybeMap<R>({
    required R Function(EmojiFamily emojiFamily) orElse,
    R Function(EmojiFamily twemoji)? twemoji,
    R Function(EmojiFamily openMoji)? openMoji,
    R Function(EmojiFamily notoEmoji)? notoEmoji,
  }) {
    switch (this) {
      case EmojiFamily.twemoji:
        return twemoji?.call(this) ?? orElse(this);
      case EmojiFamily.openMoji:
        return openMoji?.call(this) ?? orElse(this);
      case EmojiFamily.notoEmoji:
        return notoEmoji?.call(this) ?? orElse(this);
    }
  }

  R maybeWhen<R>({
    required R Function() orElse,
    R Function()? twemoji,
    R Function()? openMoji,
    R Function()? notoEmoji,
  }) {
    switch (this) {
      case EmojiFamily.twemoji:
        return twemoji?.call() ?? orElse();
      case EmojiFamily.openMoji:
        return openMoji?.call() ?? orElse();
      case EmojiFamily.notoEmoji:
        return notoEmoji?.call() ?? orElse();
    }
  }

  R when<R>({
    required R Function() twemoji,
    required R Function() openMoji,
    required R Function() notoEmoji,
  }) {
    switch (this) {
      case EmojiFamily.twemoji:
        return twemoji();
      case EmojiFamily.openMoji:
        return openMoji();
      case EmojiFamily.notoEmoji:
        return notoEmoji();
    }
  }

  R? whenOrNull<R>({
    R Function()? twemoji,
    R Function()? openMoji,
    R Function()? notoEmoji,
    R Function()? orElse,
  }) {
    switch (this) {
      case EmojiFamily.twemoji:
        return twemoji?.call() ?? orElse?.call();
      case EmojiFamily.openMoji:
        return openMoji?.call() ?? orElse?.call();
      case EmojiFamily.notoEmoji:
        return notoEmoji?.call() ?? orElse?.call();
    }
  }
}
