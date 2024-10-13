import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/models/item_properties.dart";
import "package:world_countries/src/widgets/language/language_tile.dart";
import "package:world_flags/world_flags.dart";

import "../../../helpers/widget_tester_extension.dart";

void main() => group("$LanguageTile", () {
      final value = NaturalLanguage.list.first;
      test(
        "constructor",
        // ignore: avoid-misused-test-matchers, testing constructor.
        () => expect(LanguageTile(value).autofocus, isNotNull),
      );

      testWidgets("default title", (tester) async {
        final context = await tester.contextExtractor();
        await tester.pumpMaterialApp(
          LanguageTile.fromProperties(
            ItemProperties(context, value, index: 1),
          ),
        );

        expect(
          find.widgetWithText(
            LanguageTile,
            "${value.name} (${value.codeShort})",
          ),
          findsOneWidget,
        );
      });
    });
