import "package:flutter_test/flutter_test.dart";
import "package:sealed_countries/sealed_countries.dart";
import "package:world_countries/src/models/item_properties.dart";
import "package:world_countries/src/widgets/currency/currency_tile.dart";

import "../../../helpers/widget_tester_extension.dart";

void main() => group("$CurrencyTile", () {
      final value = FiatCurrency.list.first;
      test(
        "constructor",
        () => expect(CurrencyTile(value).autofocus, isNotNull),
      );

      testWidgets(
        "default title",
        (tester) async {
          final context = await tester.contextExtractor();
          await tester.pumpMaterialApp(
            CurrencyTile.fromProperties(
              ItemProperties(context, value, index: 1),
            ),
          );

          expect(
            find.widgetWithText(CurrencyTile, "${value.name} (${value.code})"),
            findsOneWidget,
          );
        },
      );
    });
