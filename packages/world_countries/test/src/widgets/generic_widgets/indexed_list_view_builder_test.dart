import "package:flutter/semantics.dart" show SemanticsAction;
import "package:flutter/widgets.dart";
import "package:flutter_test/flutter_test.dart";
import "package:material_ui/material_ui.dart" show Divider;
import "package:world_countries/src/widgets/generic_widgets/indexed_list_view_builder.dart";
import "package:world_countries/src/widgets/generic_widgets/list_item_tile.dart";

import "../../../helpers/widget_tester_extension.dart";

void main() => group("$IndexedListViewBuilder", () {
  testWidgets("when isSearchable and showHeader are false", (tester) async {
    await tester.pumpWidgetsApp(const IndexedListViewBuilder(<Object>[]));
    expect(find.byType(IndexedListViewBuilder), findsOneWidget);
  });

  testWidgets("with theme extensions", (tester) async {
    final widget = IndexedListViewBuilder(
      itemBuilder: (props, _) => Text(props.item.toString()),
      const [1, 2],
    );
    await tester.pumpMaterialApp(widget);
    expect(
      find.byWidgetPredicate((i) => i is Text && i.data == "1"),
      findsOneWidget,
    );
    expect(find.byType(IndexedListViewBuilder<int, Widget>), findsOneWidget);
    expect(find.byType(ListView), findsOneWidget);
    expect(find.byType(Divider), findsOneWidget);
  });

  testWidgets("leaves tap semantics to a tile that selects", (tester) async {
    await tester.pumpMaterialApp(
      IndexedListViewBuilder<int, Widget>(
        const [1],
        itemBuilder: (props, _) =>
            ListItemTile(props.item, onPressed: print), // Dart 3.8 format.
      ),
    );

    // The tile's own ink well exposes the tap and selects, so the row's
    // detector adds nothing to the accessibility tree.
    final detector = tester.widget<GestureDetector>(
      find.ancestor(
        of: find.byType(ListItemTile<int>),
        matching: find.byType(GestureDetector),
      ),
    );
    expect(detector.excludeFromSemantics, isTrue);
  });

  testWidgets("a screen reader selects a tile that does not select", (
    tester,
  ) async {
    final handle = tester.ensureSemantics();
    final selected = <int>[];
    await tester.pumpMaterialApp(
      IndexedListViewBuilder<int, Widget>(
        const [1],
        onSelect: selected.add,
        itemBuilder: (props, _) =>
            ListItemTile(props.item, title: const Text("one")),
      ),
    );

    // Without `onPressed` the tile's ink well selects nothing, so the row's
    // detector keeps its tap: it is the node around the tile's own.
    final row = tester.getSemantics(find.text("one")).parent;
    expect(row?.getSemanticsData().hasAction(SemanticsAction.tap), isTrue);
    tester.binding.renderViews.first.owner?.semanticsOwner?.performAction(
      row?.id ?? -1,
      SemanticsAction.tap,
    );
    await tester.pump();

    expect(selected, [1]);
    handle.dispose();
  });

  testWidgets("exposes the tap of any other row", (tester) async {
    await tester.pumpMaterialApp(
      IndexedListViewBuilder<int, Widget>(
        const [1],
        itemBuilder: (props, _) => Text("${props.item}"), // Dart 3.8 format.
      ),
    );

    final detector = tester.widget<GestureDetector>(
      find.ancestor(of: find.text("1"), matching: find.byType(GestureDetector)),
    );
    expect(
      detector.excludeFromSemantics,
      isFalse,
      reason: "A custom row may have no tap of its own.",
    );
  });

  testWidgets("hitTestBehavior uses explicit value", (tester) async {
    const widget = IndexedListViewBuilder([1], hitTestBehavior: .translucent);
    await tester.pumpWidgetsApp(widget);
    final listView = tester.widget<ListView>(find.byType(ListView));
    expect(listView.hitTestBehavior, HitTestBehavior.translucent);
  });
});
