import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/models/search_data.dart";
import "package:world_countries/world_countries.dart";

import "../../../helpers/widget_tester_extension.dart";

void main() => group("$ImplicitSearchDelegate", () {
  final delegate = ImplicitSearchDelegate(
    const [1],
    resultsBuilder: (_, _, _) => const SizedBox(),
    searchIn: (i, _) => SearchData.empty(code: i.toString()),
    resultValidator: (_) => false,
    searchMap: const <int, SearchData>{},
  );

  testWidgets("buildResults", (tester) async {
    final context = await tester.contextExtractor();

    expect(delegate.buildResults(context), isA<SizedBox>());
  });
});
