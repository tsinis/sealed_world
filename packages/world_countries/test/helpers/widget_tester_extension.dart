// ignore_for_file: prefer-moving-to-variable
import "dart:async";

import "package:flutter/gestures.dart";
import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:sealed_countries/sealed_countries.dart";
import "package:world_countries/src/helpers/typed_locale_delegate.dart";
import "package:world_countries/src/widgets/buttons/clear_button.dart";
import "package:world_countries/src/widgets/pickers/basic_picker.dart";

// ignore: avoid-top-level-members-in-tests, it's not a test.
extension WidgetTesterExtension on WidgetTester {
  Future<MaterialApp> pumpMaterialApp(Widget child) async {
    final app = MaterialApp(home: Scaffold(body: child));
    await pumpWidget(app);

    return app;
  }

  Future<WidgetsApp> pumpWidgetsApp(Widget child) async {
    final app =
        WidgetsApp(builder: (_, __) => child, color: const Color(0x00000000));
    await pumpWidget(app);

    return app;
  }

  Future<void> tapAndSettle(
    Finder finder, {
    int? pointer,
    int buttons = kPrimaryButton,
    bool warnIfMissed = true,
  }) async {
    await tap(
      finder,
      pointer: pointer,
      buttons: buttons,
      warnIfMissed: warnIfMissed,
    );
    await pumpAndSettle();
  }

  Future<void> testPickerBody<T extends Translated>(
    BasicPicker<T> picker,
    String Function(T value) findLabel, {
    bool testSelection = true,
  }) async {
    T? selected;
    final testPicker = testSelection
        ? picker.copyWith(onSelect: (item) => selected = item)
        : picker;
    await pumpWidget(MaterialApp(home: Scaffold(body: testPicker)));
    if (testPicker.showClearButton ?? true) {
      await enterText(find.byType(TextField), "A");
      await testTextInput.receiveAction(TextInputAction.done);
      final clearButton = find.byType(ClearButton);
      expect(clearButton, findsOneWidget);
      await pumpAndSettle();
      await ensureVisible(clearButton);
      await tapAndSettle(clearButton);
    }
    expect(selected, isNull);
    await _testPicker(testPicker, findLabel);
    if (testSelection) expect(selected, picker.items.last);
  }

  Future<void> testPickerInDialog<T extends Translated>(
    BasicPicker<T> picker,
    String Function(T value) findLabel,
  ) =>
      _testPickerIn(picker, findLabel, true);

  Future<void> testPickerInSearch<T extends Translated>(
    BasicPicker<T> picker,
    String Function(T value) findLabel,
  ) =>
      _testPickerIn(picker, findLabel, false);

  Future<void> testPickerInModal<T extends Translated>(
    BasicPicker<T> picker,
    String Function(T value) findLabel,
  ) =>
      _testPickerIn(picker, findLabel, null);

  Future<void> _testPickerIn<T extends Translated>(
    BasicPicker<T> picker,
    String Function(T value) findLabel,
    bool? inDialog,
  ) async {
    T? selected;
    final testPicker = picker.copyWith(onSelect: (item) => selected = item);
    await pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Builder(
            builder: (context) => Center(
              child: IconButton(
                onPressed: () {
                  switch (inDialog) {
                    case true:
                      return unawaited(testPicker.showInDialog(context));
                    case false:
                      return unawaited(testPicker.showInSearch(context));
                    default:
                      return unawaited(
                        testPicker.showInModalBottomSheet(context),
                      );
                  }
                },
                icon: const Icon(Icons.search),
              ),
            ),
          ),
        ),
        localizationsDelegates: const [TypedLocaleDelegate()],
        supportedLocales: const [Locale("en")],
      ),
    );
    await pumpAndSettle();
    await tap(find.byIcon(Icons.search));
    expect(selected, isNull);

    if (inDialog == false) {
      await pumpAndSettle();
      final closeButton = find.byIcon(Icons.arrow_back);
      expect(closeButton, findsOneWidget);
      await tapAndSettle(closeButton);
      expect(closeButton, findsNothing);
      await tap(find.byIcon(Icons.search));
      expect(selected, isNull);
      await pumpAndSettle();
      final textField = find.byType(TextField);
      expect(textField, findsOneWidget);
      await enterText(textField, "A");
      // ignore: avoid-non-null-assertion, defaultIcon has an icon.
      final clearButton = find.byIcon(ClearButton.defaultIcon.icon!);
      expect(clearButton, findsOneWidget);
      await tap(clearButton);
    }

    await _testPicker(testPicker, findLabel);
    expect(selected, picker.items.last);
  }

  Future<void> _testPicker<T extends Translated>(
    BasicPicker<T> picker,
    String Function(T value) findLabel,
  ) async {
    await pumpAndSettle();
    final firstItem = find.text(findLabel(picker.items.first));
    final lastItem = find.text(findLabel(picker.items.last));

    expect(firstItem, findsWidgets);

    await dragUntilVisible(
      lastItem,
      find.byType(ListView),
      const Offset(0, -500),
    );
    await pumpAndSettle();
    expect(lastItem, findsOneWidget);
    await tap(lastItem);
    await pump();
  }
}
