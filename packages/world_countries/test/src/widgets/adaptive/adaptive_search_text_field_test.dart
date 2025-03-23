import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
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
          controller: controller,
          decoration: const InputDecoration(enabled: false),
          textCapitalization: TextCapitalization.words,
        ),
      ),
    );
    expect(find.byType(TextField), findsOneWidget);
    controller.dispose();
  });
});
