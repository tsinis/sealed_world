import "package:flutter_test/flutter_test.dart";
import "package:sealed_countries/sealed_countries.dart";
import "package:world_countries/src/models/locale/iso_locale.dart";
import "package:world_countries/src/theme/pickers_theme_data.dart";

import "../../helpers/widget_tester_extension.dart";

void main() => group("$PickersThemeData", () {
      const locale = IsoLocale(LangFra());
      const original = WidgetTesterExtension.pickersTheme;

      test("copyWith", () {
        var copy = original.copyWith(translation: locale);

        expect(copy, isNot(WidgetTesterExtension.pickersTheme));
        expect(copy.translation, locale);
        copy = copy.copyWith(showHeader: false);
        expect(copy.showHeader, isFalse);
      });

      test("lerp", () => expect(original.lerp(original, 1), original));
    });
