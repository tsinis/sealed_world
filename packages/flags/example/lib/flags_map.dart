// ignore_for_file: depend_on_referenced_packages

import "package:flags/src/data/flags_map_part_1.data.dart";
import "package:flags/src/data/flags_map_part_2.data.dart";
import "package:flags/src/data/flags_map_part_3.data.dart";
import "package:sealed_countries/sealed_countries.dart";

import "ui/flags/simple_stripes_flag.dart";

// ignore: prefer-static-class, to follow pattern from eco-system.
const flagsMap = {
  CountryAbw(): SimpleStripesFlag(flagAbwProperties),
  CountryAfg(): SimpleStripesFlag(flagAfgProperties),
  CountryAgo(): SimpleStripesFlag(flagAgoProperties),
  CountryAia(): SimpleStripesFlag(flagAiaProperties),
  CountryAla(): SimpleStripesFlag(flagAlaProperties),
  CountryAlb(): SimpleStripesFlag(flagAlbProperties),
  CountryAnd(): SimpleStripesFlag(flagAndProperties),
  CountryAre(): SimpleStripesFlag(flagAreProperties),
  CountryArg(): SimpleStripesFlag(flagArgProperties),
  CountryArm(): SimpleStripesFlag(flagArmProperties),
  CountryAsm(): SimpleStripesFlag(flagAsmProperties),
  CountryAta(): SimpleStripesFlag(flagAtaProperties),
  CountryAtf(): SimpleStripesFlag(flagAtfProperties),
  CountryAtg(): SimpleStripesFlag(flagAtgProperties),
  CountryAus(): SimpleStripesFlag(flagAusProperties),
  CountryAut(): SimpleStripesFlag(flagAutProperties),
  CountryAze(): SimpleStripesFlag(flagAzeProperties),
  CountryBdi(): SimpleStripesFlag(flagBdiProperties),
  CountryBel(): SimpleStripesFlag(flagBelProperties),
  CountryBen(): SimpleStripesFlag(flagBenProperties),
  CountryBes(): SimpleStripesFlag(flagBesProperties),
  CountryBfa(): SimpleStripesFlag(flagBfaProperties),
  CountryBgd(): SimpleStripesFlag(flagBgdProperties),
  CountryBgr(): SimpleStripesFlag(flagBgrProperties),
  CountryBhr(): SimpleStripesFlag(flagBhrProperties),
  CountryBhs(): SimpleStripesFlag(flagBhsProperties),
  CountryBih(): SimpleStripesFlag(flagBihProperties),
  CountryBlm(): SimpleStripesFlag(flagBlmProperties),
  CountryBlr(): SimpleStripesFlag(flagBlrProperties),
  CountryBlz(): SimpleStripesFlag(flagBlzProperties),
  CountryBmu(): SimpleStripesFlag(flagBmuProperties),
  CountryBol(): SimpleStripesFlag(flagBolProperties),
  CountryBra(): SimpleStripesFlag(flagBraProperties),
  CountryBrb(): SimpleStripesFlag(flagBrbProperties),
  CountryBrn(): SimpleStripesFlag(flagBrnProperties),
  CountryBtn(): SimpleStripesFlag(flagBtnProperties),
  CountryBvt(): SimpleStripesFlag(flagBvtProperties),
  CountryBwa(): SimpleStripesFlag(flagBwaProperties),
  CountryCaf(): SimpleStripesFlag(flagCafProperties),
  CountryCan(): SimpleStripesFlag(flagCanProperties),
  CountryCck(): SimpleStripesFlag(flagCckProperties),
  CountryChe(): SimpleStripesFlag(flagCheProperties),
  CountryChl(): SimpleStripesFlag(flagChlProperties),
  CountryChn(): SimpleStripesFlag(flagChnProperties),
  CountryCiv(): SimpleStripesFlag(flagCivProperties),
  CountryCmr(): SimpleStripesFlag(flagCmrProperties),
  CountryCod(): SimpleStripesFlag(flagCodProperties),
  CountryCog(): SimpleStripesFlag(flagCogProperties),
  CountryCok(): SimpleStripesFlag(flagCokProperties),
  CountryCol(): SimpleStripesFlag(flagColProperties),
  CountryCom(): SimpleStripesFlag(flagComProperties),
  CountryCpv(): SimpleStripesFlag(flagCpvProperties),
  CountryCri(): SimpleStripesFlag(flagCriProperties),
  CountryCub(): SimpleStripesFlag(flagCubProperties),
  CountryCuw(): SimpleStripesFlag(flagCuwProperties),
  CountryCxr(): SimpleStripesFlag(flagCxrProperties),
  CountryCym(): SimpleStripesFlag(flagCymProperties),
  CountryCyp(): SimpleStripesFlag(flagCypProperties),
  CountryCze(): SimpleStripesFlag(flagCzeProperties),
  CountryDeu(): SimpleStripesFlag(flagDeuProperties),
  CountryDji(): SimpleStripesFlag(flagDjiProperties),
  CountryDma(): SimpleStripesFlag(flagDmaProperties),
  CountryDnk(): SimpleStripesFlag(flagDnkProperties),
  CountryDom(): SimpleStripesFlag(flagDomProperties),
  CountryDza(): SimpleStripesFlag(flagDzaProperties),
  CountryEcu(): SimpleStripesFlag(flagEcuProperties),
  CountryEgy(): SimpleStripesFlag(flagEgyProperties),
  CountryEri(): SimpleStripesFlag(flagEriProperties),
  CountryEsh(): SimpleStripesFlag(flagEshProperties),
  CountryEsp(): SimpleStripesFlag(flagEspProperties),
  CountryEst(): SimpleStripesFlag(flagEstProperties),
  CountryEth(): SimpleStripesFlag(flagEthProperties),
  CountryFin(): SimpleStripesFlag(flagFinProperties),
  CountryFji(): SimpleStripesFlag(flagFjiProperties),
  CountryFlk(): SimpleStripesFlag(flagFlkProperties),
  CountryFra(): SimpleStripesFlag(flagFraProperties),
  CountryFro(): SimpleStripesFlag(flagFroProperties),
  CountryFsm(): SimpleStripesFlag(flagFsmProperties),
  CountryGab(): SimpleStripesFlag(flagGabProperties),
  CountryGbr(): SimpleStripesFlag(flagGbrProperties),
  CountryGeo(): SimpleStripesFlag(flagGeoProperties),
  CountryGgy(): SimpleStripesFlag(flagGgyProperties),
  CountryGha(): SimpleStripesFlag(flagGhaProperties),
  CountryGib(): SimpleStripesFlag(flagGibProperties),
  CountryGin(): SimpleStripesFlag(flagGinProperties),
  CountryGlp(): SimpleStripesFlag(flagGlpProperties),
  CountryGmb(): SimpleStripesFlag(flagGmbProperties),
  CountryGnb(): SimpleStripesFlag(flagGnbProperties),
  CountryGnq(): SimpleStripesFlag(flagGnqProperties),
  CountryGrc(): SimpleStripesFlag(flagGrcProperties),
  CountryGrd(): SimpleStripesFlag(flagGrdProperties),
  CountryGrl(): SimpleStripesFlag(flagGrlProperties),
  CountryGtm(): SimpleStripesFlag(flagGtmProperties),
  CountryGuf(): SimpleStripesFlag(flagGufProperties),
  CountryGum(): SimpleStripesFlag(flagGumProperties),
  CountryGuy(): SimpleStripesFlag(flagGuyProperties),
  CountryHkg(): SimpleStripesFlag(flagHkgProperties),
  CountryHmd(): SimpleStripesFlag(flagHmdProperties),
  CountryHnd(): SimpleStripesFlag(flagHndProperties),
  CountryHrv(): SimpleStripesFlag(flagHrvProperties),
  CountryHti(): SimpleStripesFlag(flagHtiProperties),
  CountryHun(): SimpleStripesFlag(flagHunProperties),
  CountryIdn(): SimpleStripesFlag(flagIdnProperties),
  CountryImn(): SimpleStripesFlag(flagImnProperties),
  CountryInd(): SimpleStripesFlag(flagIndProperties),
  CountryIot(): SimpleStripesFlag(flagIotProperties),
  CountryIrl(): SimpleStripesFlag(flagIrlProperties),
  CountryIrn(): SimpleStripesFlag(flagIrnProperties),
  CountryIrq(): SimpleStripesFlag(flagIrqProperties),
  CountryIsl(): SimpleStripesFlag(flagIslProperties),
  CountryIsr(): SimpleStripesFlag(flagIsrProperties),
  CountryIta(): SimpleStripesFlag(flagItaProperties),
  CountryJam(): SimpleStripesFlag(flagJamProperties),
  CountryJey(): SimpleStripesFlag(flagJeyProperties),
  CountryJor(): SimpleStripesFlag(flagJorProperties),
  CountryJpn(): SimpleStripesFlag(flagJpnProperties),
  CountryKaz(): SimpleStripesFlag(flagKazProperties),
  CountryKen(): SimpleStripesFlag(flagKenProperties),
  CountryKgz(): SimpleStripesFlag(flagKgzProperties),
  CountryKhm(): SimpleStripesFlag(flagKhmProperties),
  CountryKir(): SimpleStripesFlag(flagKirProperties),
  CountryKna(): SimpleStripesFlag(flagKnaProperties),
  CountryKor(): SimpleStripesFlag(flagKorProperties),
  CountryKwt(): SimpleStripesFlag(flagKwtProperties),
  CountryLao(): SimpleStripesFlag(flagLaoProperties),
  CountryLbn(): SimpleStripesFlag(flagLbnProperties),
  CountryLbr(): SimpleStripesFlag(flagLbrProperties),
  CountryLby(): SimpleStripesFlag(flagLbyProperties),
  CountryLca(): SimpleStripesFlag(flagLcaProperties),
  CountryLie(): SimpleStripesFlag(flagLieProperties),
  CountryLka(): SimpleStripesFlag(flagLkaProperties),
  CountryLso(): SimpleStripesFlag(flagLsoProperties),
  CountryLtu(): SimpleStripesFlag(flagLtuProperties),
  CountryLux(): SimpleStripesFlag(flagLuxProperties),
  CountryLva(): SimpleStripesFlag(flagLvaProperties),
  CountryMac(): SimpleStripesFlag(flagMacProperties),
  CountryMaf(): SimpleStripesFlag(flagMafProperties),
  CountryMar(): SimpleStripesFlag(flagMarProperties),
  CountryMco(): SimpleStripesFlag(flagMcoProperties),
  CountryMda(): SimpleStripesFlag(flagMdaProperties),
  CountryMdg(): SimpleStripesFlag(flagMdgProperties),
  CountryMdv(): SimpleStripesFlag(flagMdvProperties),
  CountryMex(): SimpleStripesFlag(flagMexProperties),
  CountryMhl(): SimpleStripesFlag(flagMhlProperties),
  CountryMkd(): SimpleStripesFlag(flagMkdProperties),
  CountryMli(): SimpleStripesFlag(flagMliProperties),
  CountryMlt(): SimpleStripesFlag(flagMltProperties),
  CountryMmr(): SimpleStripesFlag(flagMmrProperties),
  CountryMne(): SimpleStripesFlag(flagMneProperties),
  CountryMng(): SimpleStripesFlag(flagMngProperties),
  CountryMnp(): SimpleStripesFlag(flagMnpProperties),
  CountryMoz(): SimpleStripesFlag(flagMozProperties),
  CountryMrt(): SimpleStripesFlag(flagMrtProperties),
  CountryMsr(): SimpleStripesFlag(flagMsrProperties),
  CountryMtq(): SimpleStripesFlag(flagMtqProperties),
  CountryMus(): SimpleStripesFlag(flagMusProperties),
  CountryMwi(): SimpleStripesFlag(flagMwiProperties),
  CountryMys(): SimpleStripesFlag(flagMysProperties),
  CountryMyt(): SimpleStripesFlag(flagMytProperties),
  CountryNam(): SimpleStripesFlag(flagNamProperties),
  CountryNcl(): SimpleStripesFlag(flagNclProperties),
  CountryNer(): SimpleStripesFlag(flagNerProperties),
  CountryNfk(): SimpleStripesFlag(flagNfkProperties),
  CountryNga(): SimpleStripesFlag(flagNgaProperties),
  CountryNic(): SimpleStripesFlag(flagNicProperties),
  CountryNiu(): SimpleStripesFlag(flagNiuProperties),
  CountryNld(): SimpleStripesFlag(flagNldProperties),
  CountryNor(): SimpleStripesFlag(flagNorProperties),
  CountryNpl(): SimpleStripesFlag(flagNplProperties),
  CountryNru(): SimpleStripesFlag(flagNruProperties),
  CountryNzl(): SimpleStripesFlag(flagNzlProperties),
  CountryOmn(): SimpleStripesFlag(flagOmnProperties),
  CountryPak(): SimpleStripesFlag(flagPakProperties),
  CountryPan(): SimpleStripesFlag(flagPanProperties),
  CountryPcn(): SimpleStripesFlag(flagPcnProperties),
  CountryPer(): SimpleStripesFlag(flagPerProperties),
  CountryPhl(): SimpleStripesFlag(flagPhlProperties),
  CountryPlw(): SimpleStripesFlag(flagPlwProperties),
  CountryPng(): SimpleStripesFlag(flagPngProperties),
  CountryPol(): SimpleStripesFlag(flagPolProperties),
  CountryPri(): SimpleStripesFlag(flagPriProperties),
  CountryPrk(): SimpleStripesFlag(flagPrkProperties),
  CountryPrt(): SimpleStripesFlag(flagPrtProperties),
  CountryPry(): SimpleStripesFlag(flagPryProperties),
  CountryPse(): SimpleStripesFlag(flagPseProperties),
  CountryPyf(): SimpleStripesFlag(flagPyfProperties),
  CountryQat(): SimpleStripesFlag(flagQatProperties),
  CountryReu(): SimpleStripesFlag(flagReuProperties),
  CountryRou(): SimpleStripesFlag(flagRouProperties),
  CountryRus(): SimpleStripesFlag(flagRusProperties),
  CountryRwa(): SimpleStripesFlag(flagRwaProperties),
  CountrySau(): SimpleStripesFlag(flagSauProperties),
  CountrySdn(): SimpleStripesFlag(flagSdnProperties),
  CountrySen(): SimpleStripesFlag(flagSenProperties),
  CountrySgp(): SimpleStripesFlag(flagSgpProperties),
  CountrySgs(): SimpleStripesFlag(flagSgsProperties),
  CountryShn(): SimpleStripesFlag(flagShnProperties),
  CountrySjm(): SimpleStripesFlag(flagSjmProperties),
  CountrySlb(): SimpleStripesFlag(flagSlbProperties),
  CountrySle(): SimpleStripesFlag(flagSleProperties),
  CountrySlv(): SimpleStripesFlag(flagSlvProperties),
  CountrySmr(): SimpleStripesFlag(flagSmrProperties),
  CountrySom(): SimpleStripesFlag(flagSomProperties),
  CountrySpm(): SimpleStripesFlag(flagSpmProperties),
  CountrySrb(): SimpleStripesFlag(flagSrbProperties),
  CountrySsd(): SimpleStripesFlag(flagSsdProperties),
  CountryStp(): SimpleStripesFlag(flagStpProperties),
  CountrySur(): SimpleStripesFlag(flagSurProperties),
  CountrySvk(): SimpleStripesFlag(flagSvkProperties),
  CountrySvn(): SimpleStripesFlag(flagSvnProperties),
  CountrySwe(): SimpleStripesFlag(flagSweProperties),
  CountrySwz(): SimpleStripesFlag(flagSwzProperties),
  CountrySxm(): SimpleStripesFlag(flagSxmProperties),
  CountrySyc(): SimpleStripesFlag(flagSycProperties),
  CountrySyr(): SimpleStripesFlag(flagSyrProperties),
  CountryTca(): SimpleStripesFlag(flagTcaProperties),
  CountryTcd(): SimpleStripesFlag(flagTcdProperties),
  CountryTgo(): SimpleStripesFlag(flagTgoProperties),
  CountryTha(): SimpleStripesFlag(flagThaProperties),
  CountryTjk(): SimpleStripesFlag(flagTjkProperties),
  CountryTkl(): SimpleStripesFlag(flagTklProperties),
  CountryTkm(): SimpleStripesFlag(flagTkmProperties),
  CountryTls(): SimpleStripesFlag(flagTlsProperties),
  CountryTon(): SimpleStripesFlag(flagTonProperties),
  CountryTto(): SimpleStripesFlag(flagTtoProperties),
  CountryTun(): SimpleStripesFlag(flagTunProperties),
  CountryTur(): SimpleStripesFlag(flagTurProperties),
  CountryTuv(): SimpleStripesFlag(flagTuvProperties),
  CountryTwn(): SimpleStripesFlag(flagTwnProperties),
  CountryTza(): SimpleStripesFlag(flagTzaProperties),
  CountryUga(): SimpleStripesFlag(flagUgaProperties),
  CountryUkr(): SimpleStripesFlag(flagUkrProperties),
  CountryUmi(): SimpleStripesFlag(flagUmiProperties),
  CountryUry(): SimpleStripesFlag(flagUryProperties),
  CountryUsa(): SimpleStripesFlag(flagUsaProperties),
  CountryUzb(): SimpleStripesFlag(flagUzbProperties),
  CountryVat(): SimpleStripesFlag(flagVatProperties),
  CountryVct(): SimpleStripesFlag(flagVctProperties),
  CountryVen(): SimpleStripesFlag(flagVenProperties),
  CountryVgb(): SimpleStripesFlag(flagVgbProperties),
  CountryVir(): SimpleStripesFlag(flagVirProperties),
  CountryVnm(): SimpleStripesFlag(flagVnmProperties),
  CountryVut(): SimpleStripesFlag(flagVutProperties),
  CountryWlf(): SimpleStripesFlag(flagWlfProperties),
  CountryWsm(): SimpleStripesFlag(flagWsmProperties),
  CountryYem(): SimpleStripesFlag(flagYemProperties),
  CountryZaf(): SimpleStripesFlag(flagZafProperties),
  CountryZmb(): SimpleStripesFlag(flagZmbProperties),
  CountryZwe(): SimpleStripesFlag(flagZweProperties),
  CountryUnk(): SimpleStripesFlag(flagUnkProperties),
};