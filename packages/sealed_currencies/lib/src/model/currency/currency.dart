import "package:l10n_currencies/l10n_currencies.dart"
    show CurrenciesLocaleMapper;
import "package:sealed_languages/sealed_languages.dart";

import "../../collections/fiat_currency_collections.dart";
import "../../helpers/fiat_currency/fiat_currency_json.dart";

part "../../data/currencies/aed.data.dart";
part "../../data/currencies/afn.data.dart";
part "../../data/currencies/all.data.dart";
part "../../data/currencies/amd.data.dart";
part "../../data/currencies/ang.data.dart";
part "../../data/currencies/aoa.data.dart";
part "../../data/currencies/ars.data.dart";
part "../../data/currencies/aud.data.dart";
part "../../data/currencies/awg.data.dart";
part "../../data/currencies/azn.data.dart";
part "../../data/currencies/bam.data.dart";
part "../../data/currencies/bbd.data.dart";
part "../../data/currencies/bdt.data.dart";
part "../../data/currencies/bgn.data.dart";
part "../../data/currencies/bhd.data.dart";
part "../../data/currencies/bif.data.dart";
part "../../data/currencies/bmd.data.dart";
part "../../data/currencies/bnd.data.dart";
part "../../data/currencies/bob.data.dart";
part "../../data/currencies/brl.data.dart";
part "../../data/currencies/bsd.data.dart";
part "../../data/currencies/btn.data.dart";
part "../../data/currencies/bwp.data.dart";
part "../../data/currencies/byn.data.dart";
part "../../data/currencies/bzd.data.dart";
part "../../data/currencies/cad.data.dart";
part "../../data/currencies/cdf.data.dart";
part "../../data/currencies/chf.data.dart";
part "../../data/currencies/clf.data.dart";
part "../../data/currencies/clp.data.dart";
part "../../data/currencies/cny.data.dart";
part "../../data/currencies/cop.data.dart";
part "../../data/currencies/crc.data.dart";
part "../../data/currencies/cuc.data.dart";
part "../../data/currencies/cup.data.dart";
part "../../data/currencies/cve.data.dart";
part "../../data/currencies/czk.data.dart";
part "../../data/currencies/djf.data.dart";
part "../../data/currencies/dkk.data.dart";
part "../../data/currencies/dop.data.dart";
part "../../data/currencies/dzd.data.dart";
part "../../data/currencies/egp.data.dart";
part "../../data/currencies/ern.data.dart";
part "../../data/currencies/etb.data.dart";
part "../../data/currencies/eur.data.dart";
part "../../data/currencies/fjd.data.dart";
part "../../data/currencies/fkp.data.dart";
part "../../data/currencies/gbp.data.dart";
part "../../data/currencies/gel.data.dart";
part "../../data/currencies/ghs.data.dart";
part "../../data/currencies/gip.data.dart";
part "../../data/currencies/gmd.data.dart";
part "../../data/currencies/gnf.data.dart";
part "../../data/currencies/gtq.data.dart";
part "../../data/currencies/gyd.data.dart";
part "../../data/currencies/hkd.data.dart";
part "../../data/currencies/hnl.data.dart";
part "../../data/currencies/hrk.data.dart";
part "../../data/currencies/htg.data.dart";
part "../../data/currencies/huf.data.dart";
part "../../data/currencies/idr.data.dart";
part "../../data/currencies/ils.data.dart";
part "../../data/currencies/inr.data.dart";
part "../../data/currencies/iqd.data.dart";
part "../../data/currencies/irr.data.dart";
part "../../data/currencies/isk.data.dart";
part "../../data/currencies/jmd.data.dart";
part "../../data/currencies/jod.data.dart";
part "../../data/currencies/jpy.data.dart";
part "../../data/currencies/kes.data.dart";
part "../../data/currencies/kgs.data.dart";
part "../../data/currencies/khr.data.dart";
part "../../data/currencies/kmf.data.dart";
part "../../data/currencies/kpw.data.dart";
part "../../data/currencies/krw.data.dart";
part "../../data/currencies/kwd.data.dart";
part "../../data/currencies/kyd.data.dart";
part "../../data/currencies/kzt.data.dart";
part "../../data/currencies/lak.data.dart";
part "../../data/currencies/lbp.data.dart";
part "../../data/currencies/lkr.data.dart";
part "../../data/currencies/lrd.data.dart";
part "../../data/currencies/lsl.data.dart";
part "../../data/currencies/lyd.data.dart";
part "../../data/currencies/mad.data.dart";
part "../../data/currencies/mdl.data.dart";
part "../../data/currencies/mga.data.dart";
part "../../data/currencies/mkd.data.dart";
part "../../data/currencies/mmk.data.dart";
part "../../data/currencies/mnt.data.dart";
part "../../data/currencies/mop.data.dart";
part "../../data/currencies/mru.data.dart";
part "../../data/currencies/mur.data.dart";
part "../../data/currencies/mvr.data.dart";
part "../../data/currencies/mwk.data.dart";
part "../../data/currencies/mxn.data.dart";
part "../../data/currencies/myr.data.dart";
part "../../data/currencies/mzn.data.dart";
part "../../data/currencies/nad.data.dart";
part "../../data/currencies/ngn.data.dart";
part "../../data/currencies/nio.data.dart";
part "../../data/currencies/nok.data.dart";
part "../../data/currencies/npr.data.dart";
part "../../data/currencies/nzd.data.dart";
part "../../data/currencies/omr.data.dart";
part "../../data/currencies/pab.data.dart";
part "../../data/currencies/pen.data.dart";
part "../../data/currencies/pgk.data.dart";
part "../../data/currencies/php.data.dart";
part "../../data/currencies/pkr.data.dart";
part "../../data/currencies/pln.data.dart";
part "../../data/currencies/pyg.data.dart";
part "../../data/currencies/qar.data.dart";
part "../../data/currencies/ron.data.dart";
part "../../data/currencies/rsd.data.dart";
part "../../data/currencies/rub.data.dart";
part "../../data/currencies/rwf.data.dart";
part "../../data/currencies/sar.data.dart";
part "../../data/currencies/sbd.data.dart";
part "../../data/currencies/scr.data.dart";
part "../../data/currencies/sdg.data.dart";
part "../../data/currencies/sek.data.dart";
part "../../data/currencies/sgd.data.dart";
part "../../data/currencies/shp.data.dart";
part "../../data/currencies/sle.data.dart";
part "../../data/currencies/sll.data.dart";
part "../../data/currencies/sos.data.dart";
part "../../data/currencies/srd.data.dart";
part "../../data/currencies/ssp.data.dart";
part "../../data/currencies/stn.data.dart";
part "../../data/currencies/svc.data.dart";
part "../../data/currencies/syp.data.dart";
part "../../data/currencies/szl.data.dart";
part "../../data/currencies/thb.data.dart";
part "../../data/currencies/tjs.data.dart";
part "../../data/currencies/tmt.data.dart";
part "../../data/currencies/tnd.data.dart";
part "../../data/currencies/top.data.dart";
part "../../data/currencies/try.data.dart";
part "../../data/currencies/ttd.data.dart";
part "../../data/currencies/twd.data.dart";
part "../../data/currencies/tzs.data.dart";
part "../../data/currencies/uah.data.dart";
part "../../data/currencies/ugx.data.dart";
part "../../data/currencies/usd.data.dart";
part "../../data/currencies/uyu.data.dart";
part "../../data/currencies/uzs.data.dart";
part "../../data/currencies/ves.data.dart";
part "../../data/currencies/vnd.data.dart";
part "../../data/currencies/vuv.data.dart";
part "../../data/currencies/wst.data.dart";
part "../../data/currencies/xaf.data.dart";
part "../../data/currencies/xcd.data.dart";
part "../../data/currencies/xcg.data.dart";
part "../../data/currencies/xof.data.dart";
part "../../data/currencies/xpf.data.dart";
part "../../data/currencies/yer.data.dart";
part "../../data/currencies/zar.data.dart";
part "../../data/currencies/zmw.data.dart";
part "../../data/currencies/zwg.data.dart";
part "../../data/currencies/zwl.data.dart";

part "../../data/currencies/xag.data.dart";
part "../../data/currencies/xau.data.dart";
part "../../data/currencies/xba.data.dart";
part "../../data/currencies/xbb.data.dart";
part "../../data/currencies/xbc.data.dart";
part "../../data/currencies/xbd.data.dart";
part "../../data/currencies/xdr.data.dart";
part "../../data/currencies/xpd.data.dart";
part "../../data/currencies/xpt.data.dart";
part "../../data/currencies/xts.data.dart";
part "submodels/crypto_currency.dart";
part "submodels/fiat_currency.dart";
part "submodels/fiat_currency.g.dart";

/// A class representing a currency. This is an abstract class and should not be
/// instantiated directly.
///
/// The [code], [decimalMark], [name], and [thousandsSeparator] parameters are
/// required. The [symbol] parameter is optional.
///
/// This class provides common properties for currencies, such as the [code],
/// [name], [symbol], [decimalMark], and [thousandsSeparator]. It also provides
/// a `toString` method that can be used to print the contents of a [Currency]
/// instance.
///
/// This class is extended by the [FiatCurrency] and [CryptoCurrency] classes,
/// which provide additional properties specific to fiat and crypto currencies,
/// respectively.
///
/// The [code] parameter should not be empty. The [name] parameter should not
/// be empty. The [symbol] parameter should not be empty if it is provided.
sealed class Currency implements Named<String> {
  /// Creates a new instance of [Currency].
  ///
  /// The [code], [decimalMark], [name], and [thousandsSeparator] parameters are
  /// required. The [symbol] parameter is optional.
  ///
  /// Throws an [AssertionError] if [code] is empty, [name] is empty, or
  /// [symbol] is empty (if provided).
  const Currency({
    required this.code,
    required this.decimalMark,
    required this.name,
    required this.thousandsSeparator,
    this.symbol,
  }) : assert(code.length > 0, "`code` should not be empty!"),
       assert(name.length > 0, "`name` should not be empty!"),
       assert(
         symbol == null || symbol.length > 0,
         "`symbol` should not be empty!",
       );

  /// The standardized code for the currency.
  ///
  /// This field is typically a three-letter code that uniquely identifies the
  /// currency.
  final String code;

  /// The decimal mark, or character used to separate the whole unit from the
  /// subunit.
  final String decimalMark;

  /// The name of the currency.
  @override
  final String name;

  /// The character used to separate thousands grouping of the whole unit.
  final String thousandsSeparator;

  /// The currency symbol.
  final String? symbol;

  /// Returns a string representation of the currency.
  ///
  /// The [code] parameter determines whether to print only the [code] or to
  /// print the full details of the currency. By default, only the [code] is
  /// printed.
  @override
  String toString({bool short = true}) => short
      ? 'Currency(code: "$code")'
      : '''Currency(code: "$code", name: "$name", ${symbol == null ? '' : 'symbol: r"$symbol", '}decimalMark: "$decimalMark", thousandsSeparator: "$thousandsSeparator")''';
}
