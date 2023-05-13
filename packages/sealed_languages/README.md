This ISO-driven, pure Dart, and and dependency-free package provides information about world languages in form of compile-time constant sealed classes. Contains the **all 184 languages with ISO 639-1 codes**, also provides ISO 639-2 codes, their English, native names, language family info, etc.

## Features

**NaturalLanguage** class provides the following information about languages:

| Field | Mandatory | Description | Example for LangEng |
| --- | --- | --- | --- |
| name | Yes | A non-empty string representing the English name of the natural language. | "English" |
| code | Yes | A three-letter string representing the Terminological ISO 639-2 code for the language. | "ENG" |
| codeShort | Yes | A two-letter string representing the ISO 639-1 code for the language. | "EN" |
| namesNative | Yes | A list of non-empty strings representing the language's native names. | ["English"] |
| bibliographicCode | No | A three-letter string representing the ISO 639-2/B Bibliographic code for the language. | null |
| family | No | The language family to which the language belongs. | LanguageFamily(name: "Indo-European") |
| isRightToLeft | No | A boolean value specifying whether the language is written right-to-left. | false |

## Getting started

To use this package, add `sealed_languages` as a dependency in your `pubspec.yaml` file.

```yaml
dependencies:
  sealed_languages: any
```

Then import the package in your Dart code:

```dart
import 'package:sealed_languages/sealed_languages.dart';
```

## Usage

Use NaturalLanguage class to get information about languages. Either construct a new instance directly or with use of the class factory constructors/method fromCode, fromCodeShort, fromName or from any value that class contains (maybeFromValue), or select one from the NaturalLanguage.list constant.

```dart
 final english = NaturalLanguage.fromCode("Eng");
 print("${english.name}: ${english.codeShort}"); // Prints: "English: EN".

 final maybeCzech = NaturalLanguage.maybeFromValue(
   "CZE",
   where: (language) => language.bibliographicCode,
 );

 // This will print: "Native name: čeština".
 print("Native name: ${maybeCzech?.namesNative.first}");

 final indoEuropeanLanguages = NaturalLanguage.list.where(
   (language) => language.family is IndoEuropean,
 );
 // Prints a list of Indo-European languages:
 print(indoEuropeanLanguages);
 // (Language(name: Avestan), Language(name: Afrikaans),
 // ...
 // Language(name: Walloon), Language(name: Yiddish).
```

For more usage examples, please see the /example folder.

## Additional information

For more information on using this package, check out the API documentation.

If you have any issues or suggestions for the package, please file them in the GitHub repository.
