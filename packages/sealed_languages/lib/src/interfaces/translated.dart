import "../model/translated_name.dart";

abstract interface class Translated<T extends TranslatedName> {
  const Translated({required this.translations}); // coverage:ignore-line

  final List<T> translations;
}
