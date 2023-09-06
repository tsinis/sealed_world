import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/extensions/build_context_extension.dart";

import "../../helpers/widget_tester_extension.dart";

void main() => group("BuildContextExtension", () {
      Future<BuildContext> contextExtractor(
        WidgetTester tester, [
        Widget child = const SizedBox(),
      ]) async {
        await tester.pumpMaterialApp(child);

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
