import "package:flutter/widgets.dart";
import "package:flutter_test/flutter_test.dart";
import "package:material_ui/material_ui.dart" show TextField;
import "package:world_countries/src/model/typedefs.dart";
import "package:world_countries/src/theme/pickers_theme_data.dart";
import "package:world_countries/src/widgets/country/country_picker.dart";
import "package:world_countries/src/widgets/pickers/basic_picker.dart";
import "package:world_flags/world_flags.dart";

import "../../../helpers/widget_tester_extension.dart";

void main() => group("$BasicPicker theme", () {
  group("search bar", () {
    testWidgets("filters a short list", (tester) async {
      await tester.pumpMaterialApp(
        const CountryPicker(
          countries: [CountryDeu(), CountryFra(), CountryIta()],
        ),
        const PickersThemeData(showHeader: null),
      );
      await tester.enterText(find.byType(TextField), "Ger");
      await tester.pumpAndSettle();

      expect(find.byType(CountryTile), findsOneWidget);
    });

    testWidgets("wins over the theme when shown", (tester) async {
      await tester.pumpMaterialApp(
        const CountryPicker(showSearchBar: true),
        const PickersThemeData(showHeader: false),
      );
      expect(find.byType(TextField), findsOneWidget);
    });

    testWidgets("hides the header of the theme when hidden", (tester) async {
      await tester.pumpMaterialApp(
        const CountryPicker(showSearchBar: false),
        const PickersThemeData(header: Text("header")),
      );
      expect(find.text("header"), findsNothing);
      expect(find.byType(TextField), findsNothing);
    });
  });

  group("theme fallbacks", () {
    for (final showSearchBar in const [null, false]) {
      final branch = showSearchBar == null ? "with search" : "without search";

      testWidgets("picker values win over the theme $branch", (tester) async {
        await tester.pumpMaterialApp(
          CountryPicker(
            clipBehavior: Clip.none,
            mainAxisAlignment: MainAxisAlignment.center,
            padding: EdgeInsets.zero,
            reverse: false,
            separator: const SizedBox(key: _pickerKey),
            showSearchBar: showSearchBar,
            spacing: 2,
          ),
          _theme,
        );

        final list = tester.widget<ListView>(find.byType(ListView));
        final column = tester.widget<Column>(_listColumn);
        expect(list.clipBehavior, Clip.none);
        expect(list.padding, EdgeInsets.zero);
        expect(list.reverse, isFalse);
        expect(column.mainAxisAlignment, MainAxisAlignment.center);
        expect(column.spacing, 2);
        expect(find.byKey(_pickerKey), findsWidgets);
        expect(find.byKey(_themeKey), findsNothing);
      });

      testWidgets("theme values win over the defaults $branch", (tester) async {
        await tester.pumpMaterialApp(
          CountryPicker(showSearchBar: showSearchBar),
          _theme,
        );

        final list = tester.widget<ListView>(find.byType(ListView));
        final column = tester.widget<Column>(_listColumn);
        expect(list.clipBehavior, _theme.clipBehavior);
        expect(list.padding, _theme.padding);
        expect(list.reverse, isTrue);
        expect(column.mainAxisAlignment, _theme.mainAxisAlignment);
        expect(column.spacing, _theme.spacing);
        expect(find.byKey(_themeKey), findsWidgets);
      });

      testWidgets("defaults are used without a theme $branch", (tester) async {
        await tester.pumpMaterialApp(
          CountryPicker(showSearchBar: showSearchBar),
          const PickersThemeData(),
        );

        final list = tester.widget<ListView>(find.byType(ListView));
        final column = tester.widget<Column>(_listColumn);
        expect(list.clipBehavior, Clip.hardEdge);
        expect(list.padding, isNull);
        expect(list.reverse, isFalse);
        expect(column.mainAxisAlignment, MainAxisAlignment.start);
        expect(column.spacing, 0);
      });
    }
  });
});

/// The column of the list (and its header) of a picker.
// ignore: avoid-explicit-type-declaration, vs specify_nonobvious_property_types.
final Finder _listColumn = find
    .ancestor(of: find.byType(ListView), matching: find.byType(Column))
    .first;

const _pickerKey = Key("picker");
const _themeKey = Key("theme");

/// A theme with values that differ from the picker ones and the defaults.
const _theme = PickersThemeData(
  clipBehavior: Clip.antiAlias,
  mainAxisAlignment: MainAxisAlignment.end,
  padding: EdgeInsets.all(8),
  reverse: true,
  separator: SizedBox(key: _themeKey),
  spacing: 4,
);
