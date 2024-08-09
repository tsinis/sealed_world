import "dart:async";

import "package:flutter/material.dart";

import "../../assets/assets.gen.dart";

class AboutAppDialog extends StatelessWidget {
  const AboutAppDialog({super.key});

  void show(BuildContext context) =>
      unawaited(showDialog(context: context, builder: (_) => this));

  @override
  Widget build(BuildContext context) => AboutDialog(
        applicationIcon: SizedBox.square(
          dimension: 48,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              image:
                  DecorationImage(image: Assets.web.icons.icon192.provider()),
            ),
          ),
        ),
        applicationLegalese: "© ${DateTime.now().year} Roman Cinis",
        applicationName: "world_countries",
        applicationVersion: "2.1.0",
      );
}
