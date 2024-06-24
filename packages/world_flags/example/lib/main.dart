import "package:flutter/material.dart";
import "package:world_flags/world_flags.dart";

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

  void _incrementIndex() {
    _index = _index >= smallSimplifiedFlagsMap.length ? 0 : _index + 1;
    setState(() => _opacity = 1 / 2);
  }

  @optionalTypeArgs
  MapEntry<WorldCountry, BasicFlag> _flagData<T extends BasicFlag>() =>
      smallSimplifiedFlagsMap.entries
          .where((f) => f.value is T)
          .elementAt(_index);

  String _labelBuilder() => switch (_opacity) {
        1 => "Original flag",
        0 => "Flag from the package",
        _ => " ${(_opacity * 100).round()}% opacity ",
      };

  @override
  Widget build(BuildContext context) {
    final flag = _flagData<BasicFlag>();

    return ColoredBox(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: SafeArea(
        minimum: const EdgeInsets.all(40),
        child: Scaffold(
          appBar: AppBar(
            title: SelectableText(
              "${flag.key.internationalName} (${flag.key.code}): ${_index + 1}",
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
                  flag.value.copyWith(
                      // decoration: const BoxDecoration(shape: BoxShape.circle),
                      // aspectRatio: 2.5,
                      ),
                  Opacity(
                    opacity: _opacity,
                    child: Image.network(flag.key.flagPngUrl(), scale: 0.1),
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
