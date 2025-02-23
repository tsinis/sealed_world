import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/widgets/generic_widgets/indexed_list_view_builder.dart";

import "../../../helpers/widget_tester_extension.dart";

void main() => group("$IndexedListViewBuilder", () {
  testWidgets("when isSearchable and showHeader are false", (tester) async {
    await tester.pumpWidgetsApp(const IndexedListViewBuilder(<Object>[]));
    expect(find.byType(IndexedListViewBuilder), findsOneWidget);
  });

  testWidgets("with theme extensions", (tester) async {
    final widget = IndexedListViewBuilder(
      itemBuilder: (_, {isDense}) => Text("$isDense"),
      const [1, 2],
    );
    await tester.pumpMaterialApp(widget);
    expect(find.byType(IndexedListViewBuilder<int>), findsOneWidget);
    expect(find.byType(ListView), findsOneWidget);
    expect(find.byType(Divider), findsOneWidget);
  });
});
