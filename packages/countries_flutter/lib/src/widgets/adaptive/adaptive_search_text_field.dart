import "dart:ui" show BoxHeightStyle, BoxWidthStyle;

import "package:flutter/gestures.dart" show DragStartBehavior;
import "package:flutter/material.dart";

import "../../helpers/name_text_input.dart";
import "../../helpers/ui_constants.dart";
import "../buttons/clear_button.dart";

class AdaptiveSearchTextField extends TextField {
  const AdaptiveSearchTextField(
    TextEditingController controller, {
    this.copyFrom,
    this.padding,
    this.showClearButton = true,
    super.key,
  }) : super(controller: controller);

  final TextField? copyFrom;
  final EdgeInsetsGeometry? padding;
  final bool showClearButton;

  @override
  State<AdaptiveSearchTextField> createState() =>
      _AdaptiveSearchTextFieldState();
}

class _AdaptiveSearchTextFieldState extends State<AdaptiveSearchTextField> {
  final focusNode = FocusNode();

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  // ignore: avoid-non-null-assertion, cannot be null since it's required.
  TextEditingController get controller => widget.controller!;

  bool get hasMaterialL10n =>
      Localizations.of<MaterialLocalizations>(context, MaterialLocalizations) !=
      null;

  InputDecoration get decoration =>
      widget.copyFrom?.decoration ??
      UiConstants.inputDecoration.copyWith(
        hintText: MaterialLocalizations.of(context).searchFieldLabel,
        suffixIcon: widget.showClearButton ? ClearButton(controller) : null,
      );

  TextStyle? get textStyle => Theme.of(context).textTheme.titleMedium;

  @override
  Widget build(BuildContext context) => Padding(
        padding: widget.padding ?? EdgeInsets.zero,
        child: !hasMaterialL10n
            ? DecoratedBox(
                decoration: BoxDecoration(
                  border: Border.fromBorderSide(
                    BorderSide(color: textStyle?.color ?? UiConstants.color),
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(UiConstants.point / 2),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(UiConstants.point),
                  child: EditableText(
                    controller: controller,
                    focusNode: focusNode,
                    style: textStyle ?? const TextStyle(),
                    cursorColor: textStyle?.color ?? UiConstants.color,
                    backgroundCursorColor: Colors.transparent,
                    textInputAction: TextInputAction.search,
                    inputFormatters: NameTextInput.formatters,
                  ),
                ),
              )
            : Material(
                type: MaterialType.transparency,
                child: TextField(
                  controller: controller,
                  focusNode: widget.copyFrom?.focusNode,
                  decoration: decoration,
                  keyboardType: widget.copyFrom?.keyboardType,
                  textInputAction: widget.copyFrom?.textInputAction ??
                      TextInputAction.search,
                  textCapitalization: widget.copyFrom?.textCapitalization ??
                      TextCapitalization.sentences,
                  style: widget.copyFrom?.style,
                  strutStyle: widget.copyFrom?.strutStyle,
                  textAlign: widget.copyFrom?.textAlign ?? TextAlign.start,
                  textAlignVertical: widget.copyFrom?.textAlignVertical,
                  textDirection: widget.copyFrom?.textDirection,
                  readOnly: widget.copyFrom?.readOnly ?? false,
                  showCursor: widget.copyFrom?.showCursor,
                  autofocus: widget.copyFrom?.autofocus ?? false,
                  obscuringCharacter:
                      // ignore: avoid-non-ascii-symbols, it's default value.
                      widget.copyFrom?.obscuringCharacter ?? "•",
                  obscureText: widget.copyFrom?.obscureText ?? false,
                  autocorrect: widget.copyFrom?.autocorrect ?? true,
                  smartDashesType: widget.copyFrom?.smartDashesType,
                  smartQuotesType: widget.copyFrom?.smartQuotesType,
                  enableSuggestions: widget.copyFrom?.enableSuggestions ?? true,
                  maxLines: widget.copyFrom?.maxLines,
                  minLines: widget.copyFrom?.minLines,
                  expands: widget.copyFrom?.expands ?? false,
                  maxLength: widget.copyFrom?.maxLength,
                  maxLengthEnforcement: widget.copyFrom?.maxLengthEnforcement,
                  onChanged: widget.copyFrom?.onChanged,
                  onEditingComplete: widget.copyFrom?.onEditingComplete,
                  onSubmitted: widget.copyFrom?.onSubmitted,
                  onAppPrivateCommand: widget.copyFrom?.onAppPrivateCommand,
                  inputFormatters: widget.copyFrom?.inputFormatters ??
                      NameTextInput.formatters,
                  enabled: widget.copyFrom?.enabled,
                  cursorWidth: widget.copyFrom?.cursorWidth ?? 2,
                  cursorHeight: widget.copyFrom?.cursorHeight,
                  cursorRadius: widget.copyFrom?.cursorRadius,
                  cursorColor: widget.copyFrom?.cursorColor,
                  selectionHeightStyle: widget.copyFrom?.selectionHeightStyle ??
                      BoxHeightStyle.tight,
                  selectionWidthStyle: widget.copyFrom?.selectionWidthStyle ??
                      BoxWidthStyle.tight,
                  keyboardAppearance: widget.copyFrom?.keyboardAppearance,
                  scrollPadding: widget.copyFrom?.scrollPadding ??
                      const EdgeInsets.all(20),
                  dragStartBehavior: widget.copyFrom?.dragStartBehavior ??
                      DragStartBehavior.start,
                  enableInteractiveSelection:
                      widget.copyFrom?.enableInteractiveSelection,
                  selectionControls: widget.copyFrom?.selectionControls,
                  onTap: widget.copyFrom?.onTap,
                  onTapOutside: widget.copyFrom?.onTapOutside,
                  mouseCursor: widget.copyFrom?.mouseCursor,
                  buildCounter: widget.copyFrom?.buildCounter,
                  scrollController: widget.copyFrom?.scrollController,
                  scrollPhysics: widget.copyFrom?.scrollPhysics,
                  autofillHints: widget.copyFrom?.autofillHints,
                  clipBehavior: widget.copyFrom?.clipBehavior ?? Clip.hardEdge,
                  restorationId: widget.copyFrom?.restorationId,
                  scribbleEnabled: widget.copyFrom?.scribbleEnabled ?? true,
                  enableIMEPersonalizedLearning:
                      widget.copyFrom?.enableIMEPersonalizedLearning ?? true,
                  contextMenuBuilder: widget.copyFrom?.contextMenuBuilder,
                  canRequestFocus: widget.copyFrom?.canRequestFocus ?? true,
                  spellCheckConfiguration:
                      widget.copyFrom?.spellCheckConfiguration,
                  magnifierConfiguration:
                      widget.copyFrom?.magnifierConfiguration,
                ),
              ),
      );
}