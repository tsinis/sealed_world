// ignore_for_file: prefer-static-class, it's referenced as static in the model.
import "../data/regional_bloc/regional_bloc.data.dart";
import "../model/regional_bloc/world_bloc.dart";

/// List of all standard [RegionalBloc] sorted by code.
const regionalBlocList = <RegionalBloc>[
  BlocAL(),
  BlocASEAN(),
  BlocAU(),
  BlocCAIS(),
  BlocCARICOM(),
  BlocCEFTA(),
  BlocEEU(),
  BlocEFTA(),
  BlocEU(),
  BlocNAFTA(),
  BlocPA(),
  BlocSAARC(),
  BlocUSAN(),
];

/// Map of [RegionalBloc] standard acronyms.
const regionalBlocAcronymMap = <String, RegionalBloc>{
  "AL": BlocAL(),
  "ASEAN": BlocASEAN(),
  "AU": BlocAU(),
  "CAIS": BlocCAIS(),
  "CARICOM": BlocCARICOM(),
  "CEFTA": BlocCEFTA(),
  "EEU": BlocEEU(),
  "EFTA": BlocEFTA(),
  "EU": BlocEU(),
  "NAFTA": BlocNAFTA(),
  "PA": BlocPA(),
  "SAARC": BlocSAARC(),
  "USAN": BlocUSAN(),
};
