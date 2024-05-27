import "package:flags/flags.dart";
import "package:flutter/material.dart";

import "ui/flags/simple_stripes_flag.dart";

void main() => runApp(
      MaterialApp(home: const Main(), theme: ThemeData.dark()),
    );

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  double opacity = 0;
  int index = 0;

  void _incrementIndex() => setState(() => index++);

  @override
  Widget build(BuildContext context) {
    final flagData = flagPropertiesMap.entries.elementAt(index);

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(48),
        child: Scaffold(
          appBar: AppBar(
            title: Slider(
              value: opacity,
              onChanged: (newOpacity) => setState(() => opacity = newOpacity),
            ),
            backgroundColor: Colors.transparent,
          ),
          body: Center(
            child: Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                Image.network(flagData.key.flagPngUrl(), scale: 0.1),
                Opacity(
                  opacity: opacity,
                  child: GestureDetector(
                    onTap: _incrementIndex,
                    child: SimpleStripesFlag(
                      flagData.value,
                      borderRadius: Radius.zero,
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: SelectableText(
            flagData.key.internationalName,
            style: const TextStyle(color: Colors.grey, fontSize: 32),
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }
}
