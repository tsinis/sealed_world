// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

part of 'package.dart';

// **************************************************************************
// MatcherGenerator
// **************************************************************************

extension $PackageMatcherExtension on Package {
  T when<T>({
    required T Function() sealedLanguages,
    required T Function() sealedCurrencies,
    required T Function() sealedCountries,
    required T Function() worldCountries,
  }) {
    switch (this) {
      case Package.sealedLanguages:
        return sealedLanguages();
      case Package.sealedCurrencies:
        return sealedCurrencies();
      case Package.sealedCountries:
        return sealedCountries();
      case Package.worldCountries:
        return worldCountries();
    }
  }

  T whenConst<T>({
    required T sealedLanguages,
    required T sealedCurrencies,
    required T sealedCountries,
    required T worldCountries,
  }) {
    switch (this) {
      case Package.sealedLanguages:
        return sealedLanguages;
      case Package.sealedCurrencies:
        return sealedCurrencies;
      case Package.sealedCountries:
        return sealedCountries;
      case Package.worldCountries:
        return worldCountries;
    }
  }

  T? whenOrNull<T>({
    T Function()? sealedLanguages,
    T Function()? sealedCurrencies,
    T Function()? sealedCountries,
    T Function()? worldCountries,
  }) {
    switch (this) {
      case Package.sealedLanguages:
        return sealedLanguages?.call();
      case Package.sealedCurrencies:
        return sealedCurrencies?.call();
      case Package.sealedCountries:
        return sealedCountries?.call();
      case Package.worldCountries:
        return worldCountries?.call();
    }
  }

  T? whenConstOrNull<T>({
    T? sealedLanguages,
    T? sealedCurrencies,
    T? sealedCountries,
    T? worldCountries,
  }) {
    switch (this) {
      case Package.sealedLanguages:
        return sealedLanguages;
      case Package.sealedCurrencies:
        return sealedCurrencies;
      case Package.sealedCountries:
        return sealedCountries;
      case Package.worldCountries:
        return worldCountries;
    }
  }
}
