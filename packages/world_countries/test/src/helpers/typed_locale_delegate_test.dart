import "dart:ui";

import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/helpers/typed_locale_delegate.dart";
import "package:world_countries/src/models/locale/iso_locale.dart";
import "package:world_flags/world_flags.dart";

void main() => group("$TypedLocaleDelegate", () {
      const english = LangEng();
      const delegate = TypedLocaleDelegate();

      test(
        "shouldReload",
        () => expect(delegate.shouldReload(delegate), isFalse),
      );

      test(
        "toString",
        () => expect(delegate.toString(), contains("TypedLocaleDelegate")),
      );

      test("asyncTranslationCacheProcessing set to false", () async {
        const locale = Locale("en");
        final asyncLoad = delegate.load(locale);
        final syncLoad =
            const TypedLocaleDelegate(asyncTranslationCacheProcessing: false)
                .load(locale);

        expect(await asyncLoad, await syncLoad);
      });

      group("isSupported", () {
        test(
          "returns typed locale on supported locale",
          () async => expect(
            await delegate.load(const Locale("en")),
            const IsoLocale(english),
          ),
        );

        test(
          "should map default resolution locale",
          () async => expect(
            await delegate.load(const Locale("gsw")),
            const IsoLocale(LangDeu(), country: CountryChe()),
          ),
        );

        test(
          "throws assertion error on unsupported locale",
          () async => expect(
            () async => delegate.load(const Locale("00")),
            throwsAssertionError,
          ),
        );

        test(
          "throws no assertion errors if fallbackLanguage specified",
          () async {
            const fallbackDelegate =
                TypedLocaleDelegate(fallbackLanguage: english);
            expect(fallbackDelegate.toString(), contains(english.name));
            expect(
              await fallbackDelegate.load(const Locale("00")),
              const IsoLocale(english),
            );
          },
        );
      });
    });
