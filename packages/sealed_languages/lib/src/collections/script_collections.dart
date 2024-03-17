// ignore_for_file: prefer-static-class, it's referenced as static in the model.
import "../data/scripts.data.dart";
import "../model/script/writing_system.dart";

/// List of all standard [Script] sorted by code.
const scriptList = [
  ScriptAdlm(),
  ScriptAfak(),
  ScriptAghb(),
  ScriptAhom(),
  ScriptArab(),
  ScriptAran(),
  ScriptArmi(),
  ScriptArmn(),
  ScriptAvst(),
  ScriptBali(),
  ScriptBamu(),
  ScriptBass(),
  ScriptBatk(),
  ScriptBeng(),
  ScriptBhks(),
  ScriptBlis(),
  ScriptBopo(),
  ScriptBrah(),
  ScriptBrai(),
  ScriptBugi(),
  ScriptBuhd(),
  ScriptCakm(),
  ScriptCans(),
  ScriptCari(),
  ScriptCham(),
  ScriptCher(),
  ScriptChrs(),
  ScriptCirt(),
  ScriptCopt(),
  ScriptCpmn(),
  ScriptCprt(),
  ScriptCyrl(),
  ScriptCyrs(),
  ScriptDeva(),
  ScriptDiak(),
  ScriptDogr(),
  ScriptDsrt(),
  ScriptDupl(),
  ScriptEgyd(),
  ScriptEgyh(),
  ScriptEgyp(),
  ScriptElba(),
  ScriptElym(),
  ScriptEthi(),
  ScriptGeok(),
  ScriptGeor(),
  ScriptGlag(),
  ScriptGong(),
  ScriptGonm(),
  ScriptGoth(),
  ScriptGran(),
  ScriptGrek(),
  ScriptGujr(),
  ScriptGuru(),
  ScriptHanb(),
  ScriptHang(),
  ScriptHani(),
  ScriptHano(),
  ScriptHans(),
  ScriptHant(),
  ScriptHatr(),
  ScriptHebr(),
  ScriptHira(),
  ScriptHluw(),
  ScriptHmng(),
  ScriptHmnp(),
  ScriptHrkt(),
  ScriptHung(),
  ScriptInds(),
  ScriptItal(),
  ScriptJamo(),
  ScriptJava(),
  ScriptJpan(),
  ScriptJurc(),
  ScriptKali(),
  ScriptKana(),
  ScriptKawi(),
  ScriptKhar(),
  ScriptKhmr(),
  ScriptKhoj(),
  ScriptKitl(),
  ScriptKits(),
  ScriptKnda(),
  ScriptKore(),
  ScriptKpel(),
  ScriptKthi(),
  ScriptLana(),
  ScriptLaoo(),
  ScriptLatf(),
  ScriptLatg(),
  ScriptLatn(),
  ScriptLeke(),
  ScriptLepc(),
  ScriptLimb(),
  ScriptLina(),
  ScriptLinb(),
  ScriptLisu(),
  ScriptLoma(),
  ScriptLyci(),
  ScriptLydi(),
  ScriptMahj(),
  ScriptMaka(),
  ScriptMand(),
  ScriptMani(),
  ScriptMarc(),
  ScriptMaya(),
  ScriptMedf(),
  ScriptMend(),
  ScriptMerc(),
  ScriptMero(),
  ScriptMlym(),
  ScriptModi(),
  ScriptMong(),
  ScriptMoon(),
  ScriptMroo(),
  ScriptMtei(),
  ScriptMult(),
  ScriptMymr(),
  ScriptNagm(),
  ScriptNand(),
  ScriptNarb(),
  ScriptNbat(),
  ScriptNewa(),
  ScriptNkdb(),
  ScriptNkgb(),
  ScriptNkoo(),
  ScriptNshu(),
  ScriptOgam(),
  ScriptOlck(),
  ScriptOrkh(),
  ScriptOrya(),
  ScriptOsge(),
  ScriptOsma(),
  ScriptOugr(),
  ScriptPalm(),
  ScriptPauc(),
  ScriptPcun(),
  ScriptPelm(),
  ScriptPerm(),
  ScriptPhag(),
  ScriptPhli(),
  ScriptPhlp(),
  ScriptPhlv(),
  ScriptPhnx(),
  ScriptPiqd(),
  ScriptPlrd(),
  ScriptPrti(),
  ScriptPsin(),
  ScriptQaaa(),
  ScriptQabx(),
  ScriptRanj(),
  ScriptRjng(),
  ScriptRohg(),
  ScriptRoro(),
  ScriptRunr(),
  ScriptSamr(),
  ScriptSara(),
  ScriptSarb(),
  ScriptSaur(),
  ScriptSgnw(),
  ScriptShaw(),
  ScriptShrd(),
  ScriptShui(),
  ScriptSidd(),
  ScriptSind(),
  ScriptSinh(),
  ScriptSogd(),
  ScriptSogo(),
  ScriptSora(),
  ScriptSoyo(),
  ScriptSund(),
  ScriptSunu(),
  ScriptSylo(),
  ScriptSyrc(),
  ScriptSyre(),
  ScriptSyrj(),
  ScriptSyrn(),
  ScriptTagb(),
  ScriptTakr(),
  ScriptTale(),
  ScriptTalu(),
  ScriptTaml(),
  ScriptTang(),
  ScriptTavt(),
  ScriptTelu(),
  ScriptTeng(),
  ScriptTfng(),
  ScriptTglg(),
  ScriptThaa(),
  ScriptThai(),
  ScriptTibt(),
  ScriptTirh(),
  ScriptTnsa(),
  ScriptToto(),
  ScriptUgar(),
  ScriptVaii(),
  ScriptVisp(),
  ScriptVith(),
  ScriptWara(),
  ScriptWcho(),
  ScriptWole(),
  ScriptXpeo(),
  ScriptXsux(),
  ScriptYezi(),
  ScriptYiii(),
  ScriptZanb(),
  ScriptZinh(),
  ScriptZmth(),
  ScriptZsye(),
  ScriptZsym(),
  ScriptZxxx(),
  ScriptZyyy(),
  ScriptZzzz(),
];

/// Map of [Script] standard codes.
const scriptCodeMap = {
  "ADLM": ScriptAdlm(),
  "AFAK": ScriptAfak(),
  "AGHB": ScriptAghb(),
  "AHOM": ScriptAhom(),
  "ARAB": ScriptArab(),
  "ARAN": ScriptAran(),
  "ARMI": ScriptArmi(),
  "ARMN": ScriptArmn(),
  "AVST": ScriptAvst(),
  "BALI": ScriptBali(),
  "BAMU": ScriptBamu(),
  "BASS": ScriptBass(),
  "BATK": ScriptBatk(),
  "BENG": ScriptBeng(),
  "BHKS": ScriptBhks(),
  "BLIS": ScriptBlis(),
  "BOPO": ScriptBopo(),
  "BRAH": ScriptBrah(),
  "BRAI": ScriptBrai(),
  "BUGI": ScriptBugi(),
  "BUHD": ScriptBuhd(),
  "CAKM": ScriptCakm(),
  "CANS": ScriptCans(),
  "CARI": ScriptCari(),
  "CHAM": ScriptCham(),
  "CHER": ScriptCher(),
  "CHRS": ScriptChrs(),
  "CIRT": ScriptCirt(),
  "COPT": ScriptCopt(),
  "CPMN": ScriptCpmn(),
  "CPRT": ScriptCprt(),
  "CYRL": ScriptCyrl(),
  "CYRS": ScriptCyrs(),
  "DEVA": ScriptDeva(),
  "DIAK": ScriptDiak(),
  "DOGR": ScriptDogr(),
  "DSRT": ScriptDsrt(),
  "DUPL": ScriptDupl(),
  "EGYD": ScriptEgyd(),
  "EGYH": ScriptEgyh(),
  "EGYP": ScriptEgyp(),
  "ELBA": ScriptElba(),
  "ELYM": ScriptElym(),
  "ETHI": ScriptEthi(),
  "GEOK": ScriptGeok(),
  "GEOR": ScriptGeor(),
  "GLAG": ScriptGlag(),
  "GONG": ScriptGong(),
  "GONM": ScriptGonm(),
  "GOTH": ScriptGoth(),
  "GRAN": ScriptGran(),
  "GREK": ScriptGrek(),
  "GUJR": ScriptGujr(),
  "GURU": ScriptGuru(),
  "HANB": ScriptHanb(),
  "HANG": ScriptHang(),
  "HANI": ScriptHani(),
  "HANO": ScriptHano(),
  "HANS": ScriptHans(),
  "HANT": ScriptHant(),
  "HATR": ScriptHatr(),
  "HEBR": ScriptHebr(),
  "HIRA": ScriptHira(),
  "HLUW": ScriptHluw(),
  "HMNG": ScriptHmng(),
  "HMNP": ScriptHmnp(),
  "HRKT": ScriptHrkt(),
  "HUNG": ScriptHung(),
  "INDS": ScriptInds(),
  "ITAL": ScriptItal(),
  "JAMO": ScriptJamo(),
  "JAVA": ScriptJava(),
  "JPAN": ScriptJpan(),
  "JURC": ScriptJurc(),
  "KALI": ScriptKali(),
  "KANA": ScriptKana(),
  "KAWI": ScriptKawi(),
  "KHAR": ScriptKhar(),
  "KHMR": ScriptKhmr(),
  "KHOJ": ScriptKhoj(),
  "KITL": ScriptKitl(),
  "KITS": ScriptKits(),
  "KNDA": ScriptKnda(),
  "KORE": ScriptKore(),
  "KPEL": ScriptKpel(),
  "KTHI": ScriptKthi(),
  "LANA": ScriptLana(),
  "LAOO": ScriptLaoo(),
  "LATF": ScriptLatf(),
  "LATG": ScriptLatg(),
  "LATN": ScriptLatn(),
  "LEKE": ScriptLeke(),
  "LEPC": ScriptLepc(),
  "LIMB": ScriptLimb(),
  "LINA": ScriptLina(),
  "LINB": ScriptLinb(),
  "LISU": ScriptLisu(),
  "LOMA": ScriptLoma(),
  "LYCI": ScriptLyci(),
  "LYDI": ScriptLydi(),
  "MAHJ": ScriptMahj(),
  "MAKA": ScriptMaka(),
  "MAND": ScriptMand(),
  "MANI": ScriptMani(),
  "MARC": ScriptMarc(),
  "MAYA": ScriptMaya(),
  "MEDF": ScriptMedf(),
  "MEND": ScriptMend(),
  "MERC": ScriptMerc(),
  "MERO": ScriptMero(),
  "MLYM": ScriptMlym(),
  "MODI": ScriptModi(),
  "MONG": ScriptMong(),
  "MOON": ScriptMoon(),
  "MROO": ScriptMroo(),
  "MTEI": ScriptMtei(),
  "MULT": ScriptMult(),
  "MYMR": ScriptMymr(),
  "NAGM": ScriptNagm(),
  "NAND": ScriptNand(),
  "NARB": ScriptNarb(),
  "NBAT": ScriptNbat(),
  "NEWA": ScriptNewa(),
  "NKDB": ScriptNkdb(),
  "NKGB": ScriptNkgb(),
  "NKOO": ScriptNkoo(),
  "NSHU": ScriptNshu(),
  "OGAM": ScriptOgam(),
  "OLCK": ScriptOlck(),
  "ORKH": ScriptOrkh(),
  "ORYA": ScriptOrya(),
  "OSGE": ScriptOsge(),
  "OSMA": ScriptOsma(),
  "OUGR": ScriptOugr(),
  "PALM": ScriptPalm(),
  "PAUC": ScriptPauc(),
  "PCUN": ScriptPcun(),
  "PELM": ScriptPelm(),
  "PERM": ScriptPerm(),
  "PHAG": ScriptPhag(),
  "PHLI": ScriptPhli(),
  "PHLP": ScriptPhlp(),
  "PHLV": ScriptPhlv(),
  "PHNX": ScriptPhnx(),
  "PIQD": ScriptPiqd(),
  "PLRD": ScriptPlrd(),
  "PRTI": ScriptPrti(),
  "PSIN": ScriptPsin(),
  "QAAA": ScriptQaaa(),
  "QABX": ScriptQabx(),
  "RANJ": ScriptRanj(),
  "RJNG": ScriptRjng(),
  "ROHG": ScriptRohg(),
  "RORO": ScriptRoro(),
  "RUNR": ScriptRunr(),
  "SAMR": ScriptSamr(),
  "SARA": ScriptSara(),
  "SARB": ScriptSarb(),
  "SAUR": ScriptSaur(),
  "SGNW": ScriptSgnw(),
  "SHAW": ScriptShaw(),
  "SHRD": ScriptShrd(),
  "SHUI": ScriptShui(),
  "SIDD": ScriptSidd(),
  "SIND": ScriptSind(),
  "SINH": ScriptSinh(),
  "SOGD": ScriptSogd(),
  "SOGO": ScriptSogo(),
  "SORA": ScriptSora(),
  "SOYO": ScriptSoyo(),
  "SUND": ScriptSund(),
  "SUNU": ScriptSunu(),
  "SYLO": ScriptSylo(),
  "SYRC": ScriptSyrc(),
  "SYRE": ScriptSyre(),
  "SYRJ": ScriptSyrj(),
  "SYRN": ScriptSyrn(),
  "TAGB": ScriptTagb(),
  "TAKR": ScriptTakr(),
  "TALE": ScriptTale(),
  "TALU": ScriptTalu(),
  "TAML": ScriptTaml(),
  "TANG": ScriptTang(),
  "TAVT": ScriptTavt(),
  "TELU": ScriptTelu(),
  "TENG": ScriptTeng(),
  "TFNG": ScriptTfng(),
  "TGLG": ScriptTglg(),
  "THAA": ScriptThaa(),
  "THAI": ScriptThai(),
  "TIBT": ScriptTibt(),
  "TIRH": ScriptTirh(),
  "TNSA": ScriptTnsa(),
  "TOTO": ScriptToto(),
  "UGAR": ScriptUgar(),
  "VAII": ScriptVaii(),
  "VISP": ScriptVisp(),
  "VITH": ScriptVith(),
  "WARA": ScriptWara(),
  "WCHO": ScriptWcho(),
  "WOLE": ScriptWole(),
  "XPEO": ScriptXpeo(),
  "XSUX": ScriptXsux(),
  "YEZI": ScriptYezi(),
  "YIII": ScriptYiii(),
  "ZANB": ScriptZanb(),
  "ZINH": ScriptZinh(),
  "ZMTH": ScriptZmth(),
  "ZSYE": ScriptZsye(),
  "ZSYM": ScriptZsym(),
  "ZXXX": ScriptZxxx(),
  "ZYYY": ScriptZyyy(),
  "ZZZZ": ScriptZzzz(),
};

/// Map of [Script] other codes.
const scriptCodeOtherMap = {
  "166": ScriptAdlm(),
  "439": ScriptAfak(),
  "239": ScriptAghb(),
  "338": ScriptAhom(),
  "160": ScriptArab(),
  "161": ScriptAran(),
  "124": ScriptArmi(),
  "230": ScriptArmn(),
  "134": ScriptAvst(),
  "360": ScriptBali(),
  "435": ScriptBamu(),
  "259": ScriptBass(),
  "365": ScriptBatk(),
  "325": ScriptBeng(),
  "334": ScriptBhks(),
  "550": ScriptBlis(),
  "285": ScriptBopo(),
  "300": ScriptBrah(),
  "570": ScriptBrai(),
  "367": ScriptBugi(),
  "372": ScriptBuhd(),
  "349": ScriptCakm(),
  "440": ScriptCans(),
  "201": ScriptCari(),
  "358": ScriptCham(),
  "445": ScriptCher(),
  "109": ScriptChrs(),
  "291": ScriptCirt(),
  "204": ScriptCopt(),
  "402": ScriptCpmn(),
  "403": ScriptCprt(),
  "220": ScriptCyrl(),
  "221": ScriptCyrs(),
  "315": ScriptDeva(),
  "342": ScriptDiak(),
  "328": ScriptDogr(),
  "250": ScriptDsrt(),
  "755": ScriptDupl(),
  "070": ScriptEgyd(),
  "060": ScriptEgyh(),
  "050": ScriptEgyp(),
  "226": ScriptElba(),
  "128": ScriptElym(),
  "430": ScriptEthi(),
  "241": ScriptGeok(),
  "240": ScriptGeor(),
  "225": ScriptGlag(),
  "312": ScriptGong(),
  "313": ScriptGonm(),
  "206": ScriptGoth(),
  "343": ScriptGran(),
  "200": ScriptGrek(),
  "320": ScriptGujr(),
  "310": ScriptGuru(),
  "503": ScriptHanb(),
  "286": ScriptHang(),
  "500": ScriptHani(),
  "371": ScriptHano(),
  "501": ScriptHans(),
  "502": ScriptHant(),
  "127": ScriptHatr(),
  "125": ScriptHebr(),
  "410": ScriptHira(),
  "080": ScriptHluw(),
  "450": ScriptHmng(),
  "451": ScriptHmnp(),
  "412": ScriptHrkt(),
  "176": ScriptHung(),
  "610": ScriptInds(),
  "210": ScriptItal(),
  "284": ScriptJamo(),
  "361": ScriptJava(),
  "413": ScriptJpan(),
  "510": ScriptJurc(),
  "357": ScriptKali(),
  "411": ScriptKana(),
  "368": ScriptKawi(),
  "305": ScriptKhar(),
  "355": ScriptKhmr(),
  "322": ScriptKhoj(),
  "505": ScriptKitl(),
  "288": ScriptKits(),
  "345": ScriptKnda(),
  "287": ScriptKore(),
  "436": ScriptKpel(),
  "317": ScriptKthi(),
  "351": ScriptLana(),
  "356": ScriptLaoo(),
  "217": ScriptLatf(),
  "216": ScriptLatg(),
  "215": ScriptLatn(),
  "364": ScriptLeke(),
  "335": ScriptLepc(),
  "336": ScriptLimb(),
  "400": ScriptLina(),
  "401": ScriptLinb(),
  "399": ScriptLisu(),
  "437": ScriptLoma(),
  "202": ScriptLyci(),
  "116": ScriptLydi(),
  "314": ScriptMahj(),
  "366": ScriptMaka(),
  "140": ScriptMand(),
  "139": ScriptMani(),
  "332": ScriptMarc(),
  "090": ScriptMaya(),
  "265": ScriptMedf(),
  "438": ScriptMend(),
  "101": ScriptMerc(),
  "100": ScriptMero(),
  "347": ScriptMlym(),
  "324": ScriptModi(),
  "145": ScriptMong(),
  "218": ScriptMoon(),
  "264": ScriptMroo(),
  "337": ScriptMtei(),
  "323": ScriptMult(),
  "350": ScriptMymr(),
  "295": ScriptNagm(),
  "311": ScriptNand(),
  "106": ScriptNarb(),
  "159": ScriptNbat(),
  "333": ScriptNewa(),
  "085": ScriptNkdb(),
  "420": ScriptNkgb(),
  "165": ScriptNkoo(),
  "499": ScriptNshu(),
  "212": ScriptOgam(),
  "261": ScriptOlck(),
  "175": ScriptOrkh(),
  "327": ScriptOrya(),
  "219": ScriptOsge(),
  "260": ScriptOsma(),
  "143": ScriptOugr(),
  "126": ScriptPalm(),
  "263": ScriptPauc(),
  "015": ScriptPcun(),
  "016": ScriptPelm(),
  "227": ScriptPerm(),
  "331": ScriptPhag(),
  "131": ScriptPhli(),
  "132": ScriptPhlp(),
  "133": ScriptPhlv(),
  "115": ScriptPhnx(),
  "293": ScriptPiqd(),
  "282": ScriptPlrd(),
  "130": ScriptPrti(),
  "103": ScriptPsin(),
  "900": ScriptQaaa(),
  "949": ScriptQabx(),
  "303": ScriptRanj(),
  "363": ScriptRjng(),
  "167": ScriptRohg(),
  "620": ScriptRoro(),
  "211": ScriptRunr(),
  "123": ScriptSamr(),
  "292": ScriptSara(),
  "105": ScriptSarb(),
  "344": ScriptSaur(),
  "095": ScriptSgnw(),
  "281": ScriptShaw(),
  "319": ScriptShrd(),
  "530": ScriptShui(),
  "302": ScriptSidd(),
  "318": ScriptSind(),
  "348": ScriptSinh(),
  "141": ScriptSogd(),
  "142": ScriptSogo(),
  "398": ScriptSora(),
  "329": ScriptSoyo(),
  "362": ScriptSund(),
  "274": ScriptSunu(),
  "316": ScriptSylo(),
  "135": ScriptSyrc(),
  "138": ScriptSyre(),
  "137": ScriptSyrj(),
  "136": ScriptSyrn(),
  "373": ScriptTagb(),
  "321": ScriptTakr(),
  "353": ScriptTale(),
  "354": ScriptTalu(),
  "346": ScriptTaml(),
  "520": ScriptTang(),
  "359": ScriptTavt(),
  "340": ScriptTelu(),
  "290": ScriptTeng(),
  "120": ScriptTfng(),
  "370": ScriptTglg(),
  "170": ScriptThaa(),
  "352": ScriptThai(),
  "330": ScriptTibt(),
  "326": ScriptTirh(),
  "275": ScriptTnsa(),
  "294": ScriptToto(),
  "040": ScriptUgar(),
  "470": ScriptVaii(),
  "280": ScriptVisp(),
  "228": ScriptVith(),
  "262": ScriptWara(),
  "283": ScriptWcho(),
  "480": ScriptWole(),
  "030": ScriptXpeo(),
  "020": ScriptXsux(),
  "192": ScriptYezi(),
  "460": ScriptYiii(),
  "339": ScriptZanb(),
  "994": ScriptZinh(),
  "995": ScriptZmth(),
  "993": ScriptZsye(),
  "996": ScriptZsym(),
  "997": ScriptZxxx(),
  "998": ScriptZyyy(),
  "999": ScriptZzzz(),
};