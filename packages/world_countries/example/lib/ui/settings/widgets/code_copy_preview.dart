// ignore_for_file: prefer-single-widget-per-file, avoid-local-functions,
// ignore_for_file: deprecated_member_use, prefer-class-destructuring

import "dart:async" show unawaited;

import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:world_countries/helpers.dart";
import "package:world_countries/world_countries.dart";

import "../../../notifications/notifications_center.dart";
import "../../../theme/flag_theme_scope.dart";

class CodeCopyPreview extends StatelessWidget {
  const CodeCopyPreview({super.key});

  static String _colorLiteral(Color color) {
    final alpha = (color.a * 255.0).round() & 0xff;
    if (alpha != 255) {
      return "Color(0x${alpha.toRadixString(16).padLeft(2, '0')}"
          "${color.red.toRadixString(16).padLeft(2, '0')}"
          "${color.green.toRadixString(16).padLeft(2, '0')}"
          "${color.blue.toRadixString(16).padLeft(2, '0')})";
    }
    final value = color.value & 0x00FFFFFF;

    return "Color(0x${value.toRadixString(16).padLeft(6, '0')})";
  }

  String _flagThemeSnippet(FlagThemeData? theme) {
    if (theme == null) return "";

    final buffer = StringBuffer()
      ..writeln("FlagThemeData(")
      ..writeln("  height: 18,");

    void add(String line) => buffer.writeln("  $line");
    String fmt(num v) => v.toStringAsFixed(2);

    final aspect = theme.specifiedAspectRatio;
    if (aspect != null) add("aspectRatio: ${fmt(aspect)},");

    final decoration = theme.decoration;
    if (decoration != null) {
      final parts = <String>[];
      final rad = decoration.borderRadius?.resolve(null).topLeft;
      if (rad != null && rad.x != 0) {
        parts.add("borderRadius: BorderRadius.circular(${fmt(rad.x)}),");
      }

      final border = decoration.border;
      if (border != null && border.top.width > 0) {
        final side = border.top;
        parts.add(
          "border: Border.fromBorderSide(BorderSide(width: ${fmt(side.width)}, "
          "color: ${_colorLiteral(side.color)})),",
        );
      }

      final shadow = decoration.boxShadow?.firstOrNull;
      if (shadow != null) {
        final spread = shadow.spreadRadius;
        final blur = shadow.blurRadius;
        final horizontal = shadow.offset.dx;
        final vertical = shadow.offset.dy;
        final col = shadow.color;
        final defaultLike =
            spread.isZero &&
            blur.isZero &&
            horizontal.isZero &&
            vertical.isZero &&
            col.alpha == 255;
        if (!defaultLike) {
          parts.add(
            "boxShadow: [BoxShadow(color: ${_colorLiteral(col)}, "
            "blurRadius: ${fmt(blur)}, spreadRadius: ${fmt(spread)}, "
            "offset: Offset(${fmt(horizontal)}, ${fmt(vertical)}))],",
          );
        }
      }

      if (parts.isNotEmpty) {
        buffer.writeln("  decoration: const BoxDecoration(");
        // ignore: curly_braces_in_flow_control_structures, just an example.
        for (final part in parts) buffer.writeln("    $part");
        buffer.writeln("  ),");
      }
    }

    buffer.write(");");

    return buffer.toString();
  }

  @override
  Widget build(BuildContext context) {
    final snippet = _flagThemeSnippet(FlagThemeScope.maybeOf(context)?.theme);

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      color: context.theme.colorScheme.surfaceContainerLow,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 8,
          children: [
            Row(
              children: [
                const Expanded(
                  child: Text(
                    "FlagThemeData snippet",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                _CopyButton(payload: snippet),
              ],
            ),
            _CodeBlock(
              snippet: snippet.isEmpty ? "// No customizations" : snippet,
            ),
          ],
        ),
      ),
    );
  }
}

class _CopyButton extends StatefulWidget {
  const _CopyButton({required this.payload});
  final String payload;

  @override
  State<_CopyButton> createState() => _CopyButtonState();
}

class _CopyButtonState extends State<_CopyButton> {
  bool _isCopied = false;

  static Future<void> _markSettingsMenuAccessed() => kTabScrollDuration.delayed(
    NotificationsCenter.instance.markSettingsMenuAccessed,
  );

  @override
  void initState() {
    super.initState();
    unawaited(_markSettingsMenuAccessed());
  }

  void _handleCopy() {
    if (widget.payload.isEmpty) return;
    unawaited(Clipboard.setData(ClipboardData(text: widget.payload)));

    if (mounted) setState(() => _isCopied = true);
    unawaited(
      const Duration(
        seconds: 2, // Dart 3.8 formatting conflict.
      ).delayed(() => mounted ? setState(() => _isCopied = false) : null),
    );
  }

  @override
  Widget build(BuildContext context) => Tooltip(
    message: _isCopied ? "Copied" : "Copy to clipboard",
    triggerMode: TooltipTriggerMode.tap,
    onTriggered: _handleCopy,
    child: AnimatedSwitcher(
      duration: kThemeAnimationDuration,
      switchInCurve: Curves.fastEaseInToSlowEaseOut,
      switchOutCurve: Curves.fastEaseInToSlowEaseOut,
      child: Icon(
        _isCopied ? Icons.check : Icons.copy,
        key: ValueKey(_isCopied),
      ),
    ),
  );
}

class _CodeBlock extends StatelessWidget {
  const _CodeBlock({required this.snippet});

  final String snippet;

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    padding: const EdgeInsets.symmetric(horizontal: 2),
    child: SelectableText(
      snippet,
      style: context.theme.textTheme.bodySmall?.copyWith(
        fontFamily: "monospace",
        height: 1.25,
      ),
    ),
  );
}
