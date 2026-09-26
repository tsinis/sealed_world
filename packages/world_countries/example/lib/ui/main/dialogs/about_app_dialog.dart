import "package:material_ui/material_ui.dart";

import "../../../assets/assets.gen.dart";

final class AboutAppDialog extends StatelessWidget {
  const new _();

  static void show(BuildContext context) =>
      // ignore: inference_failure_on_function_invocation, it's fire-and-forget
      showDialog(context: context, builder: (_) => const AboutAppDialog._());

  @override
  Widget build(BuildContext context) => AboutDialog(
    // ignore: avoid-non-ascii-symbols, it's localized for most countries.
    applicationLegalese: "© ${DateTime.now().year} Roman Cinis",
    applicationName: "world_countries",
    applicationVersion: "4.6.0",
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
