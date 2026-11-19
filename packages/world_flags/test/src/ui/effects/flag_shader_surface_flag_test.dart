import "package:flutter/widgets.dart";
import "package:flutter_test/flutter_test.dart";
import "package:sealed_countries/sealed_countries.dart";
import "package:world_flags/src/model/colors_properties.dart";
import "package:world_flags/src/model/flag_properties.dart";
import "package:world_flags/src/ui/effects/flag_shader_surface.dart";
import "package:world_flags/src/ui/flags/basic_flag.dart";
import "package:world_flags/src/ui/painters/basic/shader_stripes_painter.dart";

import "../../../helpers/flag_paint.dart";

void main() => group("$FlagShaderSurface with another flag", () {
  testWidgets("disposes the delegate when the flag is removed", (tester) async {
    final map = <IsoStandardized, BasicFlag>{
      const CountryUsa(): const BasicFlag(
        FlagProperties([ColorsProperties(Color(0xFFFF0000))]),
      ),
    };
    await tester.pumpWidget(FlagShaderSurface(const CountryUsa(), map: map));
    expect(tester.binding.transientCallbackCount, 1); // A ticker.
    map.remove(const CountryUsa());
    await tester.pumpWidget(FlagShaderSurface(const CountryUsa(), map: map));

    expect(tester.binding.transientCallbackCount, isZero);
    expect(
      find.descendant(
        of: find.byType(FlagShaderSurface),
        matching: find.byType(CustomPaint),
      ),
      findsNothing,
    );
  });

  testWidgets("keeps its own delegate for another flag", (tester) async {
    await tester.pumpWidget(const FlagShaderSurface(CountryUsa()));
    final painter = flagPaint(tester).painter;
    final shader = painter is ShaderStripesPainter ? painter.shader : null;
    await tester.pumpWidget(const FlagShaderSurface(CountryCan()));

    expect(shader, isNotNull);
    expect(
      flagPaint(tester).painter,
      isA<ShaderStripesPainter>()
          .having((newPainter) => newPainter, "painter", isNot(same(painter)))
          .having((newPainter) => newPainter.shader, "shader", same(shader)),
    );
  });
});
