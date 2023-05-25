// ignore_for_file: prefer-moving-to-variable
import "dart:async";

import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_countries/world_countries.dart";

// ignore: avoid-top-level-members-in-tests, it's not a test.
extension WidgetTesterExtension on WidgetTester {
  Future<void> testPickerBody<T extends Object>(
    BasicPicker<T> picker,
    String Function(T value) findLabel, {
    bool testSelection = true,
  }) async {
    T? selected;
    final testPicker = testSelection
        ? picker.copyWith(onSelect: (item) => selected = item)
        : picker;
    await pumpWidget(MaterialApp(home: Scaffold(body: testPicker)));
    if (testPicker.showClearButton) {
      await enterText(find.byType(TextField), "A");
      await testTextInput.receiveAction(TextInputAction.done);
      final clearButton = find.byType(ClearButton);
      expect(clearButton, findsOneWidget);
      await pumpAndSettle();
      await ensureVisible(clearButton);
      await tap(clearButton);
      await pumpAndSettle();
    }
    expect(selected, isNull);
    await _testPicker(testPicker, findLabel);
    if (testSelection) expect(selected, picker.items.last);
  }

  Future<void> testPickerInDialog<T extends Object>(
    BasicPicker<T> picker,
    String Function(T value) findLabel,
  ) =>
      _testPickerIn(picker, findLabel, true);

  Future<void> testPickerInSearch<T extends Object>(
    BasicPicker<T> picker,
    String Function(T value) findLabel,
  ) =>
      _testPickerIn(picker, findLabel, false);

  Future<void> testPickerInModal<T extends Object>(
    BasicPicker<T> picker,
    String Function(T value) findLabel,
  ) =>
      _testPickerIn(picker, findLabel, null);

  Future<void> _testPickerIn<T extends Object>(
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
      ),
    );
    await pumpAndSettle();
    await tap(find.byIcon(Icons.search));
    expect(selected, isNull);
    await _testPicker(testPicker, findLabel);
    expect(selected, picker.items.last);
  }

  Future<void> _testPicker<T extends Object>(
    BasicPicker<T> picker,
    String Function(T value) findLabel,
  ) async {
    await pumpAndSettle();
    final firstItem = find.text(findLabel(picker.items.first));
    final lastItem = find.text(findLabel(picker.items.last));

    expect(firstItem, findsOneWidget);

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
