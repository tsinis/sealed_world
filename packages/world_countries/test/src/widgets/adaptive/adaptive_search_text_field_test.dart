import "package:flutter/widgets.dart";
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
    });
