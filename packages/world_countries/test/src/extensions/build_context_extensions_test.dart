import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/extensions/build_context_extensions.dart";

void main() => group("BuildContextExtensions", () {
      Widget wrap(Widget child) =>
          MaterialApp(home: Builder(builder: (context) => child));

      testWidgets("materialL10n returns MaterialLocalizations", (tester) async {
        await tester.pumpWidget(wrap(Container()));
        final context = tester.element(find.byType(Container));
        expect(context.materialL10n, isA<MaterialLocalizations>());
      });

      testWidgets(
        "hasMaterialL10n returns true if MaterialLocalizations is present",
        (tester) async {
          await tester.pumpWidget(wrap(Container()));
          final context = tester.element(find.byType(Container));
          expect(context.hasMaterialL10n, isTrue);
        },
      );

      testWidgets("navigator returns NavigatorState", (tester) async {
        await tester.pumpWidget(wrap(Container()));
        final context = tester.element(find.byType(Container));
        expect(context.navigator, isA<NavigatorState>());
      });

      testWidgets("pop pops the current route", (tester) async {
        final route = MaterialPageRoute<Object>(builder: (_) => Container());
        await tester.pumpWidget(
          wrap(
            Builder(
              builder: (context) => ElevatedButton(
                onPressed: () async => context.push(route),
                child: const Text("Push route"),
              ),
            ),
          ),
        );
        await tester.tap(find.byType(ElevatedButton));
        await tester.pumpAndSettle();
        final context = tester.element(find.byType(Container));
        expect(find.byType(Container), findsOneWidget);
        context.pop();
        await tester.pumpAndSettle();
        expect(find.byType(Container), findsNothing);
      });

      testWidgets("push pushes a new route", (tester) async {
        final route = MaterialPageRoute<Object>(builder: (_) => Container());
        await tester.pumpWidget(
          wrap(
            Builder(
              builder: (context) => ElevatedButton(
                onPressed: () async => context.push(route),
                child: const Text("Push route"),
              ),
            ),
          ),
        );
        await tester.tap(find.byType(ElevatedButton));
        await tester.pumpAndSettle();
        final context = tester.element(find.byType(Container));
        expect(find.byType(Container), findsOneWidget);
        context.pop();
        await tester.pumpAndSettle();
        expect(find.byType(Container), findsNothing);
      });

      testWidgets(
        "maybePop pops the current route if there is a previous route",
        (tester) async {
          final route1 = MaterialPageRoute<Object>(builder: (_) => Container());
          final route2 =
              MaterialPageRoute<Object>(builder: (_) => const SizedBox());
          await tester.pumpWidget(
            wrap(
              Builder(
                builder: (context) => ElevatedButton(
                  onPressed: () async {
                    await context.push(route1);
                    await context.push(route2);
                  },
                  child: const Text("Push routes"),
                ),
              ),
            ),
          );
          await tester.tap(find.byType(ElevatedButton));
          await tester.pumpAndSettle();
          var context = tester.element(find.byType(Container));
          expect(find.byType(Container), findsOneWidget);
          final result = await context.maybePop();
          expect(result, isTrue);
          await tester.pumpAndSettle();
          expect(find.byType(SizedBox), findsOneWidget);
          context = tester.element(find.byType(SizedBox))..pop();
          await tester.pumpAndSettle();
          expect(find.byType(Container), findsNothing);
        },
      );

      testWidgets(
        "maybePop does nothing if there is no previous route",
        (tester) async {
          await tester.pumpWidget(wrap(Container()));
          final context = tester.element(find.byType(Container));
          final result = await context.maybePop();
          expect(result, isFalse);
        },
      );

      testWidgets("focus returns FocusScopeNode", (tester) async {
        await tester.pumpWidget(wrap(Container()));
        final context = tester.element(find.byType(Container));
        expect(context.focus, isA<FocusScopeNode>());
      });

      testWidgets("media returns MediaQueryData", (tester) async {
        await tester.pumpWidget(wrap(Container()));
        final context = tester.element(find.byType(Container));
        expect(context.media, isA<MediaQueryData>());
      });
    });
