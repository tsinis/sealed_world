import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/extensions/build_context_extension.dart";

import "../../helpers/widget_tester_extension.dart";

void main() => group("BuildContextExtension", () {
  testWidgets("materialL10n", (tester) async {
    final context = await tester.contextExtractor();
    expect(context.materialL10n, isA<MaterialLocalizations>());
    expect(context.materialL10n.okButtonLabel, isNotEmpty);
  });

  testWidgets("hasMaterialL10n", (tester) async {
    final context = await tester.contextExtractor();
    expect(context.hasMaterialL10n, isTrue);
  });

  testWidgets("focus", (tester) async {
    final context = await tester.contextExtractor();
    expect(context.focus, isA<FocusScopeNode>());
    expect(context.focus.canRequestFocus, isTrue);
  });

  testWidgets("media", (tester) async {
    final context = await tester.contextExtractor();
    expect(context.media, isA<MediaQueryData>());
    expect(context.media.size.height, isPositive);
  });

  testWidgets("padding", (tester) async {
    final context = await tester.contextExtractor();
    expect(context.padding, isA<EdgeInsets>());
    expect(context.padding.right, isZero);
  });

  testWidgets("scaffold", (tester) async {
    final context = await tester.contextExtractor();
    expect(context.scaffold, isA<ScaffoldState>());
    expect(context.scaffold.isDrawerOpen, isFalse);
  });

  testWidgets("maybeScaffold (present)", (tester) async {
    final context = await tester.contextExtractor();
    expect(context.maybeScaffold, isA<ScaffoldState>());
  });

  testWidgets(
    "maybeScaffold (absent)",
    (tester) => tester.pumpWidget(
      Builder(
        builder: (context) {
          expect(context.maybeScaffold, isNull);

          return const SizedBox();
        },
      ),
    ),
  );

  testWidgets("messenger", (tester) async {
    final context = await tester.contextExtractor();
    expect(context.messenger, isA<ScaffoldMessengerState>());
    expect(context.messenger.mounted, isTrue);
  });

  testWidgets("maybeMessenger (present)", (tester) async {
    final context = await tester.contextExtractor();
    expect(context.maybeMessenger, isA<ScaffoldMessengerState>());
  });

  testWidgets(
    "maybeMessenger (absent)",
    (tester) => tester.pumpWidget(
      Builder(
        builder: (context) {
          expect(context.maybeMessenger, isNull);

          return const SizedBox();
        },
      ),
    ),
  );

  testWidgets("showSnackBar", (tester) async {
    const message = "Hello, World!";
    const snackBar = SnackBar(content: Text(message));
    final context = await tester.contextExtractor();
    final controller = context.showSnackBar(snackBar);
    await tester.pump();

    expect(
      controller,
      isA<ScaffoldFeatureController<SnackBar, SnackBarClosedReason>>(),
    );
    expect(find.text(message), findsOneWidget);
  });
});
