import "package:flutter/widgets.dart";
import "package:flutter_test/flutter_test.dart";
import "package:sealed_countries/sealed_countries.dart";
import "package:world_flags/src/helpers/extensions/iso_flag_extension.dart";
import "package:world_flags/src/model/colors_properties.dart";
import "package:world_flags/src/model/flag_properties.dart";
import "package:world_flags/src/ui/flags/basic_flag.dart";
import "package:world_flags/src/ui/flags/iso/iso_flag.dart";

void main() => group("IsoFlagExtension", () {
  const item = FiatEur();
  const map = <FiatCurrency, BasicFlag>{};
  const original = IsoFlag(item, map);

  test("copyWith with key", () {
    expect(original.key, isNull);
    const copyKey = Key("copy");

    final copy = original.copyWith(key: copyKey);
    expect(copy.key, isNot(original.key));
    expect(copy.key, copyKey);
    expect(copy, isA<IsoFlag>());
    expect(copy, isNot(original));

    expect(copy.copyWith().key, copyKey);
  });

  test("copyWith preserves all values when no arguments provided", () {
    const full = IsoFlag(
      item,
      map,
      height: 100,
      width: 200,
      aspectRatio: 1.5,
      decoration: BoxDecoration(),
      decorationPosition: DecorationPosition.background,
      padding: EdgeInsets.all(8),
    );

    final copy = full.copyWith();
    expect(copy.item, item);
    expect(copy.map, map);
    expect(copy.height, 100);
    expect(copy.width, 200);
    expect(copy.aspectRatio, 1.5);
    expect(copy.decoration, const BoxDecoration());
    expect(copy.decorationPosition, DecorationPosition.background);
    expect(copy.padding, const EdgeInsets.all(8));
  });

  test("copyWith updates individual fields", () {
    final copy = original.copyWith(
      height: 50,
      width: 100,
      aspectRatio: 2,
      decoration: const BoxDecoration(),
      decorationPosition: DecorationPosition.foreground,
      padding: const EdgeInsets.all(16),
    );

    expect(copy.height, 50);
    expect(copy.width, 100);
    expect(copy.aspectRatio, 2);
    expect(copy.decoration, const BoxDecoration());
    expect(copy.decorationPosition, DecorationPosition.foreground);
    expect(copy.padding, const EdgeInsets.all(16));
  });

  test("copyWith updates item and map", () {
    const newItem = FiatUsd();
    const newMap = <FiatCurrency, BasicFlag>{
      .usd(): BasicFlag(FlagProperties([ColorsProperties(Color(0xff000000))])),
    };
    final copy = original.copyWith(item: newItem, map: newMap);

    expect(copy.item, newItem);
    expect(copy.map, newMap);
  });

  test("copyWith updates alternativeMap", () {
    const altMap = <FiatCurrency, BasicFlag>{};
    final copy = original.copyWith(alternativeMap: altMap);
    expect(copy.alternativeMap, altMap);
  });

  test("copyWith updates orElse", () {
    const widget = SizedBox();
    final copy = original.copyWith(orElse: widget);
    expect(copy.orElse, widget);
  });

  test("copyWith updates child", () {
    const child = Text("test");
    final copy = original.copyWith(child: child);
    expect(copy.child, child);
  });

  test("copyWith resets height to null with negative value", () {
    const withHeight = IsoFlag(item, map, height: 100);
    final copy = withHeight.copyWith(height: -1);
    expect(copy.height, isNull);
  });

  test("copyWith resets width to null with negative value", () {
    const withWidth = IsoFlag(item, map, width: 200);
    final copy = withWidth.copyWith(width: -1);
    expect(copy.width, isNull);
  });

  test("copyWith resets aspectRatio to null with negative value", () {
    const withAspect = IsoFlag(item, map, aspectRatio: 1.5);
    final copy = withAspect.copyWith(aspectRatio: -1);
    expect(copy.aspectRatio, isNull);
  });
});
