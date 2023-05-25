import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/extensions/build_context_extensions.dart";

void main() => group("BuildContextExtensions", () {
      Widget wrap(Widget child) => MaterialApp(home: Scaffold(body: child));
      Future<BuildContext> contextExtractor(
        WidgetTester tester, [
        Widget child = const SizedBox(),
      ]) async {
        await tester.pumpWidget(wrap(child));

        return tester.element(find.byType(child.runtimeType));
      }

      testWidgets(
        "materialL10n",
        (tester) async {
          final context = await contextExtractor(tester);
          expect(context.materialL10n, isA<MaterialLocalizations>());
          expect(context.materialL10n.okButtonLabel, isNotEmpty);
        },
      );

      testWidgets(
        "hasMaterialL10n",
        (tester) async {
          final context = await contextExtractor(tester);
          expect(context.hasMaterialL10n, isTrue);
        },
      );

      testWidgets("navigator", (tester) async {
        final context = await contextExtractor(tester);
        expect(context.navigator, isA<NavigatorState>());
        expect(context.navigator.canPop(), isFalse);
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
        "maybePop",
        (tester) async {
          final context = await contextExtractor(tester);
          final result = await context.maybePop();
          expect(result, isFalse);
        },
      );

      testWidgets("focus", (tester) async {
        final context = await contextExtractor(tester);
        expect(context.focus, isA<FocusScopeNode>());
        expect(context.focus.canRequestFocus, isTrue);
      });

      testWidgets("media", (tester) async {
        final context = await contextExtractor(tester);
        expect(context.media, isA<MediaQueryData>());
        expect(context.media.size.height, isPositive);
      });

      testWidgets("padding", (tester) async {
        final context = await contextExtractor(tester);
        expect(context.padding, isA<EdgeInsets>());
        expect(context.padding.right, isZero);
      });

      testWidgets("scaffold", (tester) async {
        final context = await contextExtractor(tester);
        expect(context.scaffold, isA<ScaffoldState>());
        expect(context.scaffold.isDrawerOpen, isFalse);
      });

      testWidgets("messenger", (tester) async {
        final context = await contextExtractor(tester);
        expect(context.messenger, isA<ScaffoldMessengerState>());
        expect(context.messenger.mounted, isTrue);
      });

      testWidgets("showSnackBar", (tester) async {
        const message = "Hello, World!";
        const snackBar = SnackBar(content: Text(message));
        final context = await contextExtractor(tester);
        final controller = context.showSnackBar(snackBar);
        await tester.pump();

        expect(
          controller,
          isA<ScaffoldFeatureController<SnackBar, SnackBarClosedReason>>(),
        );
        expect(find.text(message), findsOneWidget);
      });
    });
