import "package:flutter/foundation.dart";
import "package:flutter/widgets.dart";
import "package:flutter_test/flutter_test.dart";
import "package:material_ui/material_ui.dart" show ListTile;
import "package:world_countries/src/widgets/generic_widgets/indexed_list_view_builder.dart";
import "package:world_countries/src/widgets/generic_widgets/list_item_tile.dart";
import "package:world_flags/world_flags.dart";

import "../../../helpers/widget_tester_extension.dart";

/// The semantics a tile puts around its slots.
///
/// Every [Semantics] is a render object the accessibility tree re-walks on
/// each frame a list scrolls, so a slot is only wrapped when the wrapper says
/// something, and an empty slot keeps its node so the tile lays out the same.
void main() => group("$ListItemTile", () {
  const leading = Text("leading");
  const subtitle = Text("subtitle");

  testWidgets("passes the slots through when there is nothing to say", (
    tester,
  ) async {
    await tester.pumpMaterialApp(
      const ListItemTile(
        1,
        excludeSemantics: false,
        leading: leading,
        subtitle: subtitle,
      ),
    );

    // No Semantics holds either slot directly: they sit in the tile as given.
    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is Semantics &&
            (widget.child == leading || widget.child == subtitle),
      ),
      findsNothing,
    );
  });

  testWidgets("hides the slots when asked", (tester) async {
    await tester.pumpMaterialApp(
      const ListItemTile(1, leading: leading, subtitle: subtitle),
    );

    expect(
      tester
          .widget<Semantics>(
            find
                .ancestor(
                  of: find.text("leading"),
                  matching: find.byType(Semantics),
                )
                .first,
          )
          .excludeSemantics,
      isTrue,
    );
    expect(
      tester
          .widget<Semantics>(
            find
                .ancestor(
                  of: find.text("subtitle"),
                  matching: find.byType(Semantics),
                )
                .first,
          )
          .excludeSemantics,
      isTrue,
    );
  });

  testWidgets("labels the leading slot for UI automation", (tester) async {
    await tester.pumpMaterialApp(
      const ListItemTile(
        1,
        excludeSemantics: false,
        semanticsIdentifier: "item-1",
        leading: leading,
        subtitle: subtitle,
      ),
    );

    expect(
      tester
          .widget<Semantics>(
            find
                .ancestor(
                  of: find.text("leading"),
                  matching: find.byType(Semantics),
                )
                .first,
          )
          .properties
          .identifier,
      "item-1",
      reason: "The identifier is what the wrapper is there for.",
    );
  });

  testWidgets("keeps the slot of a missing child", (tester) async {
    await tester.pumpMaterialApp(const ListItemTile(1, title: Text("title")));

    final tile = tester.widget<ListTile>(find.byType(ListTile).last);
    expect(tile.leading, isA<Semantics>(), reason: "The slot stays laid out.");
    expect(tile.subtitle, isA<Semantics>());
  });

  testWidgets("can be found by a global key", (tester) async {
    final key = GlobalKey();
    await tester.pumpMaterialApp(ListItemTile(1, key: key));

    expect(tester.takeException(), isNull);
    expect(key.currentWidget, isA<ListItemTile<int>>());
  });

  testWidgets("is selected by a list without onPressed", (tester) async {
    final selected = <int>[];
    await tester.pumpMaterialApp(
      IndexedListViewBuilder<int, Widget>(
        const [1],
        onSelect: selected.add,
        itemBuilder: (props, _) =>
            ListItemTile(props.item, title: const Text("one")),
      ),
    );
    await tester.tap(find.text("one"));

    expect(selected, [1]);
  });

  test("debugFillProperties with non-ISO item", () {
    const tile = ListItemTile(
      1,
      excludeSemantics: false,
      semanticsIdentifier: "test",
    );
    final builder = DiagnosticPropertiesBuilder();
    tile.debugFillProperties(builder);
    final props = builder.properties.map((i) => i.name).toSet();
    expect(props, contains("item"));
    expect(props, contains("excludeSemantics"));
    expect(props, contains("semanticsIdentifier"));
  });

  test("debugFillProperties with IsoStandardized item", () {
    const tile = ListItemTile(CountryUsa());
    final builder = DiagnosticPropertiesBuilder();
    tile.debugFillProperties(builder);
    expect(builder.properties.any((i) => i is IsoDiagnosticsProperty), isTrue);
  });
});
