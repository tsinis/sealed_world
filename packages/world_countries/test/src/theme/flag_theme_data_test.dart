// Stage 1 bridge: this file intentionally uses the deprecated FlagThemeData
// shim that bridges Material ThemeExtension to FlagTheme. It will be removed
// in Stage 2 alongside the shim itself.
// ignore_for_file: deprecated_member_use_from_same_package
import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/theme/flag_theme_data.dart";
import "package:world_flags/world_flags.dart" as a;

void main() => group("$FlagThemeData in world_countries", () {
  tearDown(a.FlagTheme.debugResetFallbackResolvers);

  test("implements a.DecoratedFlagInterface", () {
    const theme = FlagThemeData(height: 20);
    expect(theme, isA<a.DecoratedFlagInterface>());
    expect(theme.height, 20);
  });

  test("fallback constructor", () {
    // ignore: prefer_const_constructors, intentional non-const to hit runtime constructor.
    final fallback = FlagThemeData.fallback();
    expect(fallback.aspectRatio, isNull);
    expect(fallback.decoration, isNull);
    expect(fallback.decorationPosition, isNull);
    expect(fallback.padding, isNull);
    expect(fallback.height, isNull);
    expect(fallback.width, isNull);
    expect(fallback.flagChild, isNull);
    expect(fallback.specifiedAspectRatio, isNull);
  });

  test("small constructor", () {
    const small = FlagThemeData.small();
    expect(small.height, 18);
    expect(small.decoration, isNotNull);

    const withChild = FlagThemeData.small(child: Text("s"));
    expect(withChild.child, isA<Text>());
  });

  test("deprecated child getter and parameter", () {
    const custom = FlagThemeData(child: Text("c"));
    expect(custom.child, isA<Text>());
    expect(custom.flagChild, isA<Text>());
  });

  test("type getter triggers bridge", () {
    expect(a.FlagTheme.fallbackResolvers, isEmpty);
    const theme = FlagThemeData();
    final type = theme.type;
    expect(type, isA<Type>());
    expect(a.FlagTheme.fallbackResolvers, isNotEmpty);

    // Calling ensureBridge again is idempotent.
    FlagThemeData.ensureBridge();
    expect(a.FlagTheme.fallbackResolvers.length, 1);
  });

  testWidgets("bridges Material ThemeExtension to FlagTheme.maybeOf", (
    tester,
  ) async {
    const theme = FlagThemeData(height: 28);
    a.DecoratedFlagInterface? resolved;

    await tester.pumpWidget(
      MaterialApp(
        theme: ThemeData(extensions: const [theme]),
        home: Builder(
          builder: (context) {
            resolved = a.FlagTheme.maybeOf(context);

            return const SizedBox();
          },
        ),
      ),
    );

    expect(resolved?.height, 28);
  });

  test("copyWith works correctly", () {
    const original = FlagThemeData(
      aspectRatio: 1.5,
      decoration: BoxDecoration(color: Colors.red),
      decorationPosition: DecorationPosition.background,
      padding: EdgeInsets.all(4),
      height: 20,
      width: 30,
      flagChild: Text("flag"),
    );

    final copied = original.copyWith(
      aspectRatio: -1,
      height: -1,
      width: -1,
      clearDecoration: true,
      clearDecorationPosition: true,
      clearPadding: true,
      clearFlagChild: true,
    );
    expect(copied.aspectRatio, isNull);
    expect(copied.height, isNull);
    expect(copied.width, isNull);
    expect(copied.decoration, isNull);
    expect(copied.decorationPosition, isNull);
    expect(copied.padding, isNull);
    expect(copied.flagChild, isNull);

    final emptyCopy = original.copyWith();
    expect(emptyCopy, equals(original));

    final updated = original.copyWith(
      aspectRatio: 2,
      child: const Text("child"),
    );
    expect(updated.aspectRatio, 2);
    expect(updated.flagChild, isA<Text>());
  });

  test("lerp works as expected", () {
    const start = FlagThemeData(
      aspectRatio: 1,
      height: 100,
      width: 100,
      decorationPosition: DecorationPosition.background,
      decoration: BoxDecoration(color: Colors.red),
      padding: EdgeInsets.all(4),
      flagChild: Text("start"),
    );
    const end = FlagThemeData(
      aspectRatio: 2,
      height: 200,
      width: 200,
      decorationPosition: DecorationPosition.foreground,
      decoration: BoxDecoration(color: Colors.blue),
      padding: EdgeInsets.all(8),
      flagChild: Text("end"),
    );

    final lerpedWithNull = start.lerp(null, 1);
    expect(lerpedWithNull.height, isNull);
    expect(
      lerpedWithNull.decoration,
      BoxDecoration.lerp(start.decoration, null, 1),
    );

    final early = start.lerp(end, 0.25);
    expect(early.decorationPosition, DecorationPosition.background);
    expect(early.flagChild, start.flagChild);
    expect(
      early.decoration,
      BoxDecoration.lerp(start.decoration, end.decoration, 0.25),
    );

    final late = start.lerp(end, 0.75);
    expect(late.decorationPosition, DecorationPosition.foreground);
    expect(late.flagChild, end.flagChild);
    expect(late.height, 175);
    expect(late.width, 175);
    expect(late.aspectRatio, 1.75);
    expect(
      late.padding,
      EdgeInsetsGeometry.lerp(start.padding, end.padding, 0.75),
    );
  });

  test("operator == and hashCode", () {
    const child1 = Text("1");
    const data1 = FlagThemeData(
      aspectRatio: 1,
      height: 20,
      width: 30,
      flagChild: child1,
      decoration: BoxDecoration(color: Colors.red),
      decorationPosition: DecorationPosition.background,
      padding: EdgeInsets.all(4),
    );
    const data2 = FlagThemeData(
      aspectRatio: 1,
      height: 20,
      width: 30,
      flagChild: child1,
      decoration: BoxDecoration(color: Colors.red),
      decorationPosition: DecorationPosition.background,
      padding: EdgeInsets.all(4),
    );
    const data3 = FlagThemeData(height: 25, width: 30, flagChild: child1);
    const dataDiffWidth = FlagThemeData(
      height: 20,
      width: 35,
      flagChild: Text("1"),
    );
    const dataDiffChild = FlagThemeData(
      height: 20,
      width: 30,
      flagChild: Text("2"),
    );

    expect(data1, equals(data2));
    // ignore: avoid-self-compare, intentional test for operator == identity.
    expect(data1 == data1, isTrue);
    expect(data1 == Object(), isFalse);
    expect(data1, isNot(equals(data3)));
    expect(data1, isNot(equals(dataDiffWidth)));
    expect(data1, isNot(equals(dataDiffChild)));
    expect(data1, isNot(equals(data1.copyWith(aspectRatio: 2))));
    expect(
      data1,
      isNot(
        equals(
          data1.copyWith(decoration: const BoxDecoration(color: Colors.blue)),
        ),
      ),
    );
    expect(
      data1,
      isNot(
        equals(
          data1.copyWith(decorationPosition: DecorationPosition.foreground),
        ),
      ),
    );
    expect(
      data1,
      isNot(equals(data1.copyWith(padding: const EdgeInsets.all(8)))),
    );
    expect(data1.hashCode, equals(data2.hashCode));
    expect(data1.hashCode, isNot(equals(data3.hashCode)));
  });

  test("toString includes non-null and null fields correctly", () {
    const empty = FlagThemeData.fallback();
    expect(empty.toString(), contains("FlagThemeData"));

    const filled = FlagThemeData(
      aspectRatio: 1.5,
      decoration: BoxDecoration(),
      decorationPosition: DecorationPosition.background,
      padding: EdgeInsets.zero,
      height: 10,
      width: 20,
      flagChild: SizedBox(),
    );
    final str = filled.toString();
    expect(str, contains("aspectRatio: 1.5"));
    expect(str, contains("decoration:"));
    expect(str, contains("decorationPosition:"));
    expect(str, contains("padding:"));
    expect(str, contains("height: 10.0"));
    expect(str, contains("width: 20.0"));
    expect(str, contains("flagChild:"));
  });
});
