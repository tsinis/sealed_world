// The helpers below are not tests, and printing the table is the point of the
// update mode.

// ignore_for_file: avoid-top-level-members-in-tests
import "dart:convert";
import "dart:io";

import "package:flutter/rendering.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_flags/src/ui/flags/basic_flag.dart";
import "package:world_flags/src/ui/painters/basic/stripes_painter.dart";
import "package:world_flags/world_flags.dart" show smallSimplifiedFlagsMap;

import "../../../helpers/recording_canvas.dart";

/// What one flag costs the engine, in commands it has to encode per frame.
typedef _FlagDrawOpsTest = ({
  int clips,
  int contours,
  int draws,
  int saveLayers,
});

/// The recorded cost of every flag, relative to the package root.
///
/// Regenerate it with `UPDATE_DRAW_OPS=1 flutter test <this file>` after a
/// change that is meant to move the numbers, and review the diff: it is the
/// record of what the painters cost.
const budgetPath = "test/src/ui/painters/flag_draw_ops.json";

/// The list theme of the example app, so the rounded clip is counted.
const listDecoration = BoxDecoration(
  borderRadius: BorderRadius.all(Radius.circular(4)),
);

/// Counts are independent of the render size, so one small size is enough.
const listHeight = 24.0;

/// Paints [flag] the way `BasicFlag.build` does and counts what it drew.
// ignore: library_private_types_in_public_api, it's not a public API.
_FlagDrawOpsTest measureFlag(BasicFlag flag) {
  final canvas = RecordingCanvas();
  final properties = flag.properties;
  StripesPainter(
    properties,
    listDecoration,
    flag.resolvePainter(properties.elementsProperties, flag.flagAspectRatio),
  ).paint(canvas, Size(listHeight * flag.flagAspectRatio, listHeight));

  final RecordingCanvas(:clipCount, :contourCount, :drawCount, :ops) = canvas;

  return (
    clips: clipCount,
    contours: contourCount,
    draws: drawCount,
    saveLayers: ops[#saveLayer] ?? 0,
  );
}

/// Adds up the cost of every flag in the catalogue.
_FlagDrawOpsTest _sumOf(_FlagDrawOpsTest sum, _FlagDrawOpsTest ops) {
  final _FlagDrawOpsTest(:clips, :contours, :draws, :saveLayers) = ops;

  return (
    clips: sum.clips + clips,
    contours: sum.contours + contours,
    draws: sum.draws + draws,
    saveLayers: sum.saveLayers + saveLayers,
  );
}

void main() => group("Flag draw budget", () {
  final measured = <String, _FlagDrawOpsTest>{
    for (final MapEntry(key: country, value: flag)
        in smallSimplifiedFlagsMap.entries)
      country.code.toLowerCase(): measureFlag(flag),
  };
  final totals = measured.values.reduce(_sumOf);

  final file = File(budgetPath);
  if (Platform.environment.containsKey("UPDATE_DRAW_OPS")) {
    final table = <String, Map<String, int>>{
      "_totals": _encode(totals),
      for (final MapEntry(:key, :value) in measured.entries)
        key: _encode(value),
    };
    file.writeAsStringSync(
      "${const JsonEncoder.withIndent("  ").convert(table)}\n",
    );
    // ignore: avoid_print, the point of the update mode.
    print("Updated $budgetPath: $totals");
  }

  final decoded = json.decode(file.readAsStringSync());
  // ignore: avoid-type-casts, the file is written by this test.
  final budget = (decoded as Map).cast<String, Object?>();

  test("no flag costs more than it is budgeted for", () {
    final regressions = <String>[];
    for (final MapEntry(:key, :value) in measured.entries) {
      final recorded = budget[key];
      if (recorded is! Map) {
        regressions.add("$key: not in the budget file");

        continue;
      }
      for (final MapEntry(key: name, value: allowed)
          in recorded.cast<String, int>().entries) {
        final actual = _read(value, name);
        if (actual <= allowed) continue;
        regressions.add("$key.$name: $actual > $allowed");
      }
    }

    expect(regressions, isEmpty, reason: "Regenerate with UPDATE_DRAW_OPS=1");
  });

  test("the catalogue as a whole stays within budget", () {
    // ignore: avoid-type-casts, the file is written by this test.
    final recorded = (budget["_totals"]! as Map).cast<String, int>();
    for (final MapEntry(:key, :value) in recorded.entries) {
      expect(_read(totals, key), lessThanOrEqualTo(value), reason: key);
    }
  });

  test("no flag renders into an offscreen layer", () {
    final offscreen = measured.entries
        .where((entry) => entry.value.saveLayers > 0)
        .map((entry) => entry.key)
        .toList(growable: false);

    expect(offscreen, isEmpty);
  });

  // One clip per flag is the floor: the rounded corners of the list theme.
  // The rest are the Union Jack's own box, the shield of an ensign and the
  // band the diagonal stripes are cut from, which all genuinely clip.
  test("nothing clips more than it has to", () {
    final extra = measured.entries
        .where((entry) => entry.value.clips > 1)
        .map((entry) => "${entry.key}: ${entry.value.clips}")
        .toList(growable: false);

    expect(measured.values.every((ops) => ops.clips <= 3), isTrue);
    expect(extra, hasLength(32), reason: "$extra");
  });
});

Map<String, int> _encode(_FlagDrawOpsTest ops) => {
  "clips": ops.clips,
  "contours": ops.contours,
  "draws": ops.draws,
  "saveLayers": ops.saveLayers,
};

int _read(_FlagDrawOpsTest ops, String name) => switch (name) {
  "clips" => ops.clips,
  "contours" => ops.contours,
  "draws" => ops.draws,
  "saveLayers" => ops.saveLayers,
  // ignore: avoid-missing-interpolation, it names the parameter.
  _ => throw ArgumentError.value(name, "name", "Unknown draw-ops field"),
};
