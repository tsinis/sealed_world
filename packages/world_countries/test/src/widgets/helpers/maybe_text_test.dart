import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/widgets/helpers/maybe_text.dart";

void main() => group("$MaybeText", () {
      testWidgets("renders no text when value is null", (tester) async {
        await tester.pumpWidget(MaterialApp(home: MaybeText(null)));
        expect(find.byType(MaybeText), findsOneWidget);
        expect(find.byType(RichText), findsOneWidget);
        expect(find.text(""), findsOneWidget);
      });

      testWidgets("renders text with non-null value", (tester) async {
        await tester.pumpWidget(MaterialApp(home: MaybeText("Text")));
        expect(find.byType(MaybeText), findsOneWidget);
        expect(find.byType(RichText), findsOneWidget);
        expect(find.text("Text"), findsOneWidget);
      });
    });
