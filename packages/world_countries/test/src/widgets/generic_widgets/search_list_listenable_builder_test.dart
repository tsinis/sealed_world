import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/widgets/generic_widgets/search_list_listenable_builder.dart";

import "../../../helpers/widget_tester_extension.dart";

void main() => group("$SearchListListenableBuilder", () {
  const items = ["Apple", "Banana", "Cherry"];

  testWidgets("initializes with correct items", (tester) async {
    final controller = TextEditingController();
    final lastBuiltList = <String>[];

    await tester.pumpWidgetsApp(
      SearchListListenableBuilder(
        items: items,
        searchIn: (item, _) => {item},
        textController: controller,
        builder: (_, list) {
          lastBuiltList.addAll(list);

          return const SizedBox.shrink();
        },
      ),
    );

    expect(lastBuiltList, items);
    controller.dispose();
  });

  testWidgets("triggers didUpdateWidget on controller change", (tester) async {
    final anotherController = TextEditingController();
    final controller = TextEditingController();
    final lastBuiltList = <String>[];

    await tester.pumpWidgetsApp(
      SearchListListenableBuilder<String>(
        items: items,
        searchIn: (item, _) => {item},
        textController: controller,
        builder: (_, _) => const SizedBox.shrink(),
      ),
    );

    await tester.pumpWidgetsApp(
      SearchListListenableBuilder<String>(
        items: items,
        searchIn: (item, _) => {item},
        textController: anotherController,
        builder: (_, _) => const SizedBox.shrink(),
      ),
    );

    expect(lastBuiltList, isEmpty);
    anotherController.dispose();
    controller.dispose();
  });
});
