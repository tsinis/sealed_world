// ignore_for_file: prefer-class-destructuring, avoid-similar-names

import "dart:ui" as ui;

import "package:flutter/gestures.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";

import "../helpers/name_text_input.dart" show NameTextInput;

/// Extension providing `copyWith` functionality for [TextField] class.
extension TextFieldExtension on TextField? {
  /// Creates a copy of the current [TextField] instance with specified
  /// attributes replaced by the provided values.
  // ignore: avoid-high-cyclomatic-complexity, avoid-incomplete-copy-with, it is.
  TextField copyWith(
    TextEditingController controller, {
    Key? key,
    bool? enableInteractiveSelection,
    SpellCheckConfiguration? spellCheckConfiguration,
    TextMagnifierConfiguration? magnifierConfiguration,
    Object? groupId,
    FocusNode? focusNode,
    InputDecoration? decoration,
    TextInputType? keyboardType,
    TextInputAction? textInputAction,
    TextCapitalization? textCapitalization,
    TextStyle? style,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextAlignVertical? textAlignVertical,
    TextDirection? textDirection,
    bool? autofocus,
    WidgetStatesController? statesController,
    String? obscuringCharacter,
    bool? obscureText,
    bool? autocorrect,
    SmartDashesType? smartDashesType,
    SmartQuotesType? smartQuotesType,
    bool? enableSuggestions,
    int? maxLines,
    int? minLines,
    bool? expands,
    bool? readOnly,
    bool? showCursor,
    int? maxLength,
    MaxLengthEnforcement? maxLengthEnforcement,
    ValueChanged<String>? onChanged,
    VoidCallback? onEditingComplete,
    ValueChanged<String>? onSubmitted,
    AppPrivateCommandCallback? onAppPrivateCommand,
    List<TextInputFormatter>? inputFormatters,
    bool? enabled,
    bool? ignorePointers,
    double? cursorWidth,
    double? cursorHeight,
    Radius? cursorRadius,
    bool? cursorOpacityAnimates,
    Color? cursorColor,
    Color? cursorErrorColor,
    ui.BoxHeightStyle? selectionHeightStyle,
    ui.BoxWidthStyle? selectionWidthStyle,
    Brightness? keyboardAppearance,
    EdgeInsets? scrollPadding,
    TextSelectionControls? selectionControls,
    DragStartBehavior? dragStartBehavior,
    GestureTapCallback? onTap,
    bool? onTapAlwaysCalled,
    TapRegionCallback? onTapOutside,
    TapRegionUpCallback? onTapUpOutside,
    MouseCursor? mouseCursor,
    InputCounterWidgetBuilder? buildCounter,
    ScrollPhysics? scrollPhysics,
    ScrollController? scrollController,
    Iterable<String>? autofillHints,
    Clip? clipBehavior,
    String? restorationId,
    bool? stylusHandwritingEnabled,
    bool? enableIMEPersonalizedLearning,
    ContentInsertionConfiguration? contentInsertionConfiguration,
    EditableTextContextMenuBuilder? contextMenuBuilder,
    bool? canRequestFocus,
    UndoHistoryController? undoController,
  }) {
    // ignore: avoid-missing-controller, controller is required.
    final textField = this ?? const TextField();

    return TextField(
      key: key ?? textField.key,
      enableInteractiveSelection:
          enableInteractiveSelection ?? textField.enableInteractiveSelection,
      spellCheckConfiguration:
          spellCheckConfiguration ?? textField.spellCheckConfiguration,
      magnifierConfiguration:
          magnifierConfiguration ?? textField.magnifierConfiguration,
      groupId: groupId ?? textField.groupId,
      controller: controller,
      focusNode: focusNode ?? textField.focusNode,
      decoration: decoration ?? textField.decoration,
      keyboardType: keyboardType ?? textField.keyboardType,
      textInputAction:
          textInputAction ??
          textField.textInputAction ??
          TextInputAction.search,
      textCapitalization:
          textCapitalization ??
          this?.textCapitalization ??
          TextCapitalization.sentences,
      style: style ?? textField.style,
      strutStyle: strutStyle ?? textField.strutStyle,
      textAlign: textAlign ?? textField.textAlign,
      textAlignVertical: textAlignVertical ?? textField.textAlignVertical,
      textDirection: textDirection ?? textField.textDirection,
      autofocus: autofocus ?? textField.autofocus,
      statesController: statesController ?? textField.statesController,
      obscuringCharacter: obscuringCharacter ?? textField.obscuringCharacter,
      obscureText: obscureText ?? textField.obscureText,
      autocorrect: autocorrect ?? textField.autocorrect,
      smartDashesType: smartDashesType ?? textField.smartDashesType,
      smartQuotesType: smartQuotesType ?? textField.smartQuotesType,
      enableSuggestions: enableSuggestions ?? textField.enableSuggestions,
      maxLines: maxLines ?? textField.maxLines,
      minLines: minLines ?? textField.minLines,
      expands: expands ?? textField.expands,
      readOnly: readOnly ?? textField.readOnly,
      showCursor: showCursor ?? textField.showCursor,
      maxLength: maxLength ?? textField.maxLength,
      maxLengthEnforcement:
          maxLengthEnforcement ?? textField.maxLengthEnforcement,
      onChanged: onChanged ?? textField.onChanged,
      onEditingComplete: onEditingComplete ?? textField.onEditingComplete,
      onSubmitted: onSubmitted ?? textField.onSubmitted,
      onAppPrivateCommand: onAppPrivateCommand ?? textField.onAppPrivateCommand,
      inputFormatters:
          inputFormatters ??
          textField.inputFormatters ??
          NameTextInput.formatters,
      enabled: enabled ?? textField.enabled,
      ignorePointers: ignorePointers ?? textField.ignorePointers,
      cursorWidth: cursorWidth ?? textField.cursorWidth,
      cursorHeight: cursorHeight ?? textField.cursorHeight,
      cursorRadius: cursorRadius ?? textField.cursorRadius,
      cursorOpacityAnimates:
          cursorOpacityAnimates ?? textField.cursorOpacityAnimates,
      cursorColor: cursorColor ?? textField.cursorColor,
      cursorErrorColor: cursorErrorColor ?? textField.cursorErrorColor,
      selectionHeightStyle:
          selectionHeightStyle ?? textField.selectionHeightStyle,
      selectionWidthStyle: selectionWidthStyle ?? textField.selectionWidthStyle,
      keyboardAppearance: keyboardAppearance ?? textField.keyboardAppearance,
      scrollPadding: scrollPadding ?? textField.scrollPadding,
      selectionControls: selectionControls ?? textField.selectionControls,
      dragStartBehavior: dragStartBehavior ?? textField.dragStartBehavior,
      onTap: onTap ?? textField.onTap,
      onTapAlwaysCalled: onTapAlwaysCalled ?? textField.onTapAlwaysCalled,
      onTapOutside: onTapOutside ?? textField.onTapOutside,
      onTapUpOutside: onTapUpOutside ?? textField.onTapUpOutside,
      mouseCursor: mouseCursor ?? textField.mouseCursor,
      buildCounter: buildCounter ?? textField.buildCounter,
      scrollPhysics: scrollPhysics ?? textField.scrollPhysics,
      scrollController: scrollController ?? textField.scrollController,
      autofillHints: autofillHints ?? textField.autofillHints,
      clipBehavior: clipBehavior ?? textField.clipBehavior,
      restorationId: restorationId ?? textField.restorationId,
      stylusHandwritingEnabled:
          stylusHandwritingEnabled ?? textField.stylusHandwritingEnabled,
      enableIMEPersonalizedLearning:
          enableIMEPersonalizedLearning ??
          textField.enableIMEPersonalizedLearning,
      contentInsertionConfiguration:
          contentInsertionConfiguration ??
          textField.contentInsertionConfiguration,
      contextMenuBuilder: contextMenuBuilder ?? textField.contextMenuBuilder,
      canRequestFocus: canRequestFocus ?? textField.canRequestFocus,
      undoController: undoController ?? textField.undoController,
    );
  }
}
