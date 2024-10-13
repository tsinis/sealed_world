import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/theme/pickers_theme_data.dart";
import "package:world_countries/src/widgets/generic_widgets/indexed_list_view_builder.dart";
import "package:world_countries/src/widgets/generic_widgets/search_list_listenable_builder.dart";
import "package:world_countries/src/widgets/generic_widgets/searchable_indexed_list_view_builder.dart";

import "../../../helpers/widget_tester_extension.dart";

void main() => group("$SearchableIndexedListViewBuilder", () {
      const builder = SearchableIndexedListViewBuilder(<Object>[]);
      testWidgets("when isSearchable and showHeader are false", (tester) async {
        await tester.pumpWidgetsApp(builder);
        expect(find.byType(SearchListListenableBuilder), findsNothing);
        expect(find.byType(IndexedListViewBuilder), findsOneWidget);
      });

      testWidgets(
        "with theme extensions and showHeader are false",
        (tester) async {
          await tester.pumpMaterialApp(builder);
          expect(find.byType(SearchListListenableBuilder), findsNothing);
          expect(find.byType(IndexedListViewBuilder), findsOneWidget);
        },
      );

      testWidgets(
        "with theme extensions, items > 5 and showHeader is null",
        (tester) async {
          final controller = TextEditingController();
          await tester.pumpMaterialApp(
            Theme(
              data: ThemeData(
                extensions: const <ThemeExtension>[
                  PickersThemeData(showHeader: null),
                ],
              ),
              child: SearchableIndexedListViewBuilder(
                const [1, 2, 3, 4, 5, 6],
                searchIn: (i, _) => ["$i"],
                textController: controller,
              ),
            ),
          );
          expect(find.byType(SearchListListenableBuilder<int>), findsOneWidget);
          expect(find.byType(IndexedListViewBuilder), findsNothing);
          controller.dispose();
        },
      );

      testWidgets(
        "with theme extensions, items < 5 and showHeader is null",
        (tester) async {
          final controller = TextEditingController();
          await tester.pumpMaterialApp(
            Theme(
              data: ThemeData(
                extensions: const <ThemeExtension>[
                  PickersThemeData(showHeader: null),
                ],
              ),
              child: SearchableIndexedListViewBuilder(
                const [1, 2, 3, 4, 5],
                searchIn: (i, _) => ["$i"],
                textController: controller,
              ),
            ),
          );
          expect(find.byType(SearchListListenableBuilder<int>), findsNothing);
          expect(find.byType(IndexedListViewBuilder<int>), findsOneWidget);
          controller.dispose();
        },
      );

      testWidgets(
        "with theme extensions and showHeader are true",
        (tester) async {
          final controller = TextEditingController();
          await tester.pumpMaterialApp(
            SearchableIndexedListViewBuilder(
              const [1, 2],
              searchIn: (i, _) => ["$i"],
              textController: controller,
            ),
          );
          expect(find.byType(SearchListListenableBuilder<int>), findsOneWidget);
          expect(find.byType(IndexedListViewBuilder), findsNothing);
          controller.dispose();
        },
      );

      testWidgets("showInSearch", (tester) async {
        final context = await tester.contextExtractor();
        expect(await builder.showInSearch(context), isNull);
      });

      testWidgets("showInDialog", (tester) async {
        final context = await tester.contextExtractor();
        expect(await builder.showInDialog(context), isNull);
      });

      testWidgets("showInModalBottomSheet", (tester) async {
        final context = await tester.contextExtractor();
        expect(await builder.showInModalBottomSheet(context), isNull);
      });
    });
