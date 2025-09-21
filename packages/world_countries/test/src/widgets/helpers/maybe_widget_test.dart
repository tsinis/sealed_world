import "package:flutter/foundation.dart" show DiagnosticPropertiesBuilder;
import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/widgets/helpers/maybe_widget.dart";

void main() => group("$MaybeWidget", () {
  const fallbackText = "Fallback";
  const testValue = "Test";

  test(
    "main constructor",
    () =>
        expect(MaybeWidget(null, (_) => const SizedBox()), isA<MaybeWidget>()),
  );

  test(
    "offstage constructor",
    () => expect(
      MaybeWidget.offstage(null, (_) => const SizedBox()),
      isA<MaybeWidget>(),
    ),
  );

  test("debugFillProperties", () {
    final builder = DiagnosticPropertiesBuilder();
    expect(builder.properties.any((prop) => prop.name == "value"), isFalse);

    const MaybeWidget(testValue, Text.new).debugFillProperties(builder);
    expect(builder.properties.any((prop) => prop.name == "value"), isTrue);
  });

  testWidgets("renders orElse when value is null", (tester) async {
    await tester.pumpWidget(
      const Directionality(
        textDirection: TextDirection.ltr,
        child: MaybeWidget<String>(null, Text.new, orElse: Text(fallbackText)),
      ),
    );
    expect(find.text(fallbackText), findsOneWidget);
  });

  testWidgets("renders _map with non-null value", (tester) async {
    await tester.pumpWidget(
      const Directionality(
        textDirection: TextDirection.ltr,
        child: MaybeWidget<String>(
          testValue,
          Text.new,
          orElse: Text(fallbackText),
        ),
      ),
    );
    expect(find.text(testValue), findsOneWidget);
  });

  testWidgets("renders orElse when value is null in identifiable constructor", (
    tester,
  ) async {
    await tester.pumpWidget(
      Directionality(
        textDirection: TextDirection.ltr,
        child: MaybeWidget<String>.identifiable(
          null,
          Text.new,
          orElse: const Text(testValue),
        ),
      ),
    );
    expect(find.text(testValue), findsOneWidget);
  });

  group("offstage", () {
    testWidgets("renders $Offstage when value is null", (tester) async {
      await tester.pumpWidget(
        const Directionality(
          textDirection: TextDirection.ltr,
          child: MaybeWidget<String>.offstage(null, Text.new),
        ),
      );
      expect(find.byType(Text), findsNothing);
      expect(
        find.byWidgetPredicate(
          (widget) => widget is Offstage && widget.offstage,
        ),
        findsOneWidget,
      );
    });

    testWidgets("renders widget when value is not null", (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: MaybeWidget.offstage(testValue, Text.new)),
      );
      expect(find.text(testValue), findsOneWidget);
      expect(
        find.byWidgetPredicate(
          (widget) => widget is Offstage && !widget.offstage,
        ),
        findsOneWidget,
      );
    });

    testWidgets("uses custom orElse widget when provided", (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: MaybeWidget<String>.offstage(
            null,
            Text.new,
            orElse: SizedBox.shrink(),
          ),
        ),
      );
      expect(find.byType(SizedBox), findsOneWidget);
      expect(
        find.byWidgetPredicate(
          (widget) => widget is Offstage && !widget.offstage,
        ),
        findsOneWidget,
      );
    });
  });

  group("list", () {
    test("returns empty list when value is null", () {
      final result = MaybeWidget.list<String>(null, child: Text.new);
      expect(result, isEmpty);
    });

    test("returns empty list when child callback returns null", () {
      final result = MaybeWidget.list(testValue, child: (_) => null);
      expect(result, isEmpty);
    });

    test("returns single widget when using child callback", () {
      final result = MaybeWidget.list(testValue, child: Text.new);
      expect(result.single, isA<Text>());
    });

    test("returns multiple widgets when using children callback", () {
      final result = MaybeWidget.list(
        testValue,
        children: (text) => [Text(text), const Icon(Icons.star)],
      );
      expect(result.length, 2);
      expect(result.first, isA<Text>());
      expect(result.last, isA<Icon>());
    });

    test("filters out null widgets from children callback", () {
      final result = MaybeWidget.list(
        testValue,
        children: (text) => [Text(text), null, const Icon(null), null],
      );
      expect(result.length, 2);
      expect(result.first, isA<Text>());
      expect(result.last, isA<Icon>());
    });

    test("returns unmodifiable list from children callback", () {
      final result = MaybeWidget.list(
        testValue,
        children: (text) => [Text(text)],
      );
      expect(() => result.add(const Text("new")), throwsUnsupportedError);
    });
  });

  group("orNull", () {
    test(
      "returns null when value is null (builder provided)",
      () => expect(MaybeWidget.orNull<Text, String>(null, Text.new), isNull),
    );

    test(
      "returns null when value is null and builder is null",
      () => expect(MaybeWidget.orNull<Text, String>(null, null), isNull),
    );

    testWidgets("invokes builder when value non-null", (tester) async {
      final maybeWidget = MaybeWidget.orNull<Text, String>(testValue, Text.new);
      expect(maybeWidget?.data, testValue);
      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: SizedBox(child: maybeWidget),
        ),
      );
      expect(find.text(testValue), findsOneWidget);
    });

    test(
      "builder may return null leading to null result",
      () => expect(
        MaybeWidget.orNull<Text, String>(testValue, (_) => null),
        isNull,
      ),
    );

    test(
      "generic inference works without explicit type args",
      () => expect(MaybeWidget.orNull(testValue, Text.new), isA<Text>()),
    );
  });
});
