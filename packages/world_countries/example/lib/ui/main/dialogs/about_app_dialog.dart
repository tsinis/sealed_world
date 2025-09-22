import "dart:async";

import "package:flutter/material.dart";

import "../../../assets/assets.gen.dart";

final class AboutAppDialog extends StatelessWidget {
  const AboutAppDialog._();

  static void show(BuildContext context) => unawaited(
    showDialog(context: context, builder: (_) => const AboutAppDialog._()),
  );

  @override
  Widget build(BuildContext context) => AboutDialog(
    // ignore: avoid-non-ascii-symbols, it's localized for most countries.
    applicationLegalese: "© ${DateTime.now().year} Roman Cinis",
    applicationName: "world_countries",
    applicationVersion: "3.9.2",
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
    children: const [
      Padding(
        padding: EdgeInsets.only(top: 16),
        child: SelectableText(
          "github.com/tsinis/sealed_world",
          textAlign: TextAlign.center,
        ),
      ),
    ],
  );
}
