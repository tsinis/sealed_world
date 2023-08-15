import "../../model/regional_bloc/world_bloc.dart";

/// {@hideConstantImplementations}
class BlocSAARC extends RegionalBloc {
  /// Represents the South Asian Association for Regional Cooperation.
  const BlocSAARC()
      : super(
          acronym: "SAARC",
          name: "South Asian Association for Regional Cooperation",
        );
}

/// {@hideConstantImplementations}
class BlocEU extends RegionalBloc {
  /// Represents the European Union.
  const BlocEU() : super(acronym: "EU", name: "European Union");
}

/// {@hideConstantImplementations}
class BlocCEFTA extends RegionalBloc {
  /// Represents the Central European Free Trade Agreement.
  const BlocCEFTA()
      : super(
          acronym: "CEFTA",
          name: "Central European Free Trade Agreement",
        );
}

/// {@hideConstantImplementations}
class BlocAU extends RegionalBloc {
  /// Represents the African Union.
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

/// {@hideConstantImplementations}
class BlocAL extends RegionalBloc {
  /// Represents the Arab League.
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

/// {@hideConstantImplementations}
class BlocCARICOM extends RegionalBloc {
  /// Represents the Caribbean Community.
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

/// {@hideConstantImplementations}
class BlocCAIS extends RegionalBloc {
  /// Represents the Central American Integration System.
  const BlocCAIS()
      : super(
          acronym: "CAIS",
          name: "Central American Integration System",
          otherAcronyms: const ["SICA"],
          otherNames: const ["Sistema de la Integración Centroamericana"],
        );
}

/// {@hideConstantImplementations}
class BlocUSAN extends RegionalBloc {
  /// Represents the Union of South American Nations.
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

/// {@hideConstantImplementations}
class BlocEEU extends RegionalBloc {
  /// Represents the Eurasian Economic Union.
  const BlocEEU()
      : super(
          acronym: "EEU",
          name: "Eurasian Economic Union",
          otherAcronyms: const ["EAEU"],
        );
}

/// {@hideConstantImplementations}
class BlocASEAN extends RegionalBloc {
  /// Represents the Association of Southeast Asian Nations.
  const BlocASEAN()
      : super(acronym: "ASEAN", name: "Association of Southeast Asian Nations");
}

/// {@hideConstantImplementations}
class BlocNAFTA extends RegionalBloc {
  /// Represents the North American Free Trade Agreement.
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

/// {@hideConstantImplementations}
class BlocPA extends RegionalBloc {
  /// Represents the Pacific Alliance.
  const BlocPA()
      : super(
          acronym: "PA",
          name: "Pacific Alliance",
          otherNames: const ["Alianza del Pacífico"],
        );
}

/// {@hideConstantImplementations}
class BlocEFTA extends RegionalBloc {
  /// Represents the European Free Trade Association.
  const BlocEFTA()
      : super(acronym: "EFTA", name: "European Free Trade Association");
}
