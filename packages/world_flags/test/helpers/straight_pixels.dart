import "dart:typed_data";
import "dart:ui" as ui;

import "package:flutter/rendering.dart";

/// The pixels of the [boundary] as straight (not premultiplied) RGBA bytes.
// ignore: avoid-top-level-members-in-tests, it's a test helper, not a test.
Future<Uint8List> straightPixels(RenderRepaintBoundary boundary) async {
  final image = await boundary.toImage();
  final data = await image.toByteData(
    format: ui.ImageByteFormat.rawStraightRgba,
  );
  image.dispose();

  return data?.buffer.asUint8List() ?? Uint8List(0);
}
