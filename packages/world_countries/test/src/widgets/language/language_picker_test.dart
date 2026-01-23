// ignore_for_file: unnecessary_async, missing-test-assertion
import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/helpers/typed_locale_delegate.dart";
import "package:world_countries/src/models/iso/iso_maps.dart";
import "package:world_countries/src/models/typedefs.dart";
import "package:world_countries/src/theme/pickers_theme_data.dart";
import "package:world_countries/src/theme/tile_theme_data/language_tile_theme_data.dart";
import "package:world_countries/src/widgets/language/language_picker.dart";
import "package:world_flags/world_flags.dart";

import "../../../helpers/widget_tester_extension.dart";

void main() => group("$LanguagePicker", () {
  test("copyWith", () {
    const picker = LanguagePicker();
    expect(picker.onSelect, isNull);
    final newPicker = picker.copyWith(onSelect: (item) => item.toString());
    newPicker.onSelect?.call(picker.resolvedItems().first);
    expect(newPicker.onSelect, isNotNull);
    final newestPicker = newPicker.copyWith(onSelect: print);
    expect(newestPicker.onSelect, isNotNull);
    expect(newestPicker.copyWith(), isNot(newestPicker));
  });

  testWidgets("copyWith itemBuilder fallback to defaultBuilder", (
    tester, // Dart 3.8 formtting.
  ) async {
    const testText = "Original";
    final picker = LanguagePicker(
      languages: const [LangEng()],
      itemBuilder: (props, tile) => const Text(testText),
    );
    const newTestText = "New";
    final newPicker = picker.copyWith(
      itemBuilder: (props, tile) => const Text(newTestText),
    );

    await tester.pumpMaterialApp(newPicker);
    expect(find.text(newTestText), findsWidgets);
    expect(find.text(testText), findsNothing);
  });

  testWidgets("copyWith itemBuilder chains to existing", (tester) async {
    const testText = "Chained";
    final picker = LanguagePicker(
      languages: const [LangEng()],
      itemBuilder: (props, tile) => const Text(testText),
    );
    final newPicker = picker.copyWith();

    await tester.pumpMaterialApp(newPicker);
    expect(find.text(testText), findsWidgets);
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
      (item) => item.namesNative.first,
      theme: LanguageTileThemeData(
        itemBuilder: (properties, _) => Text(properties.item.namesNative.first),
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
    await tester.pump(Duration.zero);
  });

  testWidgets("throws assert on empty $IsoMaps in theme", (tester) async {
    bool assertionThrown = false;
    final originalOnError = FlutterError.onError;

    FlutterError.onError = (details) {
      if (details.exception is AssertionError &&
          details.exception.toString().contains(
            "The $IsoMaps passed to the `maps` contains an empty",
          )) {
        assertionThrown = true;
      } else {
        originalOnError?.call(details);
      }
    };

    try {
      await tester.pumpMaterialApp(
        const LanguagePicker(),
        const PickersThemeData(maps: IsoMaps()),
      );

      expect(assertionThrown, isTrue);
    } finally {
      FlutterError.onError = originalOnError;
    }
  });

  testWidgets("throws assert on empty $IsoMaps in picker", (tester) async {
    bool assertionThrown = false;
    final originalOnError = FlutterError.onError;

    FlutterError.onError = (details) {
      if (details.exception is AssertionError &&
          details.exception.toString().contains(
            "The $IsoMaps passed to the `maps` contains an empty",
          )) {
        assertionThrown = true;
      } else {
        originalOnError?.call(details);
      }
    };

    try {
      await tester.pumpMaterialApp(const LanguagePicker(maps: IsoMaps()));

      expect(assertionThrown, isTrue);
    } finally {
      FlutterError.onError = originalOnError;
    }
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

  group("maps", () {
    const german = LangDeu();
    const germanFlag = BasicFlag(flagDeuProperties);
    const austrianFlag = BasicFlag(flagAutProperties);
    final widgetMaps = IsoMaps(
      languageTranslations: {german: german.namesNative.first},
      languageFlags: const {german: austrianFlag},
    );
    final themeMaps = IsoMaps(
      languageTranslations: {german: german.namesNative.first},
      languageFlags: const {german: germanFlag},
    );

    testWidgets("uses widget maps to render flags", (tester) async {
      await tester.pumpMaterialApp(
        LanguagePicker(languages: const [german], maps: widgetMaps),
      );
      await tester.pumpAndSettle();
      final languageText = find.text(german.namesNative.first);
      expect(languageText, findsWidgets);
      final austrianFlagFinder = find.byWidgetPredicate(
        (widget) =>
            widget is BasicFlag && widget.properties == austrianFlag.properties,
      );
      expect(austrianFlagFinder, findsOneWidget);
    });

    testWidgets("uses theme maps when widget maps missing", (tester) async {
      await tester.pumpMaterialApp(
        const LanguagePicker(languages: [german]),
        PickersThemeData(maps: themeMaps),
      );
      await tester.pumpAndSettle();
      final languageText = find.text(german.namesNative.first);
      expect(languageText, findsWidgets);
      final germanFlagFinder = find.byWidgetPredicate(
        (widget) =>
            widget is BasicFlag && widget.properties == germanFlag.properties,
      );
      expect(germanFlagFinder, findsOneWidget);
    });

    testWidgets("prefers widget maps over theme maps", (tester) async {
      await tester.pumpMaterialApp(
        LanguagePicker(languages: const [german], maps: widgetMaps),
        PickersThemeData(maps: themeMaps),
      );
      await tester.pumpAndSettle();
      final languageText = find.text(german.namesNative.first);
      expect(languageText, findsWidgets);
      final austrianFlagFinder = find.byWidgetPredicate(
        (widget) =>
            widget is BasicFlag && widget.properties == austrianFlag.properties,
      );
      final germanFlagFinder = find.byWidgetPredicate(
        (widget) =>
            widget is BasicFlag && widget.properties == germanFlag.properties,
      );
      expect(austrianFlagFinder, findsOneWidget);
      expect(germanFlagFinder, findsNothing);
    });
  });
});
