import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/widgets/buttons/clear_button.dart";

import "../../../helpers/widget_tester_extension.dart";

void main() => group("$ClearButton", () {
  testWidgets("uses onPressed when provided", (tester) async {
    final controller = TextEditingController(text: "abc");
    int pressedCount = 0;

    await tester.pumpWidgetsApp(
      ClearButton(controller, onPressed: () => pressedCount += 1),
    );

    await tester.tap(find.byIcon(Icons.clear));
    await tester.pump();

    expect(pressedCount, 1);
    expect(controller.text, "abc");

    controller.dispose();
  });

  testWidgets("defaults to controller.clear when onPressed is null", (
    tester,
  ) async {
    final controller = TextEditingController(text: "abc");

    await tester.pumpWidgetsApp(ClearButton(controller));

    await tester.tap(find.byIcon(Icons.clear));
    await tester.pump();

    expect(controller.text, isEmpty);

    controller.dispose();
  });
});
