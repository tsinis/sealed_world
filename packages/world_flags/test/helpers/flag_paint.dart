import "package:flutter/widgets.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_flags/src/ui/effects/flag_shader_surface.dart";

/// The painter of the (first) [FlagShaderSurface] and whether its paint is
/// hinted to change on every frame.
// ignore: avoid-top-level-members-in-tests, it's a test helper, not a test.
({CustomPainter? painter, bool willChange}) flagPaint(WidgetTester tester) {
  final CustomPaint(:painter, :willChange) = tester.widget<CustomPaint>(
    find
        .descendant(
          of: find.byType(FlagShaderSurface),
          matching: find.byType(CustomPaint),
        )
        .first,
  );

  return (painter: painter, willChange: willChange);
}
