import "dart:ui" as ui;

import "package:flutter/gestures.dart";
import "package:flutter/material.dart" show InputDecoration, TextField;
import "package:flutter/services.dart";
import "package:flutter/widgets.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/extensions/text_field_extension.dart";

void main() => group("TextFieldExtension", () {
  TextField? nullTextField;

  test("copyWith with controller and enabled", () {
    final controller = TextEditingController();
    final original = TextField(
      controller: controller,
      decoration: const InputDecoration(enabled: false),
    );

    expect(original.decoration?.enabled, isFalse);
    expect(original.enabled, isNull);

    final copy = original.copyWith(controller, enabled: false);

    expect(copy.decoration?.enabled, isFalse);
    expect(copy.enabled, isFalse);
    controller.dispose();
  });

  test("copyWith preserves values when no optional arguments provided", () {
    final controller = TextEditingController();
    final original = TextField(
      controller: controller,
      autofocus: true,
      obscureText: true,
      readOnly: true,
      textAlign: TextAlign.center,
      textCapitalization: TextCapitalization.words,
    );

    final copy = original.copyWith(controller);

    expect(copy.autofocus, isTrue);
    expect(copy.obscureText, isTrue);
    expect(copy.readOnly, isTrue);
    expect(copy.textAlign, TextAlign.center);
    expect(copy.textCapitalization, TextCapitalization.words);
    controller.dispose();
  });

  test("copyWith updates text style and alignment fields", () {
    final controller = TextEditingController();
    const style = TextStyle(fontSize: 16);
    const strutStyle = StrutStyle(fontSize: 14);

    final copy = nullTextField.copyWith(
      controller,
      style: style,
      strutStyle: strutStyle,
      textAlign: TextAlign.right,
      textAlignVertical: TextAlignVertical.top,
      textDirection: TextDirection.rtl,
    );

    expect(copy.style, style);
    expect(copy.strutStyle, strutStyle);
    expect(copy.textAlign, TextAlign.right);
    expect(copy.textAlignVertical, TextAlignVertical.top);
    expect(copy.textDirection, TextDirection.rtl);
    controller.dispose();
  });

  test("copyWith updates input behavior fields", () {
    final controller = TextEditingController();

    final copy = nullTextField.copyWith(
      controller,
      autocorrect: false,
      enableSuggestions: false,
      enableInteractiveSelection: false,
      expands: true,
      maxLines: -1,
      minLines: -1,
      obscuringCharacter: "*",
      smartDashesType: SmartDashesType.disabled,
      smartQuotesType: SmartQuotesType.disabled,
    );

    expect(copy.autocorrect, isFalse);
    expect(copy.enableSuggestions, isFalse);
    expect(copy.enableInteractiveSelection, isFalse);
    expect(copy.expands, isTrue);
    expect(copy.maxLines, isNull);
    expect(copy.minLines, isNull);
    expect(copy.obscuringCharacter, "*");
    expect(copy.smartDashesType, SmartDashesType.disabled);
    expect(copy.smartQuotesType, SmartQuotesType.disabled);
    controller.dispose();
  });

  test("copyWith updates cursor fields", () {
    final controller = TextEditingController();

    final copy = nullTextField.copyWith(
      controller,
      cursorWidth: 3,
      cursorHeight: 20,
      cursorRadius: const Radius.circular(2),
      cursorColor: const Color(0xFFFF0000),
      cursorErrorColor: const Color(0xFF00FF00),
      cursorOpacityAnimates: true,
    );

    expect(copy.cursorWidth, 3);
    expect(copy.cursorHeight, 20);
    expect(copy.cursorRadius, const Radius.circular(2));
    expect(copy.cursorColor, const Color(0xFFFF0000));
    expect(copy.cursorErrorColor, const Color(0xFF00FF00));
    expect(copy.cursorOpacityAnimates, isTrue);
    controller.dispose();
  });

  test("copyWith updates selection style fields", () {
    final controller = TextEditingController();

    final copy = nullTextField.copyWith(
      controller,
      selectionHeightStyle: ui.BoxHeightStyle.max,
      selectionWidthStyle: ui.BoxWidthStyle.max,
    );

    expect(copy.selectionHeightStyle, ui.BoxHeightStyle.max);
    expect(copy.selectionWidthStyle, ui.BoxWidthStyle.max);
    controller.dispose();
  });

  test("copyWith updates scroll and drag fields", () {
    final controller = TextEditingController();
    const physics = BouncingScrollPhysics();
    final scrollController = ScrollController();

    final copy = nullTextField.copyWith(
      controller,
      scrollPadding: const EdgeInsets.all(24),
      scrollPhysics: physics,
      scrollController: scrollController,
      dragStartBehavior: DragStartBehavior.down,
    );

    expect(copy.scrollPadding, const EdgeInsets.all(24));
    expect(copy.scrollPhysics, physics);
    expect(copy.scrollController, scrollController);
    expect(copy.dragStartBehavior, DragStartBehavior.down);
    controller.dispose();
    scrollController.dispose();
  });

  test("copyWith updates misc fields", () {
    final controller = TextEditingController();

    final copy = nullTextField.copyWith(
      controller,
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.done,
      keyboardAppearance: Brightness.dark,
      maxLengthEnforcement: MaxLengthEnforcement.enforced,
      clipBehavior: Clip.antiAlias,
      restorationId: "test_id",
      enableIMEPersonalizedLearning: false,
      canRequestFocus: false,
      onTapAlwaysCalled: true,
      ignorePointers: true,
    );

    expect(copy.keyboardType, TextInputType.number);
    expect(copy.textInputAction, TextInputAction.done);
    expect(copy.keyboardAppearance, Brightness.dark);
    expect(copy.maxLengthEnforcement, MaxLengthEnforcement.enforced);
    expect(copy.clipBehavior, Clip.antiAlias);
    expect(copy.restorationId, "test_id");
    expect(copy.enableIMEPersonalizedLearning, isFalse);
    expect(copy.canRequestFocus, isFalse);
    expect(copy.onTapAlwaysCalled, isTrue);
    expect(copy.ignorePointers, isTrue);
    controller.dispose();
  });

  test("copyWith resets maxLines to null with negative value", () {
    final controller = TextEditingController();
    final original = TextField(controller: controller, maxLines: 5);
    final copy = original.copyWith(controller, maxLines: -1);
    expect(copy.maxLines, isNull);
    controller.dispose();
  });

  test("copyWith resets minLines to null with negative value", () {
    final controller = TextEditingController();
    final original = TextField(
      controller: controller,
      minLines: 2,
      maxLines: 5,
    );
    final copy = original.copyWith(controller, minLines: -1);
    expect(copy.minLines, isNull);
    controller.dispose();
  });

  test("copyWith resets maxLength to null with negative value", () {
    final controller = TextEditingController();
    final original = TextField(controller: controller, maxLength: 100);
    final copy = original.copyWith(controller, maxLength: -1);
    expect(copy.maxLength, isNull);
    controller.dispose();
  });

  test("copyWith resets cursorHeight to null with negative value", () {
    final controller = TextEditingController();
    final original = TextField(controller: controller, cursorHeight: 20);
    final copy = original.copyWith(controller, cursorHeight: -1);
    expect(copy.cursorHeight, isNull);
    controller.dispose();
  });

  test("copyWith resets restorationId to null with empty string", () {
    final controller = TextEditingController();
    final original = TextField(controller: controller, restorationId: "test");
    final copy = original.copyWith(controller, restorationId: "");
    expect(copy.restorationId, isNull);
    controller.dispose();
  });

  test("copyWith on null TextField uses default values", () {
    final controller = TextEditingController();
    final copy = nullTextField.copyWith(controller);

    expect(copy.controller, controller);
    expect(copy.textCapitalization, TextCapitalization.sentences);
    expect(copy.textInputAction, TextInputAction.search);
    controller.dispose();
  });

  test("copyWith updates key", () {
    final controller = TextEditingController();
    const key = Key("text_field_key");
    final copy = nullTextField.copyWith(controller, key: key);
    expect(copy.key, key);
    controller.dispose();
  });

  test("copyWith updates autofillHints", () {
    final controller = TextEditingController();
    const hints = [AutofillHints.email];
    final copy = nullTextField.copyWith(controller, autofillHints: hints);
    expect(copy.autofillHints, hints);
    controller.dispose();
  });

  test("copyWith updates showCursor", () {
    final controller = TextEditingController();
    final copy = nullTextField.copyWith(controller, showCursor: false);
    expect(copy.showCursor, isFalse);
    controller.dispose();
  });
});
