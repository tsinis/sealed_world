// ignore_for_file: prefer-widget-private-members

import "package:flutter/material.dart";

import "../../constants/ui_constants.dart";
import "../../extensions/build_context_extension.dart";
import "../../extensions/text_field_extension.dart";
import "../../helpers/name_text_input.dart";
import "../buttons/clear_button.dart";

/// A text field specifically designed for search queries, with an automatically
/// adapting appearance.
class AdaptiveSearchTextField extends TextField {
  /// Constructor for the [AdaptiveSearchTextField] class.
  ///
  /// * [controller] is the text editing controller for the text field.
  /// * [copyFrom] is an optional text field to copy the properties from.
  /// * [padding] is an optional padding to apply to the text field.
  /// * [showClearButton] is a boolean indicating whether a clear button should
  ///   be displayed in the text field.
  /// * `key` is the optional key to use for the widget.
  const AdaptiveSearchTextField(
    TextEditingController controller, {
    this.copyFrom,
    this.padding,
    this.showClearButton = true,
    super.key,
  }) : super(controller: controller);

  /// An optional text field to copy the properties from.
  final TextField? copyFrom;

  /// An optional padding to apply to the text field.
  final EdgeInsetsGeometry? padding;

  /// A boolean indicating whether a clear button should be displayed
  /// in the text field.
  final bool? showClearButton;

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

  InputDecoration get decoration =>
      widget.copyFrom?.decoration ??
      UiConstants.inputDecoration.copyWith(
        hintText: context.materialL10n.searchFieldLabel,
        suffixIcon: (widget.showClearButton ?? true)
            ? ClearButton(controller)
            : null,
      );

  TextStyle? get textStyle => context.theme.textTheme.titleMedium;

  @override
  Widget build(BuildContext context) => Padding(
    padding: widget.padding ?? EdgeInsets.zero,
    child: context.hasMaterialL10n
        ? Material(
            type: MaterialType.transparency,
            child: widget.copyFrom.copyWith(controller, decoration: decoration),
          )
        : DecoratedBox(
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
                textInputAction: UiConstants.textInputAction,
                inputFormatters: NameTextInput.formatters,
              ),
            ),
          ),
  );
}
