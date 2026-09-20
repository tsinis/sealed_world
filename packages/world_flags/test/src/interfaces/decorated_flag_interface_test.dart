// ignore_for_file: prefer-match-file-name
import "package:flutter/widgets.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_flags/src/interfaces/decorated_flag_interface.dart";

final class _TestFlag implements DecoratedFlagInterface {
  const new({
    this.aspectRatio,
    this.decoration,
    this.decorationPosition,
    this.padding,
    this.width,
    this.height,
    this.flagChild,
  });

  @override
  final double? aspectRatio;

  @override
  final BoxDecoration? decoration;

  @override
  final DecorationPosition? decorationPosition;

  @override
  final EdgeInsetsGeometry? padding;

  @override
  final double? width;

  @override
  final double? height;

  @override
  final Widget? flagChild;

  @override
  Widget? get child => flagChild;
}

void main() => group("$DecoratedFlagInterface", () {
  test("implements interface correctly", () {
    const flag = _TestFlag(
      aspectRatio: 1.5,
      decoration: BoxDecoration(color: Color(0xFF000000)),
      decorationPosition: DecorationPosition.background,
      padding: EdgeInsets.all(8),
      height: 100,
      width: 150,
      flagChild: SizedBox(),
    );

    expect(flag.aspectRatio, 1.5);
    expect(flag.decoration, isNotNull);
    expect(flag.decorationPosition, DecorationPosition.background);
    expect(flag.padding, const EdgeInsets.all(8));
    expect(flag.height, 100);
    expect(flag.width, 150);
    expect(flag.flagChild, isA<SizedBox>());
    expect(flag.child, isA<SizedBox>());
  });
});
