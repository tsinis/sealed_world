// ignore_for_file: prefer-match-file-name, helpers of the tests below.
// ignore_for_file: prefer-single-widget-per-file, widgets of the tests below.

import "dart:collection" show UnmodifiableListView;

import "package:flutter/foundation.dart";
import "package:flutter/widgets.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/model/search_data.dart";
import "package:world_countries/src/model/typedefs.dart";
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
        searchIn: (item, _) => SearchData.empty(code: item),
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
        searchIn: (item, _) => SearchData.empty(code: item),
        textController: controller,
        builder: (_, _) => const SizedBox.shrink(),
      ),
    );

    await tester.pumpWidgetsApp(
      SearchListListenableBuilder<String>(
        items: items,
        searchIn: (item, _) => SearchData.empty(code: item),
        textController: anotherController,
        builder: (_, _) => const SizedBox.shrink(),
      ),
    );

    expect(lastBuiltList, isEmpty);
    anotherController.dispose();
    controller.dispose();
  });

  group("keeps the list in sync", () {
    testWidgets("with new items", (tester) async {
      final list = _searchList(tester);
      await list.pump(items);
      await list.pump(const ["Date", "Fig"]);
      expect(list.built, ["Date", "Fig"]);

      await list.pump(const ["Kiwi", "Lime"]);
      expect(list.built, ["Kiwi", "Lime"]);
      await list.type("Li");
      expect(list.built, ["Lime"], reason: "The new items are searched.");
    });

    testWidgets("with equal items", (tester) async {
      final list = _searchList(tester);
      await list.pump(items);
      final builds = list.builds;
      await list.pump(items.toList());
      expect(list.built, items);
      expect(list.builds, builds + 1);
    });

    testWidgets("with a text that is already there", (tester) async {
      final list = _searchList(tester, text: "Ban");
      await list.pump(items);
      expect(list.built, ["Banana"]);
    });

    testWidgets("with new search data of the context", (tester) async {
      final list = _searchList(tester, text: "Pome");
      await list.pump(items, translations: const {"Apple": "Fruit"});
      expect(list.built, isEmpty);

      await list.pump(items, translations: const {"Apple": "Pome"});
      expect(list.built, ["Apple"]);
    });

    testWidgets("with a new case sensitivity", (tester) async {
      final list = _searchList(tester, text: "apple");
      await list.pump(items);
      expect(list.built, ["Apple"]);

      await list.pump(items, caseSensitiveSearch: true);
      expect(list.built, isEmpty);
    });

    testWidgets("with a new controller", (tester) async {
      final list = _searchList(tester);
      final another = TextEditingController(text: "Che");
      addTearDown(another.dispose);
      await list.pump(items);
      await list.pump(items, textController: another);
      expect(list.built, ["Cherry"]);

      await list.type("App");
      expect(list.built, ["Cherry"], reason: "The old one is not listened.");
    });

    testWidgets("ignoring spaces around the text", (tester) async {
      final list = _searchList(tester);
      await list.pump(items);
      await list.type(" ");
      expect(list.built, items);

      await list.type("app ");
      expect(list.built, ["Apple"]);
    });

    testWidgets("without a rebuild when the selection moves", (tester) async {
      final list = _searchList(tester);
      await list.pump(items);
      await list.type("an");
      final builds = list.builds;

      list.controller.selection = const TextSelection.collapsed(offset: 1);
      await tester.pump();
      expect(list.builds, builds);
    });

    testWidgets("with a new search", (tester) async {
      final list = _searchList(tester, text: "Pome");
      await list.pump(items);
      expect(list.built, isEmpty);

      await list.pump(items, searchIn: _searchApplesAsPome);
      expect(list.built, ["Apple"]);
    });

    testWidgets("with a new search results builder", (tester) async {
      final list = _searchList(tester);
      await list.pump(items, onSearchResultsBuilder: list.whereAll);
      expect(list.built, items);

      await list.pump(items, onSearchResultsBuilder: _bananas);
      expect(list.built, ["Banana"]);
    });

    testWidgets("searching in the items only once searched", (tester) async {
      final list = _searchList(tester);
      await list.pump(items, searchIn: list.countedSearchIn);
      expect(list.reads, isZero, reason: "Nothing is searched yet.");

      await list.type("a");
      expect(list.reads, items.length);
      await list.pump(items.toList(), searchIn: list.countedSearchIn);
      expect(list.reads, items.length, reason: "The search is the same.");
    });

    testWidgets("comparing new items in a single pass", (tester) async {
      final list = _searchList(tester);
      await list.pump(list.counted(items));
      list.reads = 0;

      await list.pump(list.counted(items));
      expect(list.reads, items.length * 2, reason: "Old and new ones once.");
      expect(list.built, items);
    });

    testWidgets("matching by its own compareWithTextInput", (tester) async {
      final list = _searchList(tester);
      await list.pump(items, everyItemFor: "any");
      await list.type("any");
      expect(list.built, items);
    });

    testWidgets("filtering the items only once per text", (tester) async {
      final list = _searchList(tester);
      await list.pump(items, onSearchResultsBuilder: list.whereAll);
      list.reads = 0;

      await list.type("a");
      expect(list.built, items);
      expect(list.reads, items.length);
    });
  });

  test("debugFillProperties on widget", () {
    final controller = TextEditingController();
    final widget = SearchListListenableBuilder(
      items: items,
      searchIn: (item, _) => SearchData.empty(code: item),
      textController: controller,
      builder: (_, _) => const SizedBox.shrink(),
    );
    final builder = DiagnosticPropertiesBuilder();
    widget.debugFillProperties(builder);
    final props = builder.properties.map((i) => i.name).toSet();
    expect(props, contains("items"));
    expect(props, contains("builder"));
    expect(props, contains("textController"));
    expect(props, contains("searchIn"));
    expect(props, contains("caseSensitiveSearch"));
    expect(props, contains("startWithSearch"));
    controller.dispose();
  });

  testWidgets("debugFillProperties on state", (tester) async {
    final controller = TextEditingController();
    await tester.pumpWidgetsApp(
      SearchListListenableBuilder<String>(
        items: items,
        searchIn: (item, _) => SearchData.empty(code: item),
        textController: controller,
        builder: (_, _) => const SizedBox.shrink(),
      ),
    );
    final state = tester.state(
      find.byType(SearchListListenableBuilder<String>),
    );
    final builder = DiagnosticPropertiesBuilder();
    state.debugFillProperties(builder);
    final props = builder.properties.map((i) => i.name).toSet();
    expect(props, contains("items"));
    expect(props, contains("mapLength"));
    controller.dispose();
  });
});

/// Creates a list with a controller that is disposed after the test.
_SearchList _searchList(WidgetTester tester, {String text = ""}) {
  final list = _SearchList(tester, TextEditingController(text: text));
  addTearDown(list.controller.dispose);

  return list;
}

/// Pumps a search list and records what it builds.
final class _SearchList {
  new(this._tester, this.controller);

  final TextEditingController controller;
  int builds = 0;
  int reads = 0;
  final WidgetTester _tester;
  UnmodifiableListView<String> _list = UnmodifiableListView(const []);

  /// Reads the built list the way a list view does: by length and index.
  List<String> get built => List.generate(_list.length, (i) => _list[i]);

  Future<void> pump(
    Iterable<String> items, {
    bool caseSensitiveSearch = false,
    String? everyItemFor,
    TextEditingController? textController,
    SearchData Function(String item, BuildContext context)? searchIn,
    Iterable<String> Function(String, SearchMap<String>)?
    onSearchResultsBuilder,
    Map<String, String> translations = const {},
  }) => _tester.pumpWidgetsApp(
    _Translations(
      translations,
      child: everyItemFor == null
          ? SearchListListenableBuilder<String>(
              items: items,
              searchIn: searchIn ?? _handleSearchIn,
              textController: textController ?? controller,
              caseSensitiveSearch: caseSensitiveSearch,
              onSearchResultsBuilder: onSearchResultsBuilder,
              builder: _handleBuild,
            )
          : _WildcardSearchList(
              everyItemFor,
              items: items,
              searchIn: _handleSearchIn,
              textController: controller,
              builder: _handleBuild,
            ),
    ),
  );

  SearchData countedSearchIn(String item, BuildContext _) {
    reads += 1;

    return SearchData.empty(code: item);
  }

  Future<void> type(String text) {
    controller.text = text;

    return _tester.pump();
  }

  Iterable<String> whereAll(String _, SearchMap<String> map) =>
      map.keys.where(_isRead);

  /// The [items] that count their reads.
  Iterable<String> counted(Iterable<String> items) => items.where(_isRead);

  Widget _handleBuild(BuildContext _, UnmodifiableListView<String> list) {
    builds += 1;
    _list = list;

    return const SizedBox.shrink();
  }

  bool _isRead(String _) {
    reads += 1;

    return true;
  }

  static SearchData _handleSearchIn(String item, BuildContext context) =>
      SearchData.empty(
        code: item,
        name: context
            .dependOnInheritedWidgetOfExactType<_Translations>()
            ?.names[item],
      );
}

SearchData _searchApplesAsPome(String item, BuildContext _) =>
    SearchData.empty(code: item, name: item == "Apple" ? "Pome" : null);

Iterable<String> _bananas(String _, SearchMap<String> map) =>
    map.keys.where((item) => item == "Banana");

/// A search list that finds every item for its [wildcard].
class _WildcardSearchList extends SearchListListenableBuilder<String> {
  const new(
    this.wildcard, {
    required super.items,
    required super.searchIn,
    required super.textController,
    required super.builder,
  });

  final String wildcard;

  @override
  bool compareWithTextInput(TextEditingController controller, String item) =>
      controller.text.trim() == wildcard ||
      super.compareWithTextInput(controller, item);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty("wildcard", wildcard));
  }
}

class _Translations extends InheritedWidget {
  const new(this.names, {required super.child});

  final Map<String, String> names;

  @override
  bool updateShouldNotify(_Translations oldWidget) =>
      !mapEquals(names, oldWidget.names);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Map<String, String>>("names", names));
  }
}
