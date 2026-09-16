---
name: sealed-languages-core
description: >-
  Work with world languages (ISO 639-1, ISO 639-2/T, ISO 639-2/B) and writing
  systems (ISO 15924 scripts) using the sealed_languages Dart/Flutter package.
  Use when working with NaturalLanguage, Script, looking up languages by code
  or name, inspecting properties (RTL, language families, scripts), performing
  exhaustive pattern matching, or retrieving localized language names.
---

# Core Languages and Scripts with sealed_languages

Guidelines and examples for working with type-safe world language data (ISO 639) and writing systems (ISO 15924) using the `sealed_languages` package.

## Setup

Add the package to the project:

- Dart projects: `dart pub add sealed_languages`
- Flutter projects: `flutter pub add sealed_languages`

Then import the main library:

```dart
import 'package:sealed_languages/sealed_languages.dart';
```

The package exposes `NaturalLanguage`, `Script`, `LanguageFamily`, `BasicLocale`, `TranslatedName`, and dedicated subclasses for all 184 ISO 639-1 languages (e.g. `LangEng`, `LangDeu`, `LangFra`) and ISO 15924 scripts (e.g. `ScriptLatn`, `ScriptCyrl`, `ScriptArab`).

## Guidelines

### Sealed Class Hierarchy & Exhaustive Matching

- **Exhaustive pattern matching**: `NaturalLanguage` and `Script` are sealed class hierarchies. Switch expressions and statements on these types are checked for exhaustiveness at compile time without requiring fallback `default` cases.
- **Dedicated const types**: Every language has its own subclass and factory constructor (e.g. `LangEng()` or `NaturalLanguage.eng()`). Prefer compile-time `const` instances where possible.

### ISO Standards & Code Formats

- **`code` (ISO 639-2/T)**: Three-letter uppercase terminological code (e.g. `"ENG"`, `"DEU"`, `"FRA"`). This is the primary code of the `Language` superclass.
- **`codeShort` (ISO 639-1)**: Two-letter uppercase code (e.g. `"EN"`, `"DE"`, `"FR"`). All 184 languages in this package have an ISO 639-1 code.
- **`bibliographicCode` (ISO 639-2/B)**: Three-letter uppercase bibliographic code when distinct (e.g. `"GER"` for German, `"FRE"` for French). Returns `null` when identical to the terminological code.
- **`Script.code` (ISO 15924)**: Four-letter title-cased code (e.g. `"Latn"`, `"Cyrl"`, `"Arab"`).
- **`Script.codeNumeric`**: Three-digit string representing the ISO 15924 numeric identifier (e.g. `"215"` for Latin).

### Lookups & Input Handling

- **Prefer `maybeFrom*` for untrusted input**: Use `maybeFromAnyCode()`, `maybeFromCode()`, or `maybeFromCodeShort()` when parsing external or user-provided data. These methods return `null` if the code does not exist.
- **Avoid throwing variants for user input**: Methods like `fromCode()`, `fromCodeShort()`, and `fromAnyCode()` throw when no matching language is found. Only use them when input validity is guaranteed.
- **O(1) lookups**: Access pre-indexed lookup tables using `NaturalLanguage.map` (keyed by uppercase ISO 639-2/T code), `NaturalLanguage.list`, `Script.map`, or `Script.list`.

### Language Properties & Metadata

- **`isRightToLeft`**: Boolean indicating right-to-left text direction (e.g. `true` for Arabic, Hebrew, Persian, Urdu).
- **`family`**: Polymorphic language family classification (e.g. `IndoEuropean()`, `AfroAsiatic()`, `Turkic()`, `SinoTibetan()`).
- **`scripts`**: A `Set<Script>` representing the writing systems traditionally used by the language.
- **`namesNative`**: Non-empty list of native language endonyms (e.g. `['English']`, `['Deutsch']`, `['français']`).

### Localization & Companion Skill

- **Retrieve localized names**: Use `language.commonNameFor(const BasicLocale(LangDeu()))` to get localized language names directly.
- **Advanced L10N & Tree-Shaking**: `sealed_languages` bundles `l10n_languages` under the hood. For direct batch translation mappers (`LanguagesLocaleMapper`), custom translation injection, or compile-time tree-shaking flags (`--dart-define=l10n-<locale>=true`), install the companion skill `l10n-languages-localization` via `dart run skills@ get`.

---

## Examples

### 1. Safe Parsing and Code Lookups

```dart
import 'package:sealed_languages/sealed_languages.dart';

void main() {
  // Safe lookup from untrusted user input
  final language = NaturalLanguage.maybeFromAnyCode('en');
  if (language != null) {
    print('Name: ${language.name}'); // "English"
    print('ISO 639-1: ${language.codeShort}'); // "EN"
    print('ISO 639-2/T: ${language.code}'); // "ENG"
    print('Bibliographic: ${language.bibliographicCode}'); // null (same as ENG)
  }

  // Bibliographic code distinction (German: DEU vs GER)
  const german = LangDeu();
  print(german.code); // "DEU" (Terminological)
  print(german.bibliographicCode); // "GER" (Bibliographic)
}
```

### 2. Exhaustive Pattern Matching with Switch Expressions

```dart
import 'package:sealed_languages/sealed_languages.dart';

String getWelcomePrompt(NaturalLanguage language) => switch (language) {
  LangEng() => 'Welcome!',
  LangSpa() => '¡Bienvenido!',
  LangFra() => 'Bienvenue !',
  LangDeu() => 'Willkommen!',
  LangAra() => 'مرحبا',
  _ => 'Hello (${language.name})',
};
```

### 3. Filtering by Metadata (RTL, Family, Scripts)

```dart
import 'package:sealed_languages/sealed_languages.dart';

void main() {
  // Find all right-to-left languages
  final rtlLanguages = NaturalLanguage.list.where((l) => l.isRightToLeft);
  print(rtlLanguages.map((l) => l.name)); // (Arabic, Avestan, Hebrew, ...)

  // Filter languages written in Cyrillic
  final cyrillicLanguages = NaturalLanguage.list.where(
    (l) => l.scripts.contains(const ScriptCyrl()),
  );
  print(cyrillicLanguages.length);

  // Filter by language family
  final indoEuropean = NaturalLanguage.list.where(
    (l) => l.family is IndoEuropean,
  );
  print(indoEuropean.length);
}
```

### 4. Retrieving Localized Language Names

```dart
import 'package:sealed_languages/sealed_languages.dart';

void main() {
  const language = LangEng();

  // Localize English name into German, Spanish, and Slovak
  final germanName = language.commonNameFor(
    const BasicLocale(LangDeu()),
    orElse: 'English',
  );
  final spanishName = language.commonNameFor(
    const BasicLocale(LangSpa()),
    orElse: 'English',
  );

  print('DE: $germanName'); // "Englisch"
  print('ES: $spanishName'); // "inglés"
}
```

### 5. Script Lookups and Inspection (ISO 15924)

```dart
import 'package:sealed_languages/sealed_languages.dart';

void main() {
  // Lookup script by code or numeric code
  final latin = Script.fromCode('Latn');
  final devanagari = Script.fromCodeNumeric('315');

  print('${latin.name}: ${latin.code} (${latin.codeNumeric})'); // "Latin: Latn (215)"
  print('${devanagari.name}: ${devanagari.code}'); // "Devanagari: Deva"

  // Safe parsing for scripts
  final maybeScript = Script.maybeFromCode('Arab');
  print(maybeScript?.name); // "Arabic"
}
```
