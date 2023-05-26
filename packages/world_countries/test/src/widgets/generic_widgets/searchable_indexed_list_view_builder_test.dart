import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/widgets/generic_widgets/indexed_list_view_builder.dart";
import "package:world_countries/src/widgets/generic_widgets/search_list_listenable_builder.dart";
import "package:world_countries/src/widgets/generic_widgets/searchable_indexed_list_view_builder.dart";

import "../../../helpers/widget_tester_extension.dart";

void main() => group("$SearchableIndexedListViewBuilder", () {
      testWidgets("when isSearchable and showHeader are false", (tester) async {
        await tester
            .pumpWidgetsApp(const SearchableIndexedListViewBuilder(<Object>[]));
        expect(find.byType(SearchListListenableBuilder), findsNothing);
        expect(find.byType(IndexedListViewBuilder), findsOneWidget);
      });
    });
