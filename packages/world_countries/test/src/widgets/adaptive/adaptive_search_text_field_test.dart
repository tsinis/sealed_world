import "package:flutter/foundation.dart";
import "package:flutter_test/flutter_test.dart";
import "package:material_ui/material_ui.dart";
import "package:world_countries/src/widgets/adaptive/adaptive_search_text_field.dart";

import "../../../helpers/widget_tester_extension.dart";

void main() => group("$AdaptiveSearchTextField", () {
  testWidgets("in $WidgetsApp", (tester) async {
    final controller = TextEditingController();
    await tester.pumpWidgetsApp(AdaptiveSearchTextField(controller));
    expect(find.byType(EditableText), findsOneWidget);
    controller.dispose();
  });

  testWidgets("in $MaterialApp", (tester) async {
    final controller = TextEditingController();
    await tester.pumpMaterialApp(
      AdaptiveSearchTextField(
        controller,
        copyFrom: TextField(
          autofillHints: const ["test"],
          controller: controller,
          decoration: const InputDecoration(enabled: false),
          textCapitalization: TextCapitalization.words,
        ),
      ),
    );
    expect(find.byType(TextField), findsOneWidget);
    controller.dispose();
  });

  test("debugFillProperties on widget", () {
    final controller = TextEditingController();
    final field = AdaptiveSearchTextField(controller);
    final builder = DiagnosticPropertiesBuilder();
    field.debugFillProperties(builder);
    final props = builder.properties.map((i) => i.name).toSet();
    expect(props, contains("copyFrom"));
    expect(props, contains("padding"));
    expect(props, contains("showClearButton"));
    controller.dispose();
  });

  testWidgets("debugFillProperties on state", (tester) async {
    final controller = TextEditingController();
    await tester.pumpWidgetsApp(AdaptiveSearchTextField(controller));
    final state = tester.state(find.byType(AdaptiveSearchTextField));
    final builder = DiagnosticPropertiesBuilder();
    state.debugFillProperties(builder);
    final props = builder.properties.map((i) => i.name).toSet();
    expect(props, contains("focusNode"));
    controller.dispose();
  });
});
