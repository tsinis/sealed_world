// ignore_for_file: avoid-long-functions

import "package:flutter/material.dart";
import "package:widgetbook/widgetbook.dart";
import "package:world_flags/world_flags.dart";

void main() {
  final size = (kMinInteractiveDimension / 2).toInt();
  final flagComponents = <WidgetbookLeafComponent>[];

  for (final flag in WidgetbookApp._flags.entries) {
    final props = flag.value.properties;
    final iso = flag.key;

    flagComponents.add(
      WidgetbookLeafComponent(
        name: iso.internationalName,
        useCase: WidgetbookUseCase(
          name: iso.code,
          // ignore: invalid_use_of_visible_for_testing_member, it's for testing
          designLink: props.url,
          builder: (context) {
            final knobs = context.knobs;

            return IsoFlag(
              iso,
              WidgetbookApp._flags,
              padding: const EdgeInsets.only(top: 80),
              height: knobs.int.slider(
                label: "height",
                description: "The height of the flag",
                min: 1,
                max: props.isSimplified ? size : 320,
                initialValue: size,
              ).toDouble(),
              width: knobs.intOrNull
                  .slider(
                    label: "width",
                    description: "The width of the flag",
                    max: 815,
                    initialValue: (size * FlagConstants.defaultAspectRatio)
                        .toInt(),
                    min: 1,
                  )
                  ?.toDouble(),
              aspectRatio: knobs.double.slider(
                label: "aspectRatio",
                description:
                    "The aspect ratio of the flag, uncheck width to use this",
                min: FlagConstants.minAspectRatio,
                max: FlagConstants.maxAspectRatio,
                initialValue: FlagConstants.defaultAspectRatio,
              ),
              decorationPosition: DecorationPosition.background,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    knobs.double.slider(
                      label: "decoration borderRadius",
                      description: "The border radius of the flag's decoration",
                      max: props.isSimplified ? size.toDouble() : 320,
                      initialValue: 4,
                    ),
                  ),
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: knobs.double.slider(
                      label: "decoration boxShadow blurRadius",
                      description: "The blur radius of the flag's decoration",
                      max: props.isSimplified ? 32 : 480,
                      initialValue: 16,
                    ),
                    spreadRadius: knobs.double.slider(
                      label: "decoration boxShadow spreadRadius",
                      description: "The spread radius of the flag's decoration",
                      max: props.isSimplified ? 16 : 64,
                    ),
                    color: knobs.color(
                      label: "decoration color",
                      description: "The color of the flag's decoration",
                      initialValue: Colors.grey.withValues(alpha: 1 / 2),
                    ),
                    offset: Offset(
                      knobs.double.slider(
                        label: "decoration boxShadow offsetX",
                        description:
                            "The horizontal offset of the flag's shadow",
                        min: -16,
                        max: 16,
                      ),
                      knobs.double.slider(
                        label: "decoration boxShadow offsetY",
                        description: "The vertical offset of the flag's shadow",
                        min: -16,
                        max: 16,
                        initialValue: 8,
                      ),
                    ),
                  ),
                ],
                border: Border.fromBorderSide(
                  BorderSide(
                    color: knobs.color(
                      label: "decoration color",
                      description: "The color of the flag's decoration",
                      initialValue: Colors.grey,
                    ),
                    width: knobs.double.slider(
                      label: "decoration border width",
                      description: "The border width of the flag's decoration",
                      max: props.isSimplified ? 3 : 10,
                      initialValue: 1,
                    ),
                    strokeAlign: BorderSide.strokeAlignOutside,
                  ),
                ),
              ),
              child:
                  knobs.boolean(
                    label: "child",
                    description: "Whether to show the child widget or not",
                  )
                  ? Transform.scale(scale: 1 / 2, child: const FlutterLogo())
                  : null,
            );
          },
        ),
      ),
    );
  }

  runApp(WidgetbookApp(flagComponents));
}

class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp(this._components, {super.key});

  static const _flags = <IsoTranslated, BasicFlag>{
    CountryAfg(): BasicFlag(
      flagAfgPropertiesAlt,
      elementsBuilder: ShahadaPainter.afg,
    ),
    ...uniqueSimplifiedFlagsMap,
    CountryGuf(): StarFlag(flagGufPropertiesAlt),
    FiatEur(): StarFlag(flagEurProperties),
    ...smallSimplifiedLanguageFlagsMap,
  };

  final List<WidgetbookLeafComponent> _components;

  @override
  Widget build(BuildContext context) => Widgetbook.material(
    initialRoute: "/?path=flags/euro/eur",
    header: const Text("Welcome to the Widgetbook for the world_flags package"),
    directories: [WidgetbookFolder(name: "Flags", children: _components)],
    addons: [
      InspectorAddon(),
      AlignmentAddon(initialAlignment: Alignment.topCenter),
      ZoomAddon(),
    ],
  );
}
