// ignore_for_file: avoid-passing-default-values

import "package:flutter/widgets.dart";
import "package:sealed_countries/sealed_countries.dart" show WorldCountry;

import "../../ui/country_flag.dart";
import "../../ui/effects/flag_shader_delegate.dart";
import "../../ui/flags/basic_flag.dart";
import "../../ui/flags/iso/iso_flag.dart";
import "iso_flag_extension.dart";

/// An extension on [CountryFlag] to provide additional properties and methods.
extension CountryFlagExtension on CountryFlag {
  /// The country for which the flag is to be displayed.
  WorldCountry get country => item;

  /// Creates a copy of this [CountryFlag] but with the given fields replaced
  /// with the new values.
  ///
  /// Unlike the [IsoFlagExtension.copyWith], the result is still a
  /// [CountryFlag], so it keeps its debug label (the emoji of the country).
  /// Parameters are the same as in [IsoFlagExtension.copyWith].
  CountryFlag copyWith({
    WorldCountry? item,
    Map<WorldCountry, BasicFlag>? map,
    Map<WorldCountry, BasicFlag>? alternativeMap,
    Widget? orElse,
    double? height,
    double? width,
    double? aspectRatio,
    BoxDecoration? decoration,
    DecorationPosition? decorationPosition,
    EdgeInsetsGeometry? padding,
    FlagShaderDelegate? shader,
    Widget? flagChild,
    @Deprecated("Use flagChild instead.") Widget? child,
    String? semanticLabel,
    Key? key,
  }) {
    final IsoFlag(
      alternativeMap: copiedAlternativeMap,
      aspectRatio: copiedAspectRatio,
      decoration: copiedDecoration,
      decorationPosition: copiedPosition,
      flagChild: copiedFlagChild,
      height: copiedHeight,
      item: copiedItem,
      key: copiedKey,
      map: copiedMap,
      orElse: copiedOrElse,
      padding: copiedPadding,
      semanticLabel: copiedSemanticLabel,
      shader: copiedShader,
      width: copiedWidth,
    ) = IsoFlagExtension(this).copyWith(
      item: item,
      map: map,
      alternativeMap: alternativeMap,
      orElse: orElse,
      height: height,
      width: width,
      aspectRatio: aspectRatio,
      decoration: decoration,
      decorationPosition: decorationPosition,
      padding: padding,
      shader: shader,
      flagChild: flagChild ?? child,
      semanticLabel: semanticLabel,
      key: key,
    );

    return CountryFlag.custom(
      copiedItem,
      copiedMap,
      alternativeMap: copiedAlternativeMap,
      aspectRatio: copiedAspectRatio,
      decoration: copiedDecoration,
      decorationPosition: copiedPosition,
      padding: copiedPadding,
      height: copiedHeight,
      width: copiedWidth,
      shader: copiedShader,
      orElse: copiedOrElse,
      flagChild: copiedFlagChild,
      semanticLabel: copiedSemanticLabel,
      key: copiedKey,
    );
  }
}
