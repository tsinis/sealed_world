import 'package:countries_flutter/countries_flutter.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: ThemeData.dark(useMaterial3: true),
        home: const MyHomePage(),
      );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const picker =
      CountryPicker(onSelect: print, chosen: [CountryAfg(), CountryCze()]);

  void onPressed() async {
    final country = await picker.showInModalBottomSheet(context);
    debugPrint('Selected country: $country');
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: const SafeArea(child: picker),
        floatingActionButton: FloatingActionButton(
          onPressed: onPressed,
        ),
      );
}
