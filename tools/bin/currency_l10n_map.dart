// ignore_for_file: avoid_print, prefer-static-class, avoid-long-functions
// ignore_for_file: max-statements, prefer-for-in

import "dart:io";

import "package:cli/l10n/templates/locale_fallback.dart";
import "package:path/path.dart";

/// Adds currency names to the l10n_currencies data files, where missing.
///
/// Usage, from the `tools` directory:
///   dart run :currency_l10n_map ZWG [XCG ...]
///     reads the ICU4C `curr/<locale>.txt` files from `json/data`;
///   dart run :currency_l10n_map ZWG [XCG ...] --system
///     reads the CLDR data of the system ICU (macOS only, needs `swift`).
///
/// Every data file of the package is checked, regional and script locales
/// included. A name is only added to a locale that lacks the code, and to a
/// regional or script locale (`zh_Hant`, `pt_PT`) only if it differs from the
/// name of its parent locale, since those files hold only the differences.
///
/// The system ICU falls back to English for a locale without a name, so with
/// `--system` a non-English name equal to the English one counts as missing.
/// Pass `--keep-english=nl,fy` to keep such names of the given locales, when
/// they are real names spelled like English ones (Dutch "Palladium").
void main(List<String> args) {
  final useSystemIcu = args.contains("--system");
  final keepEnglish = {
    for (final arg in args.where((value) => value.startsWith(_keepEnglish)))
      ...arg.replaceFirst(_keepEnglish, "").split(","),
  };
  final codes = {
    for (final arg in args.where((value) => !value.startsWith("--")))
      arg.trim().toUpperCase(),
  };
  if (codes.isEmpty || codes.any((code) => code.length != 3)) {
    print("Usage: dart run :currency_l10n_map <CODE>... [--system] ");
    print("  [$_keepEnglish<locale>,...]");
    print("Example: dart run :currency_l10n_map ZWG XCG --system");
    exit(64);
  }
  if (!useSystemIcu && !Directory(_icuDataPath).existsSync()) {
    print("Error: ICU directory not found at $_icuDataPath.");
    print("Add the ICU4C curr/<locale>.txt files there, or pass --system.");
    exit(1);
  }

  final dataDir = Directory(
    join("..", "packages", "l10n_currencies", "lib", "src", "data"),
  );
  final dataFiles = _dataFiles(dataDir);
  final bundled = dataFiles.keys.toSet();
  final translations = useSystemIcu
      ? _systemIcuNames(codes, bundled, keepEnglish)
      : {for (final code in codes) code: _icuFileNames(code, bundled)};
  int added = 0;

  for (final code in codes) {
    final icuNames = translations[code] ?? const <String, String>{};
    print("\n--- $code: ${icuNames.length} locale(s) with a name ---");

    for (final MapEntry(key: locale, value: file) in dataFiles.entries) {
      final name = icuNames[locale];
      if (name == null) continue;
      final content = file.readAsStringSync();
      final entries = _entries(content, file.path);
      if (entries.containsKey(code)) continue;

      // Only regional and script locales are differences to their parent,
      // `nb` and `nn` are full languages although they fall back to `no`.
      final parent = locale.contains("_")
          ? LocaleFallback.chain(locale)
                .skip(1)
                .where(bundled.contains)
                .firstOrNull
          : null;
      if (parent != null && icuNames[parent] == name) continue;

      final l10n = _sentenceCase(name, locale, entries.values.map(_unquoted));
      entries[code] = _literal(code, _escape(l10n));
      file.writeAsStringSync(_withEntries(content, entries));
      added += 1;
      print("✓ $locale: $l10n");
    }
  }

  print("\n--- Added $added name(s) ---");
  if (added == 0) return;

  Process.runSync("dart", ["format", dataDir.path]);
  final analyze = Process.runSync("dart", [
    "analyze",
    "--fatal-infos", // As in CI, a lint like the line length is an info.
    dataDir.path,
  ]);
  if (analyze.exitCode != 0) {
    print("✗ dart analyze found issues:\n${analyze.stdout}${analyze.stderr}");
    exit(1);
  }
  print("Run `dart run :l10n_mapper currencies` if data files were added.");
}

const _keepEnglish = "--keep-english=";

/// The ICU4C `curr/<locale>.txt` files, relative to the `tools` directory.
const _icuDataPath = "json/data";

/// The map of the `super(other: {...});` call, its entries can span lines.
final _mapRegExp = RegExp(r"super\(\s*other:\s*\{([\s\S]*)\},?\s*\);");

/// A `"CODE": "Name"` entry, the value may be wrapped onto the next line and
/// be a `"""` string (for names longer than a line).
final _entryRegExp = RegExp(
  r'"([A-Z0-9]+\+?)":\s*("""[\s\S]*?"""|"(?:[^"\\]|\\.)*")',
);

/// Data files of the package by their locale (as in the `Provides ...` docs).
Map<String, File> _dataFiles(Directory dataDir) {
  final localeRegExp = RegExp("translations for the `([^`]+)` locale");
  final files = <String, File>{};
  final sorted = dataDir.listSync().whereType<File>().toList()
    ..sort((a, b) => a.path.compareTo(b.path));
  for (final file in sorted) {
    final locale = localeRegExp.firstMatch(file.readAsStringSync())?.group(1);
    if (locale != null) files[locale] = file;
  }

  return files;
}

/// The entries of a data file, with their values as string literals.
Map<String, String> _entries(String content, String path) {
  final body = _mapRegExp.firstMatch(content)?.group(1);
  if (body == null) throw FormatException("No super(other: {...}) in $path");

  return {
    for (final match in _entryRegExp.allMatches(body))
      match.group(1) ?? "": match.group(2) ?? "",
  };
}

/// The data file content with sorted [entries] and their count in the docs.
String _withEntries(String content, Map<String, String> entries) {
  final sorted = entries.keys.toList()..sort();
  final lines = sorted.map((key) => '"$key": ${entries[key]},');

  return content
      .replaceFirst(
        RegExp(r"/// Contains \d+ translations?(?:\(s\))?\."),
        "/// Contains ${entries.length} translation(s).",
      )
      .replaceFirst(_mapRegExp, "super(other: {\n${lines.join("\n")}\n});");
}

/// Names from the ICU4C `curr/<locale>.txt` files, named like the locales.
Map<String, String> _icuFileNames(String code, Set<String> locales) {
  final found = <String, String>{};
  for (final locale in locales) {
    final file = File(join(_icuDataPath, "$locale.txt"));
    if (!file.existsSync()) continue;
    final name = _extractCurrencyName(file, code);
    if (name != null) found[locale] = name;
  }

  return found;
}

String? _extractCurrencyName(File file, String currencyCode) {
  final allLines = file.readAsLinesSync();
  for (int i = 0; i < allLines.length; i += 1) {
    final line = allLines[i].trim();

    if (line.startsWith("$currencyCode{")) {
      if (i + 2 < allLines.length) {
        final nameLine = allLines[i + 2].trim();
        final match = RegExp('"([^"]+)"').firstMatch(nameLine);
        if (match != null) return match.group(1);
      }

      return null;
    }
  }

  return null;
}

/// Names of all [codes] from the system ICU via Foundation, in one `swift`
/// run. A non-English name equal to the English one is treated as missing,
/// unless its locale is in [keepEnglish].
Map<String, Map<String, String>> _systemIcuNames(
  Set<String> codes,
  Set<String> locales,
  Set<String> keepEnglish,
) {
  const script = r"""
import Foundation
let args = Array(CommandLine.arguments.dropFirst())
let codes = args[0].split(separator: ",").map(String.init)
for identifier in args.dropFirst() {
  let locale = Locale(identifier: identifier)
  for code in codes {
    if let name = locale.localizedString(forCurrencyCode: code) {
      print("\(code)\t\(identifier)\t\(name)")
    }
  }
}
""";
  final temp = Directory.systemTemp.createTempSync("currency_l10n_map");
  try {
    final file = File(join(temp.path, "names.swift"))
      ..writeAsStringSync(script);
    final result = Process.runSync("swift", [
      file.path,
      codes.join(","),
      "en",
      ...locales,
    ]);
    if (result.exitCode != 0) {
      print("✗ swift failed:\n${result.stderr}");
      exit(1);
    }

    final rows = [
      for (final line in "${result.stdout}".split("\n"))
        if (line.split("\t") case [final code, final locale, final name]
            when name.toUpperCase() != code)
          (code: code, locale: locale, name: name),
    ];

    return {
      for (final code in codes)
        code: _withoutEnglishFallback(
          rows.where((row) => row.code == code),
          keepEnglish,
        ),
    };
  } finally {
    temp.deleteSync(recursive: true);
  }
}

/// Names of one code by locale, without those that the system ICU fell back
/// to English for: a non-English name equal to the English one, unless its
/// locale is in [keepEnglish].
Map<String, String> _withoutEnglishFallback(
  Iterable<({String code, String locale, String name})> rows,
  Set<String> keepEnglish,
) {
  final english = rows.where((row) => row.locale == "en").firstOrNull?.name;

  return {
    for (final row in rows)
      if (row.locale.startsWith("en") ||
          keepEnglish.contains(row.locale) ||
          row.name != english)
        row.locale: row.name,
  };
}

/// Bundled names start with an uppercase letter, unless the locale keeps them
/// lowercase (like the `i-` noun class prefix in Zulu).
String _sentenceCase(String name, String locale, Iterable<String> values) {
  final initials = values
      .where((value) => value.isNotEmpty)
      .map((value) => String.fromCharCode(value.runes.first));
  final lowercase = initials.where((char) => char != char.toUpperCase());
  if (lowercase.length * 2 > initials.length) return name;

  final first = String.fromCharCode(name.runes.first);
  final language = locale.split("_").first;
  final upper = first == "i" && (language == "tr" || language == "az")
      // ignore: avoid-non-ascii-symbols, the Turkish dotted capital I.
      ? "İ"
      : first.toUpperCase();

  return upper + String.fromCharCodes(name.runes.skip(1));
}

/// The `"..."` literal of an escaped [value], or a `"""..."""` one if its
/// entry would be longer than a line: the formatter can't split a string, and
/// the line length lint skips `"""` strings (as the data files do already).
String _literal(String code, String value) {
  final line = '${" " * _entryIndent}"$code": "$value",';

  return line.length > _maxLineLength ? '"""$value"""' : '"$value"';
}

/// The indentation of the formatted `super(other: {...})` entries.
const _entryIndent = 10;
const _maxLineLength = 80;

/// The text of a `"..."` or `"""..."""` literal, its escapes are kept.
String _unquoted(String literal) => literal.replaceAll(_quotesRegExp, "");

final _quotesRegExp = RegExp(r'^"+|"+$');

String _escape(String value) => value
    .replaceAll(r"\", r"\\")
    .replaceAll('"', r'\"')
    .replaceAll(r"$", r"\$");
