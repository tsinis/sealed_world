import "package:flutter/widgets.dart";
import "package:sealed_countries/sealed_countries.dart";

import "../../world_flags.dart" show smallSimplifiedFlagsMap;
import "../helpers/extensions/basic_flag_extension_copy_with.dart";
import "../helpers/extensions/world_flags_build_context_extension.dart";
import "../interfaces/decorated_flag_interface.dart";
import "flags/basic_flag.dart";

class CountryFlag extends StatelessWidget implements DecoratedFlagInterface {
  const CountryFlag.simplified(
    this.country, {
    this.height,
    this.width,
    this.aspectRatio,
    this.decoration,
    this.decorationPosition,
    this.padding,
    this.orElse,
    super.key,
  }) : _map = smallSimplifiedFlagsMap;

  const CountryFlag.custom(
    this.country,
    this._map, {
    this.height,
    this.width,
    this.aspectRatio,
    this.decoration,
    this.decorationPosition,
    this.padding,
    this.orElse,
    super.key,
  });

  final Map<WorldCountry, BasicFlag> _map;

  final WorldCountry country;
  final Widget? orElse;
  final double? width;
  final double? height;

  @override
  final double? aspectRatio;
  @override
  final BoxDecoration? decoration;
  @override
  final DecorationPosition? decorationPosition;
  @override
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) => SizedBox(
        width: width ?? context.flagTheme?.width,
        height: height ?? context.flagTheme?.height,
        child: _map[country]?.copyWith(
              decorationPosition: decorationPosition,
              aspectRatio: aspectRatio,
              decoration: decoration,
            ) ??
            orElse,
      );
}
