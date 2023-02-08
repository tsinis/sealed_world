import "package:flutter/material.dart";
import "package:sealed_countries/sealed_countries.dart";

import "../../helpers/ui_constants.dart";

class CountryTile extends ListTile {
  const CountryTile(
    this.country, {
    super.subtitle,
    super.title,
    super.leading,
    this.onPressed,
    this.isChosen = false,
    this.chosenIcon = const Icon(Icons.beenhere_outlined),
    super.minLeadingWidth,
    super.leadingAndTrailingTextStyle,
    super.key,
    bool disabled = false,
  }) : super(selected: isChosen, enabled: !disabled);

  static const _overridenStyle = TextStyle(color: Colors.black);

  static const fontSize = UiConstants.point * 3;

  final Widget? chosenIcon;
  final WorldCountry country;
  final bool isChosen;
  final ValueSetter<WorldCountry>? onPressed;

  @override
  Widget build(BuildContext context) => Material(
        // Reference: https://github.com/flutter/flutter/issues/86584.
        type: MaterialType.transparency,
        child: ListTile(
          leading: leading ?? Text(country.emoji, style: _overridenStyle),
          title: title ?? Text(country.namesNative.first.common),
          subtitle: subtitle ??
              Text(
                country.namesCommonNative(skipFirst: true) ??
                    country.name.common,
                overflow: TextOverflow.ellipsis,
              ),
          trailing: isChosen ? chosenIcon : null,
          leadingAndTrailingTextStyle: leadingAndTrailingTextStyle ??
              const TextStyle(fontSize: fontSize),
          enabled: enabled,
          onTap: enabled ? () => onPressed?.call(country) : null,
          selected: isChosen,
          minLeadingWidth: minLeadingWidth ?? fontSize + UiConstants.point,
        ),
      );
}
