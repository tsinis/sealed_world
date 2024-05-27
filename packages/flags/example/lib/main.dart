import "package:flags/flags.dart";
import "package:flutter/material.dart";

import "stripes_only_flag.dart";

void main() => runApp(
      MaterialApp(
        home: const Main(title: "Flags Demo Home Page"),
        theme: ThemeData.dark(useMaterial3: true),
      ),
    );

class Main extends StatefulWidget {
  const Main({required this.title, super.key});

  final String title;

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  int index = 0;

  void _incrementIndex() => setState(() => index++);

  @override
  Widget build(BuildContext context) {
    final flagData = flagPropertiesMap.entries.elementAt(index);

    return Scaffold(
      appBar: AppBar(title: Text(flagData.key.internationalName)),
      body: Center(
        child: SizedBox(
          width: 100,
          child: StripesOnlyFlag(flagData.value),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementIndex,
        child: const Icon(Icons.add),
      ),
    );
  }
}
