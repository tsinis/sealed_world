import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/extensions/navigator_context_extension.dart";

import "../../helpers/widget_tester_extension.dart";

void main() => group("NavigatorContextExtension", () {
      // ignore: avoid-local-functions, it's test group.
      Future<BuildContext> contextExtractor(
        WidgetTester tester, [
        Widget child = const SizedBox(),
      ]) async {
        await tester.pumpMaterialApp(child);

        return tester.element(find.byType(child.runtimeType));
      }

      testWidgets("navigator", (tester) async {
        final context = await contextExtractor(tester);
        expect(context.navigator, isA<NavigatorState>());
        expect(context.navigator.canPop(), isFalse);
      });

      testWidgets("pop pops the current route", (tester) async {
        final route = MaterialPageRoute<Object>(builder: (_) => Container());
        await tester.pumpMaterialApp(
          Builder(
            builder: (context) => ElevatedButton(
              onPressed: () async => context.push(route),
              child: const Text("Push route"),
            ),
          ),
        );
        await tester.tapAndSettle(find.byType(ElevatedButton));
        final context = tester.element(find.byType(Container));
        expect(find.byType(Container), findsOneWidget);
        context.pop();
        await tester.pumpAndSettle();
        expect(find.byType(Container), findsNothing);
      });

      testWidgets("push pushes a new route", (tester) async {
        final route = MaterialPageRoute<Object>(builder: (_) => Container());
        await tester.pumpMaterialApp(
          Builder(
            builder: (context) => ElevatedButton(
              onPressed: () async => context.push(route),
              child: const Text("Push route"),
            ),
          ),
        );
        await tester.tapAndSettle(find.byType(ElevatedButton));
        final context = tester.element(find.byType(Container));
        expect(find.byType(Container), findsOneWidget);
        context.pop();
        await tester.pumpAndSettle();
        expect(find.byType(Container), findsNothing);
      });

      testWidgets(
        "maybePop pops the current route if there is a previous route",
        (tester) async {
          final routeFirst =
              MaterialPageRoute<Object>(builder: (_) => Container());
          final routeSecond =
              MaterialPageRoute<Object>(builder: (_) => const SizedBox());

          await tester.pumpMaterialApp(
            Builder(
              builder: (context) => ElevatedButton(
                onPressed: () async {
                  await context.push(routeFirst);
                  await context.push(routeSecond);
                },
                child: const Text("Push routes"),
              ),
            ),
          );
          await tester.tapAndSettle(find.byType(ElevatedButton));
          Element context = tester.element(find.byType(Container));
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

      testWidgets("maybePop", (tester) async {
        final context = await contextExtractor(tester);
        final result = await context.maybePop();
        expect(result, isFalse);
      });
    });
