// ignore_for_file: avoid-unnecessary-enum-prefix, avoid-shadowing

import "package:change_case/change_case.dart";

import "../constants/path_constants.dart";

enum Package {
  sealedLanguages,
  sealedCurrencies,
  sealedCountries;

  String get dirName => name.toSnakeCase();

  String get fullPath =>
      "${PathConstants.packages}/$dirName/${PathConstants.lib}/${PathConstants.src}/";

  T when<T>({
    required T Function() sealedLanguages,
    required T Function() sealedCurrencies,
    required T Function() sealedCountries,
  }) => switch (this) {
    Package.sealedLanguages => sealedLanguages(),
    Package.sealedCurrencies => sealedCurrencies(),
    Package.sealedCountries => sealedCountries(),
  };

  T whenConst<T>({
    required T sealedLanguages,
    required T sealedCurrencies,
    required T sealedCountries,
  }) => switch (this) {
    Package.sealedLanguages => sealedLanguages,
    Package.sealedCurrencies => sealedCurrencies,
    Package.sealedCountries => sealedCountries,
  };

  T? whenOrNull<T>({
    T Function()? sealedLanguages,
    T Function()? sealedCurrencies,
    T Function()? sealedCountries,
  }) => switch (this) {
    Package.sealedLanguages => sealedLanguages?.call(),
    Package.sealedCurrencies => sealedCurrencies?.call(),
    Package.sealedCountries => sealedCountries?.call(),
  };

  T? whenConstOrNull<T>({
    T? sealedLanguages,
    T? sealedCurrencies,
    T? sealedCountries,
  }) => switch (this) {
    Package.sealedLanguages => sealedLanguages,
    Package.sealedCurrencies => sealedCurrencies,
    Package.sealedCountries => sealedCountries,
  };
}
