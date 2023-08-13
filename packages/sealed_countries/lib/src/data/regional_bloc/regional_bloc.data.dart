// ignore_for_file: public_member_api_docs, avoid-non-ascii-symbols, TODO!
import "../../model/regional_bloc/world_bloc.dart";

class BlocSAARC extends RegionalBloc {
  const BlocSAARC()
      : super(
          acronym: "SAARC",
          name: "South Asian Association for Regional Cooperation",
        );
}

class BlocEU extends RegionalBloc {
  const BlocEU() : super(acronym: "EU", name: "European Union");
}

class BlocCEFTA extends RegionalBloc {
  const BlocCEFTA()
      : super(
          acronym: "CEFTA",
          name: "Central European Free Trade Agreement",
        );
}

class BlocAU extends RegionalBloc {
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

class BlocAL extends RegionalBloc {
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

class BlocCARICOM extends RegionalBloc {
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

class BlocCAIS extends RegionalBloc {
  const BlocCAIS()
      : super(
          acronym: "CAIS",
          name: "Central American Integration System",
          otherAcronyms: const ["SICA"],
          otherNames: const ["Sistema de la Integración Centroamericana"],
        );
}

class BlocUSAN extends RegionalBloc {
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

class BlocEEU extends RegionalBloc {
  const BlocEEU()
      : super(
          acronym: "EEU",
          name: "Eurasian Economic Union",
          otherAcronyms: const ["EAEU"],
        );
}

class BlocASEAN extends RegionalBloc {
  const BlocASEAN()
      : super(acronym: "ASEAN", name: "Association of Southeast Asian Nations");
}

class BlocNAFTA extends RegionalBloc {
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

class BlocPA extends RegionalBloc {
  const BlocPA()
      : super(
          acronym: "PA",
          name: "Pacific Alliance",
          otherNames: const ["Alianza del Pacífico"],
        );
}

class BlocEFTA extends RegionalBloc {
  const BlocEFTA()
      : super(acronym: "EFTA", name: "European Free Trade Association");
}
