import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_flags/world_flags.dart";

void main() => group("$DualFlag", () {
  const item = FiatEur();
  const primary = BasicFlag(
    FlagProperties([ColorsProperties(Color(0xFFFF0000))]),
  );
  const secondary = BasicFlag(
    FlagProperties([ColorsProperties(Color(0xFF0000FF))]),
  );
  const primeMap = <FiatCurrency, BasicFlag>{item: primary};
  const alternativeMap = <FiatCurrency, BasicFlag>{item: secondary};

  test(
    "debugFillProperties includes splitAngle, clipSecondary, clipBehavior",
    () {
      const flag = DualFlag(item, primeMap, alternativeMap: alternativeMap);
      final builder = DiagnosticPropertiesBuilder();
      flag.debugFillProperties(builder);
      final names = builder.properties.map((property) => property.name).toSet();

      expect(names, contains("splitAngle"));
      expect(names, contains("clipSecondary"));
      expect(names, contains("clipBehavior"));
    },
  );

  testWidgets("renders single flag when no alternativeMap", (tester) async {
    const flag = DualFlag(item, primeMap);
    await tester.pumpWidget(const MaterialApp(home: flag));

    expect(find.byType(ClipPath), findsNothing);
  });

  testWidgets("renders single flag when primary and secondary are identical", (
    tester,
  ) async {
    const sameMap = <FiatCurrency, BasicFlag>{item: primary};
    const flag = DualFlag(item, primeMap, alternativeMap: sameMap);
    await tester.pumpWidget(const MaterialApp(home: flag));

    expect(find.byType(ClipPath), findsNothing);
  });

  testWidgets("renders dual flag with clip when flags differ", (tester) async {
    const flag = DualFlag(item, primeMap, alternativeMap: alternativeMap);
    await tester.pumpWidget(const MaterialApp(home: flag));

    expect(find.byType(ClipPath), findsOneWidget);
  });

  testWidgets("passes clipBehavior to ClipPath", (tester) async {
    const flag = DualFlag(
      item,
      primeMap,
      alternativeMap: alternativeMap,
      clipBehavior: Clip.hardEdge,
    );
    await tester.pumpWidget(const MaterialApp(home: flag));

    final clipPath = tester.widget<ClipPath>(find.byType(ClipPath));
    expect(clipPath.clipBehavior, Clip.hardEdge);
  });

  testWidgets("defaults clipBehavior to Clip.antiAlias", (tester) async {
    const flag = DualFlag(item, primeMap, alternativeMap: alternativeMap);
    await tester.pumpWidget(const MaterialApp(home: flag));

    final clipPath = tester.widget<ClipPath>(find.byType(ClipPath));
    expect(clipPath.clipBehavior, Clip.antiAlias);
  });

  testWidgets("clipSecondary: false clips the primary flag instead", (
    tester,
  ) async {
    const flag = DualFlag(
      item,
      primeMap,
      alternativeMap: alternativeMap,
      clipSecondary: false,
    );
    await tester.pumpWidget(const MaterialApp(home: flag));

    expect(find.byType(ClipPath), findsOneWidget);
  });

  testWidgets("renders orElse when item is not in map", (tester) async {
    const missingItem = FiatUsd();
    const flag = DualFlag(
      missingItem,
      primeMap,
      alternativeMap: alternativeMap,
      orElse: Text("fallback"),
    );
    await tester.pumpWidget(const MaterialApp(home: Scaffold(body: flag)));

    expect(find.text("fallback"), findsOneWidget);
  });
});
