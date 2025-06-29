import "package:_sealed_world_tests/sealed_world_tests.dart";
import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_flags/world_flags.dart";

void main() => group("$CountryFlag", () {
  const value = CountryDeu();
  const flag = CountryFlag.custom(value, {}, orElse: FlutterLogo());

  test(
    "toStringShort",
    () => expect(flag.toStringShort(), "$CountryFlag(${value.emoji})"),
  );

  assertTest("zero height", () => CountryFlag.simplified(value, height: 0));
  assertTest("zero width", () => CountryFlag.simplified(value, width: 0));
  assertTest(
    "zero aspectRatio",
    () => CountryFlag.simplified(value, aspectRatio: 0),
  );

  test("debugFillProperties", () {
    final builder = DiagnosticPropertiesBuilder();
    expect(builder.properties.any((prop) => prop.name == "padding"), isFalse);

    flag.debugFillProperties(builder);
    expect(builder.properties.any((prop) => prop.name == "padding"), isTrue);
  });

  testWidgets("custom constructor", (tester) async {
    await tester.pumpWidget(const MaterialApp(home: flag));

    expect(find.byType(FlutterLogo), findsOneWidget);
  });

  testWidgets("simplified constructor", (tester) async {
    await tester.pumpWidget(
      const MaterialApp(home: CountryFlag.simplified(value)),
    );

    expect(find.byType(FlutterLogo), findsNothing);
  });

  testWidgets("circle flag decoration", (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: const CountryFlag.simplified(value).basicFlag?.copyWith(
          decoration: const BoxDecoration(shape: BoxShape.circle),
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(FlutterLogo), findsNothing);
    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is DecoratedBox &&
            widget.decoration is BoxDecoration &&
            // ignore: avoid-type-casts, it's just a test.
            (widget.decoration as BoxDecoration).shape == BoxShape.circle,
      ),
      findsOneWidget,
    );
  });
});
