import "dart:async";

import "package:flutter/material.dart";

import "../../assets/assets.gen.dart";

class AboutAppDialog extends StatelessWidget {
  const AboutAppDialog({super.key});

  // ignore: prefer-widget-private-members, being used outside of the class.
  void show(BuildContext context) =>
      unawaited(showDialog(context: context, builder: (_) => this));

  @override
  Widget build(BuildContext context) => AboutDialog(
    applicationName: "world_countries",
    applicationVersion: "3.6.0",
    applicationIcon: SizedBox.square(
      dimension: 48,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.grey,
          image: DecorationImage(image: Assets.web.icons.icon192.provider()),
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
      ),
    ),
    // ignore: avoid-non-ascii-symbols, it's localized for most countries.
    applicationLegalese: "© ${DateTime.now().year} Roman Cinis",
  );
}
