import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/widgets/helpers/maybe_widget.dart";

void main() => group("$MaybeWidget", () {
      testWidgets("renders orElse when value is null", (tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: MaybeWidget<String>(
              null,
              Text.new,
              orElse: Text("Fallback"),
            ),
          ),
        );
        expect(find.text("Fallback"), findsOneWidget);
      });

      testWidgets("renders _map with non-null value", (tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: MaybeWidget<String>(
              "Hello",
              Text.new,
              orElse: Text("Fallback"),
            ),
          ),
        );
        expect(find.text("Hello"), findsOneWidget);
      });
    });
