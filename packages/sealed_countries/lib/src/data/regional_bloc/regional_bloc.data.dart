import "../../model/regional_bloc/world_bloc.dart";

/// Represents the South Asian Association for Regional Cooperation.
class BlocSAARC extends RegionalBloc {
  /// Creates an instance of the South Asian Association
  /// for Regional Cooperation.
  const BlocSAARC()
      : super(
          acronym: "SAARC",
          name: "South Asian Association for Regional Cooperation",
        );
}

/// Represents the European Union.
class BlocEU extends RegionalBloc {
  /// Creates an instance of the European Union.
  const BlocEU() : super(acronym: "EU", name: "European Union");
}

/// Represents the Central European Free Trade Agreement.
class BlocCEFTA extends RegionalBloc {
  /// Creates an instance of the Central European Free Trade Agreement.
  const BlocCEFTA()
      : super(
          acronym: "CEFTA",
          name: "Central European Free Trade Agreement",
        );
}

/// Represents the African Union.
class BlocAU extends RegionalBloc {
  /// Creates an instance of the African Union.
  const BlocAU()
      : super(
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
class BlocAL extends RegionalBloc {
  /// Creates an instance of the Arab League.
  const BlocAL()
      : super(
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
class BlocCARICOM extends RegionalBloc {
  /// Creates an instance of the Caribbean Community.
  const BlocCARICOM()
      : super(
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
class BlocCAIS extends RegionalBloc {
  /// Creates an instance of the Central American Integration System.
  const BlocCAIS()
      : super(
          acronym: "CAIS",
          name: "Central American Integration System",
          otherAcronyms: const ["SICA"],
          otherNames: const ["Sistema de la Integración Centroamericana"],
        );
}

/// Represents the Union of South American Nations.
class BlocUSAN extends RegionalBloc {
  /// Creates an instance of the Union of South American Nations.
  const BlocUSAN()
      : super(
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
class BlocEEU extends RegionalBloc {
  /// Creates an instance of the Eurasian Economic Union.
  const BlocEEU()
      : super(
          acronym: "EEU",
          name: "Eurasian Economic Union",
          otherAcronyms: const ["EAEU"],
        );
}

/// Represents the Association of Southeast Asian Nations.
class BlocASEAN extends RegionalBloc {
  /// Creates an instance of the Association of Southeast Asian Nations.
  const BlocASEAN()
      : super(acronym: "ASEAN", name: "Association of Southeast Asian Nations");
}

/// Represents the North American Free Trade Agreement.
class BlocNAFTA extends RegionalBloc {
  /// Creates an instance of the North American Free Trade Agreement.
  const BlocNAFTA()
      : super(
          acronym: "NAFTA",
          name: "North American Free Trade Agreement",
          otherNames: const [
            "Tratado de Libre Comercio de América del Norte",
            "Accord de Libre-échange Nord-Américain",
          ],
        );
}

/// Represents the Pacific Alliance.
class BlocPA extends RegionalBloc {
  /// Creates an instance of the Pacific Alliance.
  const BlocPA()
      : super(
          acronym: "PA",
          name: "Pacific Alliance",
          otherNames: const ["Alianza del Pacífico"],
        );
}

/// Represents the European Free Trade Association.
class BlocEFTA extends RegionalBloc {
  /// Creates an instance of the European Free Trade Association.
  const BlocEFTA()
      : super(acronym: "EFTA", name: "European Free Trade Association");
}
