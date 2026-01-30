import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/model/item_properties.dart";

void main() => group("$ItemProperties", () {
  testWidgets("methods", (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Builder(
          builder: (context) {
            final item1 = ItemProperties(
              context,
              "1",
              index: 1,
              isChosen: true,
            );
            final item2 = item1.copyWith(
              context: context,
              item: "2",
              index: 2,
              isChosen: false,
              isDisabled: true,
            );
            expect(item1.hashCode, isNot(item2.hashCode));
            expect(item1 == item2, isFalse);
            expect(item1 == item1.copyWith(item: "2"), isFalse);
            expect(item1 == item1.copyWith(isDisabled: true), isFalse);

            return Text(item2.toString());
          },
        ),
      ),
    );
    await tester.pump();

    expect(
      find.text(
        "ItemProperties(2, index: 2, isChosen: false, isDisabled: true)",
      ),
      findsOneWidget,
    );
  });
});
