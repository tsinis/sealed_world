import "package:flutter/widgets.dart"
    show Center, Directionality, EdgeInsets, TextDirection;
import "package:flutter_test/flutter_test.dart";
import "package:sealed_countries/sealed_countries.dart";
import "package:world_flags/src/helpers/extensions/country_flag_extension.dart";
import "package:world_flags/src/ui/country_flag.dart";

void main() => group("CountryFlagExtension", () {
  const value = CountryDeu();
  const flagWithLabel = CountryFlag.simplified(value, semanticLabel: "DE");

  test(
    "country",
    () => expect(const CountryFlag.simplified(value).country, value),
  );

  group("copyWith", () {
    const flag = CountryFlag.simplified(value, height: 10);

    test("keeps the $CountryFlag type and its debug label", () {
      final copy = flag.copyWith(width: 20);

      expect(copy, isA<CountryFlag>());
      expect(copy.toStringShort(), flag.toStringShort());
      expect(copy.map, same(flag.map));
      expect(copy.height, 10);
      expect(copy.width, 20);
    });

    test("replaces the provided values", () {
      const other = CountryUsa();
      final copy = flag.copyWith(
        item: other,
        padding: EdgeInsets.zero,
        height: -1,
      );

      expect(copy.country, other);
      expect(copy.padding, EdgeInsets.zero);
      expect(copy.height, isNull);
    });
  });

  testWidgets("labels the flag for accessibility", (tester) async {
    final handle = tester.ensureSemantics();
    await tester.pumpWidget(
      const Directionality(
        textDirection: TextDirection.ltr,
        child: Center(
          child: CountryFlag.simplified(value, semanticLabel: "Germany"),
        ),
      ),
    );

    expect(find.bySemanticsLabel("Germany"), findsOneWidget);
    expect(
      flagWithLabel.copyWith(width: 1).semanticLabel,
      flagWithLabel.semanticLabel,
    );
    handle.dispose();
  });
});
