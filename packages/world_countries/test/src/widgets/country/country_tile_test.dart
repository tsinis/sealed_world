import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/model/item_properties.dart";
import "package:world_countries/src/model/typedefs.dart";
import "package:world_flags/world_flags.dart";

import "../../../helpers/widget_tester_extension.dart";

void main() => group("$CountryTile", () {
  final value = WorldCountry.list.first;

  test(
    "constructor",
    // ignore: avoid-misused-test-matchers, testing constructor.
    () => expect(CountryTile(value).autofocus, isNotNull),
  );

  testWidgets("default title", (tester) async {
    final context = await tester.contextExtractor();
    await tester.pumpMaterialApp(
      CountryTile.fromProperties(ItemProperties(context, value, index: 1)),
    );

    expect(
      find.widgetWithText(CountryTile, value.namesNative.first.common),
      findsOneWidget,
    );
  });
});
