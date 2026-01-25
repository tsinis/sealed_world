import 'dart:io';

Future<void> main() async {
  final dir = Directory('packages/sealed_languages/lib/src/data/languages');
  final files = dir.listSync().whereType<File>().toList();

  for (final file in files) {
    var content = await file.readAsString();
    final originalContent = content;
    final regex = RegExp(r'namesNative: const \[(.*?)\]');
    final match = regex.firstMatch(content);

    if (match != null) {
      final namesString = match.group(1);
      if (namesString != null) {
        final names = namesString
            .split(',')
            .map((s) => s.trim().replaceAll('"', ''))
            .toList();

        final capitalizedNames = names.map((name) {
          if (name.isNotEmpty) {
            final firstChar = name.substring(0, 1);
            if (firstChar.toLowerCase() == firstChar &&
                firstChar.toUpperCase() != firstChar) {
              return '"${firstChar.toUpperCase()}${name.substring(1)}"';
            }
          }
          return '"$name"';
        }).toList();
        final newNamesString = capitalizedNames.join(', ');

        if (namesString != newNamesString) {
          content = content.replaceFirst('namesNative: const [$namesString]',
              'namesNative: const [$newNamesString]');
        }
      }
    }

    if (originalContent != content) {
      await file.writeAsString(content);
      print('Capitalized ${file.path}');
    }
  }
}
