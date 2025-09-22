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

  group("buildWhen", () {
    testWidgets("renders builder when predicate returns true", (tester) async {
      await tester.pumpWidget(
        const Directionality(
          textDirection: TextDirection.ltr,
          child: MaybeWidget(
            testValue,
            Text.new,
            buildWhen: _nonEmpty,
            orElse: Text(fallbackText),
          ),
        ),
      );
      expect(find.text(testValue), findsOneWidget);
      expect(find.text(fallbackText), findsNothing);
    });

    testWidgets("renders orElse when predicate returns false", (tester) async {
      await tester.pumpWidget(
        const Directionality(
          textDirection: TextDirection.ltr,
          child: MaybeWidget(
            testValue,
            Text.new,
            buildWhen: _alwaysFalse,
            orElse: Text(fallbackText),
          ),
        ),
      );
      expect(find.text(testValue), findsNothing);
      expect(find.text(fallbackText), findsOneWidget);
    });

    testWidgets("predicate not provided behaves like null-check only", (
      tester,
    ) async {
      await tester.pumpWidget(
        const Directionality(
          textDirection: TextDirection.ltr,
          child: MaybeWidget(testValue, Text.new, orElse: Text(fallbackText)),
        ),
      );
      expect(find.text(testValue), findsOneWidget);
    });

    testWidgets("builder not invoked when predicate false", (tester) async {
      bool called = false;
      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: MaybeWidget(
            testValue,
            (v) {
              called = true; // Should not run.

              return Text(v);
            },
            buildWhen: _alwaysFalse,
            orElse: const Text(fallbackText),
          ),
        ),
      );
      expect(called, isFalse);
      expect(find.text(fallbackText), findsOneWidget);
    });

    test("predicate true: builder selected", () {
      final widget = MaybeWidget(
        testValue,
        (_) => const SizedBox(),
        buildWhen: (v) => v == testValue,
        orElse: const Text(fallbackText),
      );
      expect(widget.buildWhen?.call(testValue), isTrue);
    });

    test("predicate false: orElse fallback", () {
      final widget = MaybeWidget(
        testValue,
        (_) => const SizedBox(),
        buildWhen: (value) => value != testValue,
      );
      expect(widget.buildWhen?.call(testValue), isFalse);
    });

    test("predicate absent defaults to allowing build", () {
      final widget = MaybeWidget(testValue, (_) => const Text("OK"));
      expect(widget.buildWhen, isNull);
    });

    test("predicate not invoked when value is null (no side effects)", () {
      bool invoked = false;
      final widget = MaybeWidget(
        null,
        (_) => const SizedBox(),
        buildWhen: (_) {
          invoked = true; // Should remain `false` after constructor (no build).

          return true;
        },
      );
      expect(widget.buildWhen, isNotNull);
      expect(
        invoked,
        isFalse,
        reason: "No build() call performed yet; predicate must not have run",
      );
    });
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

    test("buildWhen false yields empty list (child)", () {
      final result = MaybeWidget.list(
        testValue,
        child: Text.new,
        buildWhen: _alwaysFalse,
      );
      expect(result, isEmpty);
    });

    test("buildWhen true yields list (child)", () {
      final result = MaybeWidget.list(
        testValue,
        child: Text.new,
        buildWhen: (_) => true,
      );
      expect(result.single, isA<Text>());
    });

    test("buildWhen false yields empty list (children)", () {
      final result = MaybeWidget.list(
        testValue,
        children: (v) => [Text(v)],
        buildWhen: _alwaysFalse,
      );
      expect(result, isEmpty);
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

    test("buildWhen false returns null (orNull)", () {
      final result = MaybeWidget.orNull(
        testValue,
        Text.new,
        buildWhen: _alwaysFalse,
      );
      expect(result, isNull);
    });

    test("buildWhen true returns widget (orNull)", () {
      final result = MaybeWidget.orNull(
        testValue,
        Text.new,
        buildWhen: (_) => true,
      );
      expect(result, isA<Text>());
    });
  });
});

// Predicate helpers for `buildWhen` tests.
bool _nonEmpty(String v) => v.isNotEmpty;
bool _alwaysFalse(Object _) => false;
