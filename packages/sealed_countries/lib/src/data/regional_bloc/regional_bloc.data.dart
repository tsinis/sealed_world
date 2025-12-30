part of "../../model/regional_bloc/regional_bloc.dart";

/// Represents the South Asian Association for Regional Cooperation.
final class BlocSAARC extends RegionalBloc {
  /// Creates an instance of the South Asian Association
  /// for Regional Cooperation.
  const BlocSAARC()
    : super._(
        acronym: "SAARC",
        name: "South Asian Association for Regional Cooperation",
      );
}

/// Represents the European Union.
final class BlocEU extends RegionalBloc {
  /// Creates an instance of the European Union.
  const BlocEU() : super._(acronym: "EU", name: "European Union");
}

/// Represents the Central European Free Trade Agreement.
final class BlocCEFTA extends RegionalBloc {
  /// Creates an instance of the Central European Free Trade Agreement.
  const BlocCEFTA()
    : super._(acronym: "CEFTA", name: "Central European Free Trade Agreement");
}

/// Represents the African Union.
final class BlocAU extends RegionalBloc {
  /// Creates an instance of the African Union.
  const BlocAU()
    : super._(
        acronym: "AU",
        name: "African Union",
        otherNames: const [
          "الاتحاد الأفريقي",
          "Union africaine",
          "União Africana",
          "Unión Africana",
          "Umoja wa Afrika",
        ],
      );
}

/// Represents the Arab League.
final class BlocAL extends RegionalBloc {
  /// Creates an instance of the Arab League.
  const BlocAL()
    : super._(
        acronym: "AL",
        name: "Arab League",
        otherNames: const [
          "جامعة الدول العربية",
          "Jāmiʻat ad-Duwal al-ʻArabīyah",
          "League of Arab States",
        ],
      );
}

/// Represents the Caribbean Community.
final class BlocCARICOM extends RegionalBloc {
  /// Creates an instance of the Caribbean Community.
  const BlocCARICOM()
    : super._(
        acronym: "CARICOM",
        name: "Caribbean Community",
        otherNames: const [
          "Comunidad del Caribe",
          "Communauté Caribéenne",
          "Caribische Gemeenschap",
        ],
      );
}

/// Represents the Central American Integration System.
final class BlocCAIS extends RegionalBloc {
  /// Creates an instance of the Central American Integration System.
  const BlocCAIS()
    : super._(
        acronym: "CAIS",
        name: "Central American Integration System",
        otherAcronyms: const ["SICA"],
        otherNames: const ["Sistema de la Integración Centroamericana"],
      );
}

/// Represents the Union of South American Nations.
final class BlocUSAN extends RegionalBloc {
  /// Creates an instance of the Union of South American Nations.
  const BlocUSAN()
    : super._(
        acronym: "USAN",
        name: "Union of South American Nations",
        otherAcronyms: const ["UNASUR", "UNASUL", "UZAN"],
        otherNames: const [
          "Unión de Naciones Suramericanas",
          "União de Nações Sul-Americanas",
          "Unie van Zuid-Amerikaanse Naties",
          "South American Union",
        ],
      );
}

/// Represents the Eurasian Economic Union.
final class BlocEEU extends RegionalBloc {
  /// Creates an instance of the Eurasian Economic Union.
  const BlocEEU()
    : super._(
        acronym: "EEU",
        name: "Eurasian Economic Union",
        otherAcronyms: const ["EAEU"],
      );
}

/// Represents the Association of Southeast Asian Nations.
final class BlocASEAN extends RegionalBloc {
  /// Creates an instance of the Association of Southeast Asian Nations.
  const BlocASEAN()
    : super._(acronym: "ASEAN", name: "Association of Southeast Asian Nations");
}

/// Represents the North American Free Trade Agreement.
final class BlocNAFTA extends RegionalBloc {
  /// Creates an instance of the North American Free Trade Agreement.
  const BlocNAFTA()
    : super._(
        acronym: "NAFTA",
        name: "North American Free Trade Agreement",
        otherNames: const [
          "Tratado de Libre Comercio de América del Norte",
          "Accord de Libre-échange Nord-Américain",
        ],
      );
}

/// Represents the Pacific Alliance.
final class BlocPA extends RegionalBloc {
  /// Creates an instance of the Pacific Alliance.
  const BlocPA()
    : super._(
        acronym: "PA",
        name: "Pacific Alliance",
        otherNames: const ["Alianza del Pacífico"],
      );
}

/// Represents the European Free Trade Association.
final class BlocEFTA extends RegionalBloc {
  /// Creates an instance of the European Free Trade Association.
  const BlocEFTA()
    : super._(acronym: "EFTA", name: "European Free Trade Association");
}

/// A permissive [RegionalBloc] implementation for user-defined blocs.
final class BlocCustom extends RegionalBloc {
  /// Creates a custom [RegionalBloc] for non-standard blocs.
  const BlocCustom({
    required super.acronym,
    super.name = " ",
    super.otherAcronyms,
    super.otherNames,
  }) : super._();
}
