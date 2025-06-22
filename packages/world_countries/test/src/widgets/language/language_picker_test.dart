// ignore_for_file: unnecessary_async, missing-test-assertion
import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/helpers/typed_locale_delegate.dart";
import "package:world_countries/src/theme/tile_theme_data/language_tile_theme_data.dart";
import "package:world_countries/src/widgets/language/language_picker.dart";
import "package:world_countries/src/widgets/language/language_tile.dart";
import "package:world_flags/world_flags.dart";

import "../../../helpers/widget_tester_extension.dart";

void main() => group("$LanguagePicker", () {
  test("copyWith", () {
    const picker = LanguagePicker();
    expect(picker.onSelect, isNull);
    final newPicker = picker.copyWith(onSelect: (item) => item.toString());
    newPicker.onSelect?.call(picker.items.first);
    expect(newPicker.onSelect, isNotNull);
    final newestPicker = newPicker.copyWith(onSelect: print);
    expect(newestPicker.onSelect, isNotNull);
    expect(newestPicker.copyWith(), isNot(newestPicker));
  });

  testWidgets(
    "scroll from first to last item and tap",
    (tester) async => tester.testPickerBody(
      const LanguagePicker(),
      (item) => item.namesNative.first,
    ),
  );

  testWidgets(
    "builder from theme",
    (tester) async => tester.testPickerBody(
      const LanguagePicker(),
      (item) => item.translations.first.common,
      theme: LanguageTileThemeData(
        builder: (properties, {isDense}) =>
            Text(properties.item.translations.first.common),
      ),
    ),
  );

  testWidgets(
    "scroll from first to last item and without selection test",
    (tester) async => tester.testPickerBody(
      const LanguagePicker(),
      (item) => item.namesNative.first,
      testSelection: false,
    ),
  );

  testWidgets(
    "test behavior in dialog",
    (tester) async => tester.testPickerInDialog(
      const LanguagePicker(),
      (item) => item.namesNative.first,
    ),
  );

  testWidgets(
    "test behavior in search",
    (tester) async => tester.testPickerInSearch(
      const LanguagePicker(),
      (item) => item.namesNative.first,
    ),
  );

  testWidgets(
    "test behavior in modal bottom sheet",
    (tester) async => tester.testPickerInModal(
      const LanguagePicker(),
      (item) => item.namesNative.first,
    ),
  );

  testWidgets("throw assert on empty $TypedLocaleDelegate", (tester) async {
    await tester.pumpMaterialApp(
      SearchAnchor.bar(
        suggestionsBuilder: const LanguagePicker().searchSuggestions,
      ),
      null,
      const TypedLocaleDelegate.selectiveCache(),
    );
    final tile = find.byType(LanguageTile);
    expect(tile, findsNothing);

    await expectLater(
      tester.tapAndSettle(find.byIcon(Icons.search)),
      throwsAssertionError,
    );
  });

  testWidgets("searchSuggestions()", (tester) async {
    await tester.pumpMaterialApp(
      SearchAnchor.bar(
        suggestionsBuilder: const LanguagePicker().searchSuggestions,
      ),
      null,
      const TypedLocaleDelegate(asyncTranslationCacheProcessing: false),
    );
    final tile = find.byType(LanguageTile);
    expect(tile, findsNothing);
    await tester.pumpAndSettle();
    await tester.tapAndSettle(find.byIcon(Icons.search));
    expect(tile, findsWidgets);
    await tester.tapAndSettle(tile.first);
    // ignore: avoid-duplicate-test-assertions, tile will be missing after.
    expect(tile, findsNothing);
  });

  testWidgets("resultValidator should pop single result", (tester) async {
    const expected = LangLtz();
    const searchIcon = Icons.search;
    NaturalLanguage? selected;
    final picker = LanguagePicker(onSelect: (item) => selected = item);

    await tester.pumpMaterialApp(
      Builder(
        builder: (context) => IconButton(
          onPressed: () async => picker.showInSearch(context),
          icon: const Icon(searchIcon),
        ),
      ),
    );
    await tester.pumpAndSettle();
    await tester.tapAndSettle(find.byIcon(searchIcon));
    expect(selected, isNull);

    final textField = find.byType(TextField);
    expect(textField, findsOneWidget);
    await tester.enterText(textField, expected.namesNative.first);
    await tester.testTextInput.receiveAction(TextInputAction.done);
    await tester.pump();

    await expectLater(selected, expected);
  });

  group("adaptiveFlags", () {
    const german = LangDeu();
    const austria = CountryAut();
    const germanFlag = BasicFlag(flagDeuProperties);
    const austrianFlag = BasicFlag(flagAutProperties);
    const eurFlag = StarFlag(flagEurProperties);

    testWidgets("uses localeCountry to ignore platform locale", (tester) async {
      await tester.pumpMaterialApp(
        LanguagePicker.adaptiveFlags(
          languages: const [german],
          localeCountry: austria,
        ),
      );
      await tester.pumpAndSettle();
      final tile = find.widgetWithText(LanguageTile, german.namesNative.first);
      expect(tile, findsOneWidget);
      final austrianFlagFinder = find.byWidgetPredicate(
        (e) => e is BasicFlag && e.properties == austrianFlag.properties,
      );
      expect(austrianFlagFinder, findsOneWidget);
      final germanFlagFinder = find.byWidgetPredicate(
        (e) => e is BasicFlag && e.properties == germanFlag.properties,
      );
      expect(germanFlagFinder, findsNothing);
    });

    testWidgets("uses platform locale if localeCountry isn't provided", (
      tester,
    ) async {
      // ignore: avoid-mutating-parameters, it's a test.
      final testDispatcher = tester.binding.platformDispatcher
        ..localesTestValue = const [
          Locale.fromSubtags(languageCode: "de", countryCode: "AT"),
        ];
      addTearDown(testDispatcher.clearLocalesTestValue);

      await tester.pumpMaterialApp(
        LanguagePicker.adaptiveFlags(languages: const [german]),
      );
      final tile = find.widgetWithText(LanguageTile, german.namesNative.first);
      expect(tile, findsOneWidget);
      final austrianFlagFinder = find.byWidgetPredicate(
        (e) => e is BasicFlag && e.properties == austrianFlag.properties,
      );
      expect(austrianFlagFinder, findsOneWidget);
      final germanFlagFinder = find.byWidgetPredicate(
        (e) => e is BasicFlag && e.properties == germanFlag.properties,
      );
      expect(germanFlagFinder, findsNothing);
    });

    testWidgets(
      "respects flags provided in flagsMap and does not override them",
      (tester) async {
        await tester.pumpMaterialApp(
          LanguagePicker.adaptiveFlags(
            languages: const [german],
            flagsMap: const {german: eurFlag},
          ),
        );
        await tester.pumpAndSettle();
        final tile = find.widgetWithText(
          LanguageTile,
          german.namesNative.first,
        );
        expect(tile, findsOneWidget);
        final eurFlagFinder = find.byWidgetPredicate(
          (e) => e is BasicFlag && e.properties == eurFlag.properties,
        );
        expect(eurFlagFinder, findsOneWidget);
        final germanFlagFinder = find.byWidgetPredicate(
          (e) => e is BasicFlag && e.properties == germanFlag.properties,
        );
        expect(germanFlagFinder, findsNothing);
      },
    );

    testWidgets(
      "uses fallbacksMap for languages without associated countries",
      (tester) async {
        const esperanto = LangEpo();

        await tester.pumpMaterialApp(
          LanguagePicker.adaptiveFlags(languages: const [esperanto]),
        );
        await tester.pumpAndSettle();
        final tile = find.widgetWithText(
          LanguageTile,
          esperanto.namesNative.first,
        );
        expect(tile, findsOneWidget);
        final epoFlagFinder = find.byWidgetPredicate(
          (e) => e is BasicFlag && e.properties == flagEpoProperties,
        );
        expect(epoFlagFinder, findsOneWidget);
        final germanFlagFinder = find.byWidgetPredicate(
          (e) => e is BasicFlag && e.properties == germanFlag.properties,
        );
        expect(germanFlagFinder, findsNothing);
      },
    );

    testWidgets("flagMapper can customize the final flag", (tester) async {
      const customKey = Key("customized_flag");
      await tester.pumpMaterialApp(
        LanguagePicker.adaptiveFlags(
          languages: const [german],
          flagMapper: (flag, _, _) =>
              StarFlag(flagEurProperties, key: customKey, child: flag),
        ),
      );
      await tester.pumpAndSettle();
      final tileFinder = find.widgetWithText(
        LanguageTile,
        german.namesNative.first,
      );
      expect(tileFinder, findsOneWidget);
      final customWidgetFinder = find.descendant(
        of: tileFinder,
        matching: find.byKey(customKey),
      );
      expect(customWidgetFinder, findsOneWidget);
    });

    testWidgets("showInModalBottomSheet shows a picker with adaptive flags", (
      tester,
    ) async {
      final picker = LanguagePicker.adaptiveFlags(
        languages: const [german],
        localeCountry: austria,
      );

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Builder(
              builder: (context) => ElevatedButton(
                onPressed: () async => picker.showInModalBottomSheet(context),
                child: const Text("Show"),
              ),
            ),
          ),
        ),
      );

      await tester.tapAndSettle(find.byType(ElevatedButton));
      final tile = find.widgetWithText(LanguageTile, german.namesNative.first);
      expect(tile, findsOneWidget);

      final austrianFlagFinder = find.byWidgetPredicate(
        (e) => e is BasicFlag && e.properties == austrianFlag.properties,
      );
      expect(austrianFlagFinder, findsOneWidget);

      final germanFlagFinder = find.byWidgetPredicate(
        (e) => e is BasicFlag && e.properties == germanFlag.properties,
      );
      expect(germanFlagFinder, findsNothing);
    });
  });
});
