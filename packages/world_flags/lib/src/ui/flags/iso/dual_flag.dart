import "package:flutter/foundation.dart";
import "package:flutter/widgets.dart";
import "package:sealed_countries/sealed_countries.dart" show IsoStandardized;

import "../../../helpers/extensions/basic_flag_extension_copy_with.dart";
import "../../other/dual_flag_clipper.dart";
import "../../other/maybe_widget.dart";
import "../basic_flag.dart";
import "iso_flag.dart";

/// {@template dual_flag}
/// A widget that displays two flags split by an angle for a given ISO item.
///
/// Extends [IsoFlag] using its [map] as the primary flags and
/// [alternativeMap] as the secondary flags. When both exist for the given
/// [item] and they differ, renders a split flag. Otherwise renders a single
/// flag using [IsoFlag]'s default behavior.
///
/// The [splitAngle] controls the direction of the split:
/// - `45` degrees (default): diagonal split
/// - `90` degrees: vertical split (left/right)
/// - `0` degrees: horizontal split (top/bottom)
/// - Other values: split at the specified angle.
/// {@endtemplate}
class DualFlag<T extends IsoStandardized, F extends BasicFlag>
    extends IsoFlag<T, F> {
  /// Creates a new instance of [DualFlag].
  ///
  /// - [item]: The ISO item for which to display the flag.
  /// - [map]: A map of primary flag associations (positional, same as IsoFlag).
  /// - [alternativeMap]: An optional map of secondary flags.
  /// - [splitAngle]: The angle of the split line in degrees. Defaults to `45`.
  /// - [clipSecondary]: When `true` (default), the secondary flag is clipped.
  ///   When `false`, the primary flag is clipped instead.
  /// - [clipBehavior]: The clip behavior for the split edge. Defaults to
  ///   [Clip.antiAlias] for smooth diagonal edges with minimal overhead.
  const DualFlag(
    super.item,
    super._map, {
    super.alternativeMap,
    this.splitAngle = 45,
    this.clipSecondary = true,
    this.clipBehavior = Clip.antiAlias,
    super.orElse,
    super.height,
    super.width,
    super.aspectRatio,
    super.decoration,
    super.decorationPosition,
    super.padding,
    super.shader,
    super.child,
    super.key,
  });

  /// The angle of the split line in degrees.
  final int splitAngle;

  /// Whether to clip the secondary flag (default) or the primary flag.
  final bool clipSecondary;

  /// The clip behavior for the split edge.
  ///
  /// Defaults to [Clip.antiAlias] which provides smooth edges without the
  /// extra cost of [Clip.antiAliasWithSaveLayer].
  final Clip clipBehavior;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(IntProperty("splitAngle", splitAngle))
      ..add(DiagnosticsProperty<bool>("clipSecondary", clipSecondary))
      ..add(EnumProperty<Clip>("clipBehavior", clipBehavior));
  }

  @override
  Widget build(BuildContext context) {
    final primary = map[item];

    return MaybeWidget.orNull(
          alternativeMap?[item],
          // ignore: prefer-extracting-function-callbacks, no widgets return.
          (secondary) {
            final background = clipSecondary ? primary : secondary;
            final foreground = clipSecondary ? secondary : primary;

            return background?.copyWith(
              child: ClipPath(
                clipBehavior: clipBehavior,
                clipper: DualFlagClipper(splitAngle),
                child: foreground,
              ),
            );
          },
          buildWhen: (secondary) =>
              !identical(primary?.properties, secondary.properties),
        ) ??
        super.build(context);
  }
}
