import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_flags/world_flags.dart";

void main() => group("$LanguageFlag", () {
  testWidgets("renders single flag without alternativeMap", (tester) async {
    const flag = LanguageFlag(LangDeu());
    await tester.pumpWidget(const MaterialApp(home: flag));

    expect(find.byType(ClipPath), findsNothing);
  });

  testWidgets("renders dual flag with alternativeMap", (tester) async {
    const alternativeMap = <NaturalLanguage, BasicFlag>{
      LangDeu(): BasicFlag(
        FlagProperties([ColorsProperties(Color(0xFF0000FF))]),
      ),
    };
    const flag = LanguageFlag(LangDeu(), alternativeMap: alternativeMap);

    await tester.pumpWidget(const MaterialApp(home: flag));

    expect(find.byType(ClipPath), findsOneWidget);
  });

  testWidgets("passes clipBehavior through", (tester) async {
    const alternativeMap = <NaturalLanguage, BasicFlag>{
      LangDeu(): BasicFlag(
        FlagProperties([ColorsProperties(Color(0xFF0000FF))]),
      ),
    };
    const flag = LanguageFlag(
      LangDeu(),
      alternativeMap: alternativeMap,
      clipBehavior: Clip.hardEdge,
    );
    await tester.pumpWidget(const MaterialApp(home: flag));

    final clipPath = tester.widget<ClipPath>(find.byType(ClipPath));
    expect(clipPath.clipBehavior, Clip.hardEdge);
  });

  test(
    "defaultConventionalLanguageFlags length matches NaturalLanguage.list one",
    () => expect(
      LanguageFlag.defaultConventionalLanguageFlags.length,
      NaturalLanguage.list.length,
    ),
  );
});
