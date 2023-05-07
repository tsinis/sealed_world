import "continents.data.dart";

// Americas.

// ignore: prefer-match-file-name, not needed in data file.
class CentralAmerica extends Americas {
  const CentralAmerica();

  @override
  String get name => "Central America";
}

class NorthAmerica extends Americas {
  const NorthAmerica();

  @override
  String get name => "North America";
}

class SouthAmerica extends Americas {
  const SouthAmerica();

  @override
  String get name => "South America";
}

class Caribbean extends Americas {
  const Caribbean();

  @override
  String get name => "Caribbean";
}

// Europe.

class CentralEurope extends Europe {
  const CentralEurope();

  @override
  String get name => "Central ${super.name}";
}

class NorthernEurope extends Europe {
  const NorthernEurope();

  @override
  String get name => "North ${super.name}";
}

class SouthernEurope extends Europe {
  const SouthernEurope();

  @override
  String get name => "Southern ${super.name}";
}

class EasternEurope extends Europe {
  const EasternEurope();

  @override
  String get name => "Eastern ${super.name}";
}

class WesternEurope extends Europe {
  const WesternEurope();

  @override
  String get name => "Western ${super.name}";
}

class SouthwestEurope extends Europe {
  const SouthwestEurope();

  @override
  String get name => "Southwest ${super.name}";
}

// Africa.

class MiddleAfrica extends Africa {
  const MiddleAfrica();

  @override
  String get name => "Middle ${super.name}";
}

class WesternAfrica extends Africa {
  const WesternAfrica();

  @override
  String get name => "Western ${super.name}";
}

class SouthernAfrica extends Africa {
  const SouthernAfrica();

  @override
  String get name => "Southern ${super.name}";
}

class EasternAfrica extends Africa {
  const EasternAfrica();

  @override
  String get name => "Eastern ${super.name}";
}

class NorthernAfrica extends Africa {
  const NorthernAfrica();

  @override
  String get name => "Northern ${super.name}";
}

// Asia.

class CentralAsia extends Asia {
  const CentralAsia();

  @override
  String get name => "Central ${super.name}";
}

class EasternAsia extends Asia {
  const EasternAsia();

  @override
  String get name => "Eastern ${super.name}";
}

class WesternAsia extends Asia {
  const WesternAsia();

  @override
  String get name => "Western ${super.name}";
}

class SouthernAsia extends Asia {
  const SouthernAsia();

  @override
  String get name => "Southern ${super.name}";
}

class SouthEasternAsia extends Asia {
  const SouthEasternAsia();

  @override
  String get name => "SouthEastern ${super.name}";
}

// Oceania.

class AustraliaAndNewZealand extends Oceania {
  const AustraliaAndNewZealand();

  @override
  String get name => "AustraliaAndNewZealand";
}

class Melanesia extends Oceania {
  const Melanesia();

  @override
  String get name => "Melanesia";
}

class Micronesia extends Oceania {
  const Micronesia();

  @override
  String get name => "Micronesia";
}

class Polynesia extends Oceania {
  const Polynesia();

  @override
  String get name => "Polynesia";
}
