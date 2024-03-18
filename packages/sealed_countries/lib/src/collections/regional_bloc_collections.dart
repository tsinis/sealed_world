// ignore_for_file: prefer-static-class, it's referenced as static in the model.
import "../../sealed_countries.dart";

/// List of all standard [RegionalBloc] sorted by code.
const regionalBlocList = [
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
const regionalBlocAcronymMap = {
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
