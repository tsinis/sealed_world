part of "../currency.dart";

class FiatCurrency extends Currency {
  const FiatCurrency({
    required super.code,
    required super.name,
    required this.isoNumeric,
    this.alternateSymbols,
    this.disambiguateSymbol,
    this.htmlEntity,
    this.priority = 100,
    this.smallestDenomination = 1,
    this.subunit,
    this.subunitToUnit = 100,
    this.unitFirst = false,
    super.symbol,
    super.decimalMark = dot,
    super.thousandsSeparator = ",",
  });

  factory FiatCurrency.fromCode(String code) => list.firstWhere(
        (currency) => currency.code == code,
      );

  factory FiatCurrency.fromName(String name) => list.firstWhere(
        (currency) => currency.name == name,
      );

  final List<String>? alternateSymbols;
  final String? disambiguateSymbol;
  final String? htmlEntity;
  final String? isoNumeric;
  final int priority;
  final int smallestDenomination;
  final String? subunit;
  final int subunitToUnit;
  final bool unitFirst;

  static const dot = ".";

  @override
  String toString({bool short = true}) => short
      ? super.toString()
      : """FiatCurrency(code: $code, priority: $priority, name: $name, symbol: $symbol, disambiguateSymbol: $disambiguateSymbol, alternateSymbols: $alternateSymbols, subunit: $subunit, subunitToUnit: $subunitToUnit, unitFirst: $unitFirst, htmlEntity: $htmlEntity, decimalMark: $decimalMark, thousandsSeparator: $thousandsSeparator, isoNumeric: $isoNumeric, smallestDenomination: $smallestDenomination)""";

  // TODO: Annotate.
  static FiatCurrency? maybeFromValue<T extends Object>(
    T value, {
    T? Function(FiatCurrency currency)? where,
    Iterable<FiatCurrency> currencies = list,
  }) {
    assert(currencies.isNotEmpty, "`currencies` should not be empty!");
    for (final currency in currencies) {
      final expectedValue = where?.call(currency) ?? currency.code;
      if (expectedValue == value) {
        return currency;
      }
    }

    return null;
  }

  String get unit => symbol ?? code;

  String addUnit(String value) => unitFirst ? "$unit $value" : "$value $unit";

  String format(num value) {
    final stringValue = value.toString();
    if (stringValue.contains(dot)) {
      final splitValue = stringValue.split(dot);
      final integer = splitValue.first;
      final decimals = splitValue.last;
      final formattedInt = _formatThousands(integer);

      return addUnit(formattedInt + decimalMark + decimals);
    }

    return addUnit(_formatThousands(stringValue));
  }

  String _formatThousands(String value) => value.replaceAllMapped(
        RegExp(r"(\d)(?=(\d{3})+(?!\d))"),
        (match) => "${match[1]}$thousandsSeparator",
      );

  static const list = [
    FiatAed(),
    FiatAfn(),
    FiatAll(),
    FiatAmd(),
    FiatAng(),
    FiatAoa(),
    FiatArs(),
    FiatAud(),
    FiatAwg(),
    FiatAzn(),
    FiatBam(),
    FiatBbd(),
    FiatBdt(),
    FiatBgn(),
    FiatBhd(),
    FiatBif(),
    FiatBmd(),
    FiatBnd(),
    FiatBob(),
    FiatBrl(),
    FiatBsd(),
    FiatBtn(),
    FiatBwp(),
    FiatByn(),
    FiatBzd(),
    FiatCad(),
    FiatCdf(),
    FiatChf(),
    FiatClf(),
    FiatClp(),
    FiatCny(),
    FiatCop(),
    FiatCrc(),
    FiatCuc(),
    FiatCup(),
    FiatCve(),
    FiatCzk(),
    FiatDjf(),
    FiatDkk(),
    FiatDop(),
    FiatDzd(),
    FiatEgp(),
    FiatErn(),
    FiatEtb(),
    FiatEur(),
    FiatFjd(),
    FiatFkp(),
    FiatGbp(),
    FiatGel(),
    FiatGhs(),
    FiatGip(),
    FiatGmd(),
    FiatGnf(),
    FiatGtq(),
    FiatGyd(),
    FiatHkd(),
    FiatHnl(),
    FiatHrk(),
    FiatHtg(),
    FiatHuf(),
    FiatIdr(),
    FiatIls(),
    FiatInr(),
    FiatIqd(),
    FiatIrr(),
    FiatIsk(),
    FiatJmd(),
    FiatJod(),
    FiatJpy(),
    FiatKes(),
    FiatKgs(),
    FiatKhr(),
    FiatKmf(),
    FiatKpw(),
    FiatKrw(),
    FiatKwd(),
    FiatKyd(),
    FiatKzt(),
    FiatLak(),
    FiatLbp(),
    FiatLkr(),
    FiatLrd(),
    FiatLsl(),
    FiatLyd(),
    FiatMad(),
    FiatMdl(),
    FiatMga(),
    FiatMkd(),
    FiatMmk(),
    FiatMnt(),
    FiatMop(),
    FiatMru(),
    FiatMur(),
    FiatMvr(),
    FiatMwk(),
    FiatMxn(),
    FiatMyr(),
    FiatMzn(),
    FiatNad(),
    FiatNgn(),
    FiatNio(),
    FiatNok(),
    FiatNpr(),
    FiatNzd(),
    FiatOmr(),
    FiatPab(),
    FiatPen(),
    FiatPgk(),
    FiatPhp(),
    FiatPkr(),
    FiatPln(),
    FiatPyg(),
    FiatQar(),
    FiatRon(),
    FiatRsd(),
    FiatRub(),
    FiatRwf(),
    FiatSar(),
    FiatSbd(),
    FiatScr(),
    FiatSdg(),
    FiatSek(),
    FiatSgd(),
    FiatShp(),
    FiatSkk(),
    FiatSle(),
    FiatSll(),
    FiatSos(),
    FiatSrd(),
    FiatSsp(),
    FiatStd(),
    FiatStn(),
    FiatSvc(),
    FiatSyp(),
    FiatSzl(),
    FiatThb(),
    FiatTjs(),
    FiatTmt(),
    FiatTnd(),
    FiatTop(),
    FiatTry(),
    FiatTtd(),
    FiatTwd(),
    FiatTzs(),
    FiatUah(),
    FiatUgx(),
    FiatUsd(),
    FiatUyu(),
    FiatUzs(),
    FiatVes(),
    FiatVnd(),
    FiatVuv(),
    FiatWst(),
    FiatXaf(),
    FiatXag(),
    FiatXau(),
    FiatXba(),
    FiatXbb(),
    FiatXbc(),
    FiatXbd(),
    FiatXcd(),
    FiatXdr(),
    FiatXof(),
    FiatXpd(),
    FiatXpf(),
    FiatXpt(),
    FiatXts(),
    FiatYer(),
    FiatZar(),
    FiatZmw(),
  ];
}
