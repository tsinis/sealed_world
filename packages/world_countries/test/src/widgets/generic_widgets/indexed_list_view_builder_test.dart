// ignore_for_file: prefer-match-file-name, a helper of the tests below.

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

    // Without `onPressed` the tile has no tap of its own, so the row's
    // detector keeps its tap, merged into the node of the tile.
    final row = tester.getSemantics(find.text("one"));
    expect(row.getSemanticsData().hasAction(SemanticsAction.tap), isTrue);
    tester.binding.renderViews.first.owner?.semanticsOwner?.performAction(
      row.id,
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

  group("reads the items", () {
    final numbers = List<int>.generate(100, (i) => i);

    test("sorted only once for a list sorted already", () {
      final counter = _Counter();
      final view = _SortingListView(numbers, sort: counter.descending);
      final sorted = view.sortedItems(numbers);
      final comparisons = counter.count;

      expect(view.sortedItems(sorted), same(sorted));
      expect(counter.count, comparisons);
    });

    testWidgets("sorted once per build", (tester) async {
      final oneSort = _Counter();
      final sorted = List.of(numbers)..sort(oneSort.descending);
      final counter = _Counter();
      await tester.pumpMaterialApp(
        IndexedListViewBuilder<int, Widget>(
          numbers,
          sort: counter.descending,
          itemBuilder: (props, _) => Text("${props.item}"),
        ),
      );

      expect(counter.count, oneSort.count);
      expect(
        tester.widgetList<Text>(find.byType(Text)).first.data,
        "${sorted.first}",
      );
    });

    testWidgets("from a lazy iterable only once", (tester) async {
      final counter = _Counter();
      await tester.pumpMaterialApp(
        IndexedListViewBuilder<int, Widget>(
          numbers.where(counter.isRead),
          itemBuilder: (props, _) => Text("${props.item}"),
        ),
      );

      expect(counter.count, numbers.length);
      expect(find.text("0"), findsOneWidget);
    });

    testWidgets("sorted when asked for properties of unsorted ones", (
      tester,
    ) async {
      final context = await tester.contextExtractor();
      final widget = IndexedListViewBuilder<int, Widget>(
        numbers,
        sort: _Counter().descending,
      );

      expect(widget.properties(context, 0).item, numbers.last);
      expect(widget.properties(context, 1, const [7, 9, 8]).item, 8);
    });
  });

  testWidgets("hitTestBehavior uses explicit value", (tester) async {
    const widget = IndexedListViewBuilder([1], hitTestBehavior: .translucent);
    await tester.pumpWidgetsApp(widget);
    final listView = tester.widget<ListView>(find.byType(ListView));
    expect(listView.hitTestBehavior, HitTestBehavior.translucent);
  });
});

/// Counts the comparisons (or reads) of the items.
final class _Counter {
  int count = 0;

  int descending(int first, int second) {
    count += 1;

    return second.compareTo(first);
  }

  bool isRead(int _) {
    count += 1;

    return true;
  }
}

/// Exposes the sorting of the list view.
class _SortingListView extends IndexedListViewBuilder<int, Widget> {
  const new(super.items, {super.sort});

  @override
  Iterable<int> defaultItems(BuildContext? context) => const [];

  @override
  List<int> sortedItems(Iterable<int> items) => super.sortedItems(items);
}
