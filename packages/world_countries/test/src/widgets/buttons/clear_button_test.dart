import "package:flutter/foundation.dart";
import "package:flutter/widgets.dart";
import "package:flutter_test/flutter_test.dart";
import "package:material_ui/material_ui.dart" show Icons;
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

  test("debugFillProperties", () {
    final controller = TextEditingController();
    final button = ClearButton(controller);
    final builder = DiagnosticPropertiesBuilder();
    button.debugFillProperties(builder);
    final props = builder.properties.map((i) => i.name).toSet();
    expect(props, contains("controller"));
    expect(props, contains("duration"));
    expect(props, contains("reverseDuration"));
    expect(props, contains("firstCurve"));
    expect(props, contains("secondCurve"));
    expect(props, contains("sizeCurve"));
    expect(props, contains("whenEmptyChild"));
    expect(props, contains("layoutBuilder"));
    expect(props, contains("excludeBottomFocus"));
    controller.dispose();
  });
});
