import "package:flags/flags.dart";
import "package:flutter/material.dart";

import "flags_map.dart";

void main() => runApp(
      MaterialApp(
        home: const Main(),
        theme: ThemeData.light(useMaterial3: true),
        darkTheme: ThemeData.dark(useMaterial3: true),
      ),
    );

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  int _index = 0;
  double _opacity = 1 / 2;

  void _incrementIndex() => setState(() => _index++);

  String _labelBuilder() => switch (_opacity) {
        0 => "Original flag",
        1 => "Flag from the package",
        _ => " ${(_opacity * 100).round()}% opacity ",
      };

  @override
  Widget build(BuildContext context) {
    final flagData = flagsMap.entries.elementAt(_index);

    return ColoredBox(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: SafeArea(
        minimum: const EdgeInsets.all(40),
        child: Scaffold(
          appBar: AppBar(
            title: SelectableText(
              "${flagData.key.internationalName} (${flagData.key.code})",
              textAlign: TextAlign.center,
            ),
          ),
          body: GestureDetector(
            onTap: _incrementIndex,
            child: Center(
              child: Stack(
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                children: [
                  Image.network(flagData.key.flagPngUrl(), scale: 0.1),
                  Opacity(
                    opacity: _opacity,
                    child: flagData.value.copyWith(borderRadius: Radius.zero),
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: SizedBox(
            height: 40,
            child: Slider(
              value: _opacity,
              onChanged: (newOpacity) => setState(() => _opacity = newOpacity),
              divisions: 10,
              label: _labelBuilder(),
              autofocus: true,
            ),
          ),
        ),
      ),
    );
  }
}
