## 1.1.1

NEW FEATURES

- Updated postal code pattern a format for Paraguay.
- Updated International Olympic Committee (IOC) country code for Bahrain.
- Improvements of `toString()` method implementations in models and addressing new lints + DCM reports.
- Added "polski" to the [Polish](https://github.com/tsinis/sealed_world/issues/221) language `namesNative` array.

## 1.1.0

NEW FEATURES

- Added `FlagExtension` on `WorldCountry` to provide flag-related properties and colors:
  - `flagStripeColors`: Retrieves the stripe colors of the flag from `FlagProperties`.
  - `flagElementsColors`: Retrieves the element colors of the flag from `FlagProperties`.
  - `flagColors`: Combines `flagStripeColors` and `flagElementsColors` into a single list of colors.
  - `flagProperties`: Retrieves the `FlagProperties` associated with country (from the default `WorldCountry.list`).

## 1.0.0

🎉 First stable release!

NEW FEATURES

- `CountryFlag` now offers `alternativeMap` parameter that you can use to provide alternative look of the country flag. By default it contains updated Afghanistan flag (with official design from year 2021) and alternative French Guiana flags.

REFACTOR

- New asserts in the constructors and optimizations in several country flag painters.

TESTS

- Added tests for new asserts and update goldens with arabic fonts.

## 0.8.0

NEW FEATURES

- `CountryFlag` now have non-required child property.

DOCUMENTATION

- Fully document all the public members of the package.

## 0.7.0

TESTS

- Added unit, widget and golden tests for the package with code coverage around 100%.
- Small refactoring related to the linter rules.

## 0.6.0

NEW FEATURES

- Two new properties in the `FlagThemeData` - width and height. Those will be also used in the `CountryFlag` and in aspect ratio calculation (if no `aspectRatio` is provided) if specified.

## 0.5.0

NEW FEATURES

- Updated README and example.
- Updated some simplified world country flags and also a `fullFlags` list.

New full flags:

- North Macedonia (MKD)
- Barbados (BRB)
- Eritrea (ERI)
- Papua New Guinea (PNG)
- Slovakia (SVK)
- Tajikistan (TJK)

Updated simplified flags:

- Brazil (BRA)
- Malta (MLT)
- Albania (ALB)
- Belarus (BLR)
- Spain (ESP)
- Croatia (HRV)
- Iran (IRN)
- Kenya (KEN)
- Cambodia (KHM)
- Lebanon (LBN)
- Liechtenstein (LIE)
- Lesotho (LSO)
- Montenegro (MNE)
- Portugal (PRT)
- San Marino (SMR)
- Serbia (SRB)
- Slovenia (SVN)
- Turkmenistan (TKM)
- Uganda (UGA)
- Vatican City (VAT)
- Vanuatu (VUT)
- Zambia (ZMB)

## 0.1.0

NEW FEATURES

- Provided all 250 small and simplified world country flags, but at the same time 2/3 of these flags can be used as full-dimensional flags (`fullFlags` list).

## 0.0.1

NEW FEATURES

- Provided 225 out of all 250 small and simplified world country flags.

## 0.0.0

- Initial release.
