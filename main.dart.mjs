  let buildArgsList;

// `modulePromise` is a promise to the `WebAssembly.module` object to be
//   instantiated.
// `importObjectPromise` is a promise to an object that contains any additional
//   imports needed by the module that aren't provided by the standard runtime.
//   The fields on this object will be merged into the importObject with which
//   the module will be instantiated.
// This function returns a promise to the instantiated module.
export const instantiate = async (modulePromise, importObjectPromise) => {
    let dartInstance;
    function stringFromDartString(string) {
        const totalLength = dartInstance.exports.$stringLength(string);
        let result = '';
        let index = 0;
        while (index < totalLength) {
          let chunkLength = Math.min(totalLength - index, 0xFFFF);
          const array = new Array(chunkLength);
          for (let i = 0; i < chunkLength; i++) {
              array[i] = dartInstance.exports.$stringRead(string, index++);
          }
          result += String.fromCharCode(...array);
        }
        return result;
    }

    function stringToDartString(string) {
        const length = string.length;
        let range = 0;
        for (let i = 0; i < length; i++) {
            range |= string.codePointAt(i);
        }
        if (range < 256) {
            const dartString = dartInstance.exports.$stringAllocate1(length);
            for (let i = 0; i < length; i++) {
                dartInstance.exports.$stringWrite1(dartString, i, string.codePointAt(i));
            }
            return dartString;
        } else {
            const dartString = dartInstance.exports.$stringAllocate2(length);
            for (let i = 0; i < length; i++) {
                dartInstance.exports.$stringWrite2(dartString, i, string.charCodeAt(i));
            }
            return dartString;
        }
    }

    // Converts a Dart List to a JS array. Any Dart objects will be converted, but
    // this will be cheap for JSValues.
    function arrayFromDartList(constructor, list) {
        const length = dartInstance.exports.$listLength(list);
        const array = new constructor(length);
        for (let i = 0; i < length; i++) {
            array[i] = dartInstance.exports.$listRead(list, i);
        }
        return array;
    }

    buildArgsList = function(list) {
        const dartList = dartInstance.exports.$makeStringList();
        for (let i = 0; i < list.length; i++) {
            dartInstance.exports.$listAdd(dartList, stringToDartString(list[i]));
        }
        return dartList;
    }

    // A special symbol attached to functions that wrap Dart functions.
    const jsWrappedDartFunctionSymbol = Symbol("JSWrappedDartFunction");

    function finalizeWrapper(dartFunction, wrapped) {
        wrapped.dartFunction = dartFunction;
        wrapped[jsWrappedDartFunctionSymbol] = true;
        return wrapped;
    }

    // Imports
    const dart2wasm = {

  _1728: (ms, c) =>
              setTimeout(() => dartInstance.exports.$invokeCallback(c),ms),
_1729: (handle) => clearTimeout(handle),
_1730: (ms, c) =>
          setInterval(() => dartInstance.exports.$invokeCallback(c), ms),
_1731: (handle) => clearInterval(handle),
_1733: () => Date.now(),
_1732: (c) =>
              queueMicrotask(() => dartInstance.exports.$invokeCallback(c)),
_1726: s => stringToDartString(JSON.stringify(stringFromDartString(s))),
_1727: s => console.log(stringFromDartString(s)),
_1631: o => o === undefined,
_1632: o => typeof o === 'boolean',
_1633: o => typeof o === 'number',
_1635: o => typeof o === 'string',
_1638: o => o instanceof Int8Array,
_1639: o => o instanceof Uint8Array,
_1640: o => o instanceof Uint8ClampedArray,
_1641: o => o instanceof Int16Array,
_1642: o => o instanceof Uint16Array,
_1643: o => o instanceof Int32Array,
_1644: o => o instanceof Uint32Array,
_1645: o => o instanceof Float32Array,
_1646: o => o instanceof Float64Array,
_1647: o => o instanceof ArrayBuffer,
_1648: o => o instanceof DataView,
_1649: o => o instanceof Array,
_1650: o => typeof o === 'function' && o[jsWrappedDartFunctionSymbol] === true,
_1652: o => {
            const proto = Object.getPrototypeOf(o);
            return proto === Object.prototype || proto === null;
          },
_1653: o => o instanceof RegExp,
_1654: (l, r) => l === r,
_1655: o => o,
_1656: o => o,
_1657: o => o,
_1658: b => !!b,
_1659: o => o.length,
_1660: o => o.byteLength,
_1661: (o, i) => o.getUint8(i),
_1662: (o, i) => o[i],
_1663: f => f.dartFunction,
_1664: l => arrayFromDartList(Int8Array, l),
_1665: l => arrayFromDartList(Uint8Array, l),
_1666: l => arrayFromDartList(Uint8ClampedArray, l),
_1667: l => arrayFromDartList(Int16Array, l),
_1668: l => arrayFromDartList(Uint16Array, l),
_1669: l => arrayFromDartList(Int32Array, l),
_1670: l => arrayFromDartList(Uint32Array, l),
_1671: l => arrayFromDartList(Float32Array, l),
_1672: l => arrayFromDartList(Float64Array, l),
_1673: (data, length) => {
          const view = new DataView(new ArrayBuffer(length));
          for (let i = 0; i < length; i++) {
              view.setUint8(i, dartInstance.exports.$byteDataGetUint8(data, i));
          }
          return view;
        },
_1674: l => arrayFromDartList(Array, l),
_1675: stringFromDartString,
_1676: stringToDartString,
_1677: () => ({}),
_1678: () => [],
_1679: () => globalThis,
_1680: (constructor, args) => {
      const factoryFunction = constructor.bind.apply(
          constructor, [null, ...args]);
      return new factoryFunction();
    },
_1681: (o, p) => p in o,
_1682: (o, p) => o[p],
_1683: (o, p, v) => o[p] = v,
_1684: (o, m, a) => o[m].apply(o, a),
_1685: o => stringToDartString(String(o)),
_1686: (p, s, f) => p.then(s, f),
_1688: s => {
      let jsString = stringFromDartString(s);
      if (/[[\]{}()*+?.\\^$|]/.test(jsString)) {
          jsString = jsString.replace(/[[\]{}()*+?.\\^$|]/g, '\\$&');
      }
      return stringToDartString(jsString);
    },
_1618: (s, m) => {
          try {
            return new RegExp(s, m);
          } catch (e) {
            return String(e);
          }
        },
_1619: (x0,x1) => x0.exec(x1),
_1620: (x0,x1) => x0.test(x1),
_1621: (x0,x1) => x0.exec(x1),
_1622: (x0,x1) => x0.exec(x1),
_1623: x0 => x0.pop(),
_1626: (x0,x1) => x0[x1],
_1627: (x0,x1,x2) => x0[x1] = x2,
_1628: x0 => x0.length,
_1690: x0 => x0.index,
_1694: x0 => x0.flags,
_1695: x0 => x0.multiline,
_1696: x0 => x0.ignoreCase,
_1697: x0 => x0.unicode,
_1698: x0 => x0.dotAll,
_1699: (x0,x1) => x0.lastIndex = x1,
_1556: (o, t) => o instanceof t,
_1558: f => finalizeWrapper(f,x0 => dartInstance.exports._1558(f,x0)),
_1559: f => finalizeWrapper(f,x0 => dartInstance.exports._1559(f,x0)),
_1560: o => Object.keys(o),
_1724: s => stringToDartString(stringFromDartString(s).toUpperCase()),
_1725: s => stringToDartString(stringFromDartString(s).toLowerCase()),
_1700: v => stringToDartString(v.toString()),
_1701: (d, digits) => stringToDartString(d.toFixed(digits)),
_1704: (d, precision) => stringToDartString(d.toPrecision(precision)),
_1711: Date.now,
_1713: s => new Date(s * 1000).getTimezoneOffset() * 60 ,
_1714: s => {
      const jsSource = stringFromDartString(s);
      if (!/^\s*[+-]?(?:Infinity|NaN|(?:\.\d+|\d+(?:\.\d*)?)(?:[eE][+-]?\d+)?)\s*$/.test(jsSource)) {
        return NaN;
      }
      return parseFloat(jsSource);
    },
_1715: () => {
          let stackString = new Error().stack.toString();
          let userStackString = stackString.split('\n').slice(3).join('\n');
          return stringToDartString(userStackString);
        },
_1716: () => typeof dartUseDateNowForTicks !== "undefined",
_1717: () => 1000 * performance.now(),
_1718: () => Date.now(),
_1721: () => new WeakMap(),
_1722: (map, o) => map.get(o),
_1723: (map, o, v) => map.set(o, v),
_1555: x0 => new Array(x0),
_30: f => finalizeWrapper(f,() => dartInstance.exports._30(f)),
_31: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._31(f,arguments.length,x0) }),
_32: (x0,x1) => ({initializeEngine: x0,autoStart: x1}),
_33: f => finalizeWrapper(f,(x0,x1) => dartInstance.exports._33(f,x0,x1)),
_34: x0 => new Promise(x0),
_35: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._35(f,arguments.length,x0) }),
_36: x0 => ({runApp: x0}),
_37: () => ({}),
_38: (x0,x1) => x0.append(x1),
_39: x0 => x0.save(),
_40: x0 => x0.remove(),
_41: x0 => x0.restore(),
_42: x0 => x0.save(),
_43: x0 => x0.save(),
_44: x0 => x0.restore(),
_45: x0 => x0.beginPath(),
_47: x0 => x0.beginPath(),
_48: x0 => x0.beginPath(),
_49: x0 => x0.stroke(),
_55: x0 => x0.beginPath(),
_56: x0 => x0.closePath(),
_57: x0 => x0.beginPath(),
_58: x0 => x0.beginPath(),
_59: x0 => x0.closePath(),
_60: x0 => x0.beginPath(),
_61: x0 => x0.beginPath(),
_62: x0 => x0.save(),
_63: x0 => x0.restore(),
_64: x0 => x0.remove(),
_65: x0 => x0.save(),
_66: x0 => x0.restore(),
_67: x0 => x0.stroke(),
_68: x0 => x0.stroke(),
_69: (x0,x1) => x0.drawPaint(x1),
_70: (x0,x1,x2) => x0.drawPath(x1,x2),
_71: (x0,x1) => x0.drawPicture(x1),
_73: x0 => x0.restore(),
_74: x0 => ({locateFile: x0}),
_75: (x0,x1) => ({antialias: x0,majorVersion: x1}),
_76: () => new window.flutterCanvasKit.Paint(),
_77: (x0,x1) => ({B: x0,C: x1}),
_78: (x0,x1) => ({filter: x0,mipmap: x1}),
_79: () => new window.flutterCanvasKit.Path(),
_83: () => new window.flutterCanvasKit.PictureRecorder(),
_84: () => ({}),
_85: () => ({}),
_86: () => ({}),
_87: () => ({}),
_90: () => ({}),
_91: x0 => new window.flutterCanvasKit.Font(x0),
_92: (x0,x1) => ({ambient: x0,spot: x1}),
_94: (x0,x1,x2,x3,x4) => ({width: x0,height: x1,colorType: x2,alphaType: x3,colorSpace: x4}),
_106: x0 => x0.remove(),
_114: (x0,x1,x2) => x0.insertBefore(x1,x2),
_116: (x0,x1) => x0.append(x1),
_117: (x0,x1) => x0.append(x1),
_120: (x0,x1) => x0.append(x1),
_124: x0 => x0.delete(),
_125: x0 => x0.delete(),
_126: x0 => x0.Make(),
_127: x0 => x0.Make(),
_128: x0 => x0.enableFontFallback(),
_129: (x0,x1) => x0.setDefaultFontManager(x1),
_131: x0 => x0.clone(),
_133: x0 => x0.makeImageAtCurrentFrame(),
_134: x0 => x0.delete(),
_135: (x0,x1) => x0.setBlendMode(x1),
_136: (x0,x1) => x0.setStyle(x1),
_137: (x0,x1) => x0.setStrokeCap(x1),
_139: (x0,x1) => x0.setColorFilter(x1),
_140: (x0,x1) => x0.setShader(x1),
_141: (x0,x1) => x0.setMaskFilter(x1),
_142: (x0,x1) => x0.setShader(x1),
_145: (x0,x1) => x0.setFillType(x1),
_148: (x0,x1) => x0.setFillType(x1),
_149: (x0,x1) => x0.setFillType(x1),
_151: x0 => x0.close(),
_152: x0 => x0.reset(),
_153: x0 => x0.copy(),
_154: (x0,x1,x2,x3) => x0.MakeFromOp(x1,x2,x3),
_158: x0 => x0.finishRecordingAsPicture(),
_159: x0 => x0.delete(),
_160: (x0,x1) => x0.prepend(x1),
_161: x0 => x0.releaseResourcesAndAbandonContext(),
_162: x0 => x0.delete(),
_163: x0 => x0.stopPropagation(),
_164: x0 => x0.preventDefault(),
_165: x0 => x0.preventDefault(),
_166: x0 => x0.remove(),
_167: (x0,x1) => x0.append(x1),
_168: (x0,x1) => x0.MakeSWCanvasSurface(x1),
_169: x0 => x0.remove(),
_170: x0 => x0.getCanvas(),
_171: x0 => x0.flush(),
_172: x0 => x0.dispose(),
_173: x0 => x0.remove(),
_174: x0 => x0.remove(),
_175: (x0,x1) => x0.ParagraphStyle(x1),
_176: (x0,x1) => x0.TextStyle(x1),
_177: (x0,x1,x2) => x0.MakeFromFontCollection(x1,x2),
_178: x0 => x0.build(),
_179: x0 => x0.delete(),
_180: x0 => x0.pop(),
_182: (x0,x1) => x0.pushStyle(x1),
_183: x0 => x0.focus(),
_184: x0 => x0.select(),
_185: (x0,x1) => x0.append(x1),
_186: x0 => x0.remove(),
_190: x0 => x0.getReader(),
_193: (x0,x1,x2) => new FontFace(x0,x1,x2),
_198: x0 => new Blob(x0),
_199: x0 => new MutationObserver(x0),
_214: (x0,x1) => new OffscreenCanvas(x0,x1),
_216: (x0,x1,x2) => x0.addEventListener(x1,x2),
_217: (x0,x1,x2) => x0.removeEventListener(x1,x2),
_220: x0 => new ResizeObserver(x0),
_222: x0 => ({createScriptURL: x0}),
_223: (x0,x1) => new Intl.Segmenter(x0,x1),
_224: x0 => x0.next(),
_225: (x0,x1) => new Intl.v8BreakIterator(x0,x1),
_227: x0 => x0.remove(),
_228: (x0,x1) => x0.append(x1),
_229: (x0,x1) => x0.appendChild(x1),
_230: (x0,x1) => x0.appendChild(x1),
_231: (x0,x1) => x0.append(x1),
_232: (x0,x1) => x0.append(x1),
_233: (x0,x1) => x0.append(x1),
_234: (x0,x1) => x0.appendChild(x1),
_235: x0 => x0.unlock(),
_239: (x0,x1) => x0.append(x1),
_240: (x0,x1) => x0.append(x1),
_241: x0 => x0.remove(),
_242: (x0,x1) => x0.append(x1),
_243: (x0,x1) => x0.append(x1),
_244: x0 => x0.remove(),
_245: (x0,x1) => x0.append(x1),
_246: (x0,x1) => x0.append(x1),
_249: x0 => x0.save(),
_250: x0 => x0.restore(),
_251: (x0,x1) => x0.append(x1),
_252: (x0,x1) => x0.append(x1),
_253: (x0,x1) => x0.append(x1),
_254: (x0,x1) => x0.append(x1),
_256: (x0,x1) => x0.append(x1),
_257: (x0,x1) => x0.append(x1),
_258: x0 => x0.remove(),
_259: (x0,x1) => x0.append(x1),
_260: x0 => x0.remove(),
_261: x0 => x0.remove(),
_286: (x0,x1) => x0.append(x1),
_287: (x0,x1) => x0.append(x1),
_288: (x0,x1) => x0.append(x1),
_290: (x0,x1) => x0.append(x1),
_299: x0 => x0.remove(),
_300: (x0,x1) => x0.append(x1),
_301: (x0,x1) => x0.append(x1),
_302: (x0,x1) => x0.append(x1),
_303: (x0,x1) => x0.append(x1),
_304: (x0,x1) => x0.append(x1),
_305: (x0,x1) => x0.append(x1),
_306: (x0,x1) => x0.append(x1),
_307: (x0,x1,x2) => x0.insertBefore(x1,x2),
_308: x0 => x0.close(),
_309: (x0,x1,x2,x3,x4) => ({type: x0,data: x1,premultiplyAlpha: x2,colorSpaceConversion: x3,preferAnimation: x4}),
_310: x0 => new window.ImageDecoder(x0),
_311: x0 => x0.close(),
_312: x0 => ({frameIndex: x0}),
_313: (x0,x1) => x0.decode(x1),
_315: x0 => new Promise(x0),
_318: x0 => x0.preventDefault(),
_319: (x0,x1) => x0.addListener(x1),
_320: (x0,x1) => x0.removeListener(x1),
_321: (x0,x1) => x0.append(x1),
_322: x0 => x0.disconnect(),
_323: (x0,x1) => x0.addListener(x1),
_324: (x0,x1) => x0.removeListener(x1),
_325: (x0,x1) => x0.append(x1),
_326: x0 => x0.remove(),
_327: (x0,x1) => x0.append(x1),
_328: x0 => x0.remove(),
_329: x0 => x0.remove(),
_333: x0 => x0.preventDefault(),
_334: (x0,x1) => x0.append(x1),
_335: x0 => x0.remove(),
_336: x0 => x0.preventDefault(),
_337: x0 => x0.preventDefault(),
_338: x0 => x0.preventDefault(),
_339: (x0,x1) => x0.append(x1),
_340: x0 => x0.remove(),
_341: x0 => x0.beginPath(),
_346: (x0,x1) => x0.append(x1),
_347: (x0,x1) => x0.append(x1),
_348: (x0,x1) => x0.append(x1),
_349: x0 => x0.remove(),
_350: x0 => x0.focus(),
_351: x0 => x0.blur(),
_352: (x0,x1) => x0.append(x1),
_353: x0 => x0.remove(),
_354: (x0,x1) => x0.append(x1),
_355: x0 => x0.remove(),
_356: (x0,x1) => x0.append(x1),
_357: (x0,x1) => x0.append(x1),
_358: x0 => x0.remove(),
_359: (x0,x1) => x0.append(x1),
_360: (x0,x1) => x0.append(x1),
_361: (x0,x1,x2) => x0.insertBefore(x1,x2),
_362: x0 => x0.remove(),
_363: x0 => x0.remove(),
_364: x0 => x0.remove(),
_365: (x0,x1) => x0.append(x1),
_366: x0 => x0.remove(),
_367: x0 => x0.getBoundingClientRect(),
_368: x0 => x0.remove(),
_369: x0 => x0.blur(),
_371: (x0,x1) => x0.append(x1),
_372: x0 => x0.focus(),
_373: x0 => x0.remove(),
_374: x0 => x0.focus(),
_375: x0 => x0.focus(),
_376: x0 => x0.blur(),
_377: x0 => x0.remove(),
_378: (x0,x1) => x0.append(x1),
_379: x0 => x0.clear(),
_380: (x0,x1) => x0.add(x1),
_382: (x0,x1) => x0.appendChild(x1),
_384: x0 => x0.remove(),
_385: (x0,x1) => x0.append(x1),
_386: (x0,x1) => x0.append(x1),
_387: x0 => x0.getBoundingClientRect(),
_388: x0 => x0.getBoundingClientRect(),
_390: (x0,x1) => x0.append(x1),
_391: x0 => x0.preventDefault(),
_392: (x0,x1) => x0.append(x1),
_393: x0 => x0.remove(),
_394: (x0,x1) => x0.append(x1),
_395: (x0,x1,x2) => x0.insertBefore(x1,x2),
_396: (x0,x1) => x0.append(x1),
_397: x0 => x0.focus(),
_398: x0 => x0.focus(),
_399: x0 => x0.focus(),
_400: x0 => x0.focus(),
_401: x0 => x0.focus(),
_402: (x0,x1) => x0.append(x1),
_403: x0 => x0.focus(),
_404: x0 => x0.blur(),
_405: x0 => x0.remove(),
_407: x0 => x0.preventDefault(),
_408: x0 => x0.focus(),
_409: x0 => x0.preventDefault(),
_410: x0 => x0.preventDefault(),
_411: x0 => x0.preventDefault(),
_412: x0 => x0.focus(),
_413: x0 => x0.focus(),
_414: (x0,x1) => x0.append(x1),
_415: x0 => x0.focus(),
_416: x0 => x0.focus(),
_417: x0 => x0.focus(),
_418: x0 => x0.focus(),
_419: (x0,x1) => x0.observe(x1),
_420: x0 => x0.disconnect(),
_421: (x0,x1) => x0.appendChild(x1),
_423: x0 => x0.preventDefault(),
_425: (x0,x1) => x0.append(x1),
_427: x0 => x0.remove(),
_428: (x0,x1) => x0.append(x1),
_430: x0 => globalThis.window.flutterCanvasKit = x0,
_431: () => globalThis.window.flutterCanvasKit,
_432: x0 => x0.BlendMode,
_433: x0 => x0.PaintStyle,
_434: x0 => x0.StrokeCap,
_436: x0 => x0.BlurStyle,
_437: x0 => x0.TileMode,
_438: x0 => x0.FilterMode,
_439: x0 => x0.MipmapMode,
_440: x0 => x0.FillType,
_441: x0 => x0.AlphaType,
_442: x0 => x0.ColorType,
_443: x0 => x0.PathOp,
_444: x0 => x0.ClipOp,
_447: x0 => x0.RectHeightStyle,
_448: x0 => x0.RectWidthStyle,
_450: x0 => x0.TextAlign,
_451: x0 => x0.TextHeightBehavior,
_452: x0 => x0.TextDirection,
_453: x0 => x0.FontWeight,
_455: (x0,x1) => x0.MakeAnimatedImageFromEncoded(x1),
_456: x0 => x0.Shader,
_457: x0 => x0.MaskFilter,
_459: x0 => x0.ImageFilter,
_460: x0 => x0.Path,
_461: (x0,x1) => x0.computeTonalColors(x1),
_463: x0 => x0.ParagraphBuilder,
_469: x0 => x0.NoDecoration,
_470: x0 => x0.UnderlineDecoration,
_471: x0 => x0.OverlineDecoration,
_472: x0 => x0.LineThroughDecoration,
_473: x0 => x0.DecorationStyle,
_474: x0 => x0.TextBaseline,
_475: x0 => x0.PlaceholderAlignment,
_477: x0 => x0.TypefaceFontProvider,
_478: x0 => x0.FontCollection,
_479: x0 => x0.Typeface,
_480: (x0,x1,x2) => x0.GetWebGLContext(x1,x2),
_482: (x0,x1) => x0.MakeGrContext(x1),
_483: (x0,x1,x2,x3,x4,x5,x6) => x0.MakeOnScreenGLSurface(x1,x2,x3,x4,x5,x6),
_488: (x0,x1,x2) => x0.MakeLazyImageFromTextureSource(x1,x2),
_489: x0 => globalThis.window.CanvasKitInit(x0),
_490: f => finalizeWrapper(f,(x0,x1) => dartInstance.exports._490(f,x0,x1)),
_491: () => globalThis.window.flutterCanvasKit.ColorSpace.SRGB,
_499: (x0,x1) => x0.setResourceCacheLimitBytes(x1),
_506: x0 => x0.Thin,
_507: x0 => x0.ExtraLight,
_508: x0 => x0.Light,
_509: x0 => x0.Normal,
_510: x0 => x0.Medium,
_511: x0 => x0.SemiBold,
_512: x0 => x0.Bold,
_513: x0 => x0.ExtraBold,
_514: x0 => x0.ExtraBlack,
_518: x0 => x0.value,
_519: x0 => x0.RTL,
_520: x0 => x0.LTR,
_521: x0 => x0.value,
_522: x0 => x0.Left,
_523: x0 => x0.Right,
_524: x0 => x0.Center,
_525: x0 => x0.Justify,
_526: x0 => x0.Start,
_527: x0 => x0.End,
_529: x0 => x0.All,
_530: x0 => x0.DisableFirstAscent,
_531: x0 => x0.DisableLastDescent,
_532: x0 => x0.DisableAll,
_534: x0 => x0.Tight,
_535: x0 => x0.Max,
_536: x0 => x0.IncludeLineSpacingMiddle,
_537: x0 => x0.IncludeLineSpacingTop,
_538: x0 => x0.IncludeLineSpacingBottom,
_539: x0 => x0.Strut,
_541: x0 => x0.Tight,
_542: x0 => x0.Max,
_552: x0 => x0.Difference,
_553: x0 => x0.Intersect,
_555: x0 => x0.Winding,
_556: x0 => x0.EvenOdd,
_558: x0 => x0.Difference,
_559: x0 => x0.Intersect,
_560: x0 => x0.Union,
_561: x0 => x0.XOR,
_562: x0 => x0.ReverseDifference,
_564: x0 => x0.Normal,
_565: x0 => x0.Solid,
_566: x0 => x0.Outer,
_567: x0 => x0.Inner,
_569: x0 => x0.Butt,
_570: x0 => x0.Round,
_571: x0 => x0.Square,
_573: x0 => x0.Stroke,
_574: x0 => x0.Fill,
_576: x0 => x0.Clear,
_577: x0 => x0.Src,
_578: x0 => x0.Dst,
_579: x0 => x0.SrcOver,
_580: x0 => x0.DstOver,
_581: x0 => x0.SrcIn,
_582: x0 => x0.DstIn,
_583: x0 => x0.SrcOut,
_584: x0 => x0.DstOut,
_585: x0 => x0.SrcATop,
_586: x0 => x0.DstATop,
_587: x0 => x0.Xor,
_588: x0 => x0.Plus,
_589: x0 => x0.Modulate,
_590: x0 => x0.Screen,
_591: x0 => x0.Overlay,
_592: x0 => x0.Darken,
_593: x0 => x0.Lighten,
_594: x0 => x0.ColorDodge,
_595: x0 => x0.ColorBurn,
_596: x0 => x0.HardLight,
_597: x0 => x0.SoftLight,
_598: x0 => x0.Difference,
_599: x0 => x0.Exclusion,
_600: x0 => x0.Multiply,
_601: x0 => x0.Hue,
_602: x0 => x0.Saturation,
_603: x0 => x0.Color,
_604: x0 => x0.Luminosity,
_610: x0 => x0.Clamp,
_611: x0 => x0.Repeat,
_612: x0 => x0.Mirror,
_613: x0 => x0.Decal,
_615: x0 => x0.Nearest,
_616: x0 => x0.Linear,
_618: x0 => x0.None,
_620: x0 => x0.Linear,
_623: x0 => x0.Premul,
_629: x0 => x0.RGBA_8888,
_639: x0 => x0.getFrameCount(),
_640: x0 => x0.getRepetitionCount(),
_641: x0 => x0.currentFrameDuration(),
_642: x0 => x0.decodeNextFrame(),
_650: x0 => x0.width(),
_652: x0 => x0.height(),
_657: (x0,x1) => x0.isAliasOf(x1),
_659: (x0,x1,x2,x3,x4,x5,x6) => x0.MakeLinearGradient(x1,x2,x3,x4,x5,x6),
_665: (x0,x1,x2,x3) => x0.MakeBlur(x1,x2,x3),
_668: (x0,x1) => x0.setStrokeWidth(x1),
_672: (x0,x1) => x0.setAntiAlias(x1),
_673: (x0,x1) => x0.setColorInt(x1),
_689: (x0,x1,x2,x3,x4) => x0.MakeBlur(x1,x2,x3,x4),
_691: (x0,x1,x2,x3) => x0.MakeMatrixTransform(x1,x2,x3),
_697: () => globalThis.Float32Array,
_699: (x0,x1) => globalThis.window.flutterCanvasKit.Malloc(x0,x1),
_703: x0 => x0.toTypedArray(),
_708: (x0,x1,x2,x3) => x0.addArc(x1,x2,x3),
_709: (x0,x1,x2,x3) => x0.addOval(x1,x2,x3),
_710: (x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11) => x0.addPath(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11),
_712: (x0,x1,x2) => x0.addRRect(x1,x2),
_714: (x0,x1) => x0.addRect(x1),
_719: (x0,x1,x2) => x0.contains(x1,x2),
_722: x0 => x0.getBounds(),
_723: (x0,x1,x2) => x0.lineTo(x1,x2),
_724: (x0,x1,x2) => x0.moveTo(x1,x2),
_738: (x0,x1,x2,x3,x4,x5,x6,x7,x8,x9) => x0.transform(x1,x2,x3,x4,x5,x6,x7,x8,x9),
_749: (x0,x1) => x0.beginRecording(x1),
_752: (x0,x1) => x0.clear(x1),
_754: (x0,x1,x2,x3) => x0.clipPath(x1,x2,x3),
_755: (x0,x1,x2,x3) => x0.clipRRect(x1,x2,x3),
_756: (x0,x1,x2,x3) => x0.clipRect(x1,x2,x3),
_761: (x0,x1,x2,x3,x4) => x0.drawCircle(x1,x2,x3,x4),
_763: (x0,x1,x2,x3) => x0.drawDRRect(x1,x2,x3),
_767: (x0,x1,x2,x3,x4,x5,x6) => x0.drawImageRectCubic(x1,x2,x3,x4,x5,x6),
_768: (x0,x1,x2,x3,x4,x5,x6) => x0.drawImageRectOptions(x1,x2,x3,x4,x5,x6),
_770: (x0,x1,x2,x3,x4,x5) => x0.drawLine(x1,x2,x3,x4,x5),
_771: (x0,x1,x2) => x0.drawOval(x1,x2),
_776: (x0,x1,x2) => x0.drawRRect(x1,x2),
_777: (x0,x1,x2) => x0.drawRect(x1,x2),
_778: (x0,x1,x2,x3,x4,x5,x6,x7) => x0.drawShadow(x1,x2,x3,x4,x5,x6,x7),
_780: x0 => x0.save(),
_782: (x0,x1,x2,x3,x4) => x0.saveLayer(x1,x2,x3,x4),
_785: (x0,x1,x2,x3) => x0.rotate(x1,x2,x3),
_787: (x0,x1,x2) => x0.scale(x1,x2),
_789: (x0,x1) => x0.concat(x1),
_791: (x0,x1,x2) => x0.translate(x1,x2),
_795: (x0,x1,x2,x3) => x0.drawParagraph(x1,x2,x3),
_798: (x0,x1) => x0.addText(x1),
_802: (x0,x1,x2,x3,x4,x5) => x0.addPlaceholder(x1,x2,x3,x4,x5),
_803: x0 => x0.getText(),
_805: (x0,x1) => x0.setWordsUtf16(x1),
_807: (x0,x1) => x0.setGraphemeBreaksUtf16(x1),
_810: (x0,x1) => x0.setLineBreaksUtf16(x1),
_813: (x0,x1) => x0.textAlign = x1,
_814: (x0,x1) => x0.textDirection = x1,
_815: (x0,x1) => x0.heightMultiplier = x1,
_816: (x0,x1) => x0.textHeightBehavior = x1,
_817: (x0,x1) => x0.maxLines = x1,
_818: (x0,x1) => x0.ellipsis = x1,
_819: (x0,x1) => x0.textStyle = x1,
_820: (x0,x1) => x0.strutStyle = x1,
_821: (x0,x1) => x0.replaceTabCharacters = x1,
_822: x0 => x0.Solid,
_823: x0 => x0.Double,
_824: x0 => x0.Dotted,
_825: x0 => x0.Dashed,
_826: x0 => x0.Wavy,
_828: x0 => x0.Alphabetic,
_829: x0 => x0.Ideographic,
_831: x0 => x0.Baseline,
_832: x0 => x0.AboveBaseline,
_833: x0 => x0.BelowBaseline,
_834: x0 => x0.Top,
_835: x0 => x0.Bottom,
_836: x0 => x0.Middle,
_839: (x0,x1) => x0.color = x1,
_841: (x0,x1) => x0.decoration = x1,
_842: (x0,x1) => x0.decorationThickness = x1,
_843: (x0,x1) => x0.decorationColor = x1,
_844: (x0,x1) => x0.decorationStyle = x1,
_845: (x0,x1) => x0.textBaseline = x1,
_846: (x0,x1) => x0.fontSize = x1,
_847: (x0,x1) => x0.letterSpacing = x1,
_848: (x0,x1) => x0.wordSpacing = x1,
_849: (x0,x1) => x0.heightMultiplier = x1,
_850: (x0,x1) => x0.halfLeading = x1,
_852: (x0,x1) => x0.fontFamilies = x1,
_853: (x0,x1) => x0.fontStyle = x1,
_856: (x0,x1) => x0.fontVariations = x1,
_857: (x0,x1) => x0.fontFamilies = x1,
_858: (x0,x1) => x0.fontStyle = x1,
_859: (x0,x1) => x0.fontSize = x1,
_860: (x0,x1) => x0.heightMultiplier = x1,
_861: (x0,x1) => x0.halfLeading = x1,
_863: (x0,x1) => x0.strutEnabled = x1,
_864: (x0,x1) => x0.forceStrutHeight = x1,
_865: (x0,x1) => x0.weight = x1,
_872: (x0,x1) => x0.axis = x1,
_873: (x0,x1) => x0.value = x1,
_874: (x0,x1) => x0.getGlyphIDs(x1),
_875: (x0,x1,x2,x3) => x0.getGlyphBounds(x1,x2,x3),
_879: (x0,x1,x2) => x0.registerFont(x1,x2),
_883: x0 => x0.startIndex,
_884: x0 => x0.endIndex,
_887: x0 => x0.isHardBreak,
_888: x0 => x0.ascent,
_889: x0 => x0.descent,
_891: x0 => x0.width,
_892: x0 => x0.left,
_893: x0 => x0.baseline,
_894: x0 => x0.lineNumber,
_895: x0 => x0.rect,
_898: x0 => x0.dir,
_899: x0 => x0.getAlphabeticBaseline(),
_900: x0 => x0.didExceedMaxLines(),
_901: x0 => x0.getHeight(),
_903: x0 => x0.getIdeographicBaseline(),
_904: x0 => x0.getLineMetrics(),
_905: x0 => x0.getLongestLine(),
_906: x0 => x0.getMaxIntrinsicWidth(),
_907: x0 => x0.getMinIntrinsicWidth(),
_908: x0 => x0.getMaxWidth(),
_910: (x0,x1,x2,x3,x4) => x0.getRectsForRange(x1,x2,x3,x4),
_911: x0 => x0.getRectsForPlaceholders(),
_912: (x0,x1,x2) => x0.getGlyphPositionAtCoordinate(x1,x2),
_914: (x0,x1) => x0.getWordBoundary(x1),
_915: (x0,x1) => x0.layout(x1),
_917: x0 => x0.affinity,
_918: x0 => x0.pos,
_919: x0 => x0.start,
_920: x0 => x0.end,
_922: x0 => x0.ambient,
_923: x0 => x0.spot,
_927: (x0,x1) => x0.MakeFreeTypeFaceFromData(x1),
_930: x0 => x0.isDeleted(),
_956: x0 => globalThis.__flutterWebCachedModule = x0,
_957: () => globalThis.__flutterWebCachedModule,
_958: x0 => globalThis.__flutterWebCachedExports = x0,
_959: () => globalThis.__flutterWebCachedExports,
_960: () => globalThis.Object,
_961: () => globalThis.exports,
_962: () => globalThis.module,
_963: x0 => globalThis.window.flutterCanvasKit.RuntimeEffect.Make(x0),
_964: (x0,x1) => x0.makeShader(x1),
_966: (x0,x1,x2) => x0.makeShaderWithChildren(x1,x2),
_967: f => finalizeWrapper(f,() => dartInstance.exports._967(f)),
_968: f => finalizeWrapper(f,x0 => dartInstance.exports._968(f,x0)),
_969: f => finalizeWrapper(f,() => dartInstance.exports._969(f)),
_970: f => finalizeWrapper(f,x0 => dartInstance.exports._970(f,x0)),
_971: x0 => x0.remove(),
_972: x0 => x0.remove(),
_973: (x0,x1) => x0.appendChild(x1),
_975: () => globalThis.window.flutterConfiguration,
_976: x0 => x0.assetBase,
_977: x0 => x0.canvasKitBaseUrl,
_978: x0 => x0.canvasKitVariant,
_979: x0 => x0.canvasKitForceCpuOnly,
_980: x0 => x0.canvasKitMaximumSurfaces,
_981: x0 => x0.debugShowSemanticsNodes,
_982: x0 => x0.hostElement,
_983: x0 => x0.renderer,
_984: x0 => x0.useColorEmoji,
_985: () => globalThis.window.flutterWebRenderer,
_986: x0 => x0.console,
_987: x0 => x0.devicePixelRatio,
_988: x0 => x0.document,
_989: x0 => x0.history,
_990: x0 => x0.innerHeight,
_991: x0 => x0.innerWidth,
_992: x0 => x0.location,
_993: x0 => x0.navigator,
_994: x0 => x0.visualViewport,
_995: x0 => x0.performance,
_996: (x0,x1) => x0.fetch(x1),
_998: x0 => x0.URL,
_1000: (x0,x1) => x0.dispatchEvent(x1),
_1002: (x0,x1) => x0.matchMedia(x1),
_1003: (x0,x1) => x0.getComputedStyle(x1),
_1005: x0 => x0.screen,
_1006: (x0,x1) => x0.requestAnimationFrame(x1),
_1007: f => finalizeWrapper(f,x0 => dartInstance.exports._1007(f,x0)),
_1010: x0 => x0.trustedTypes,
_1011: (x0,x1) => x0.warn(x1),
_1012: (x0,x1) => x0.error(x1),
_1013: (x0,x1) => x0.debug(x1),
_1014: () => globalThis.window,
_1015: () => globalThis.Intl,
_1016: () => globalThis.Symbol,
_1017: x0 => x0.clipboard,
_1018: x0 => x0.maxTouchPoints,
_1019: x0 => x0.vendor,
_1020: x0 => x0.language,
_1021: x0 => x0.platform,
_1022: x0 => x0.userAgent,
_1023: x0 => x0.languages,
_1024: x0 => x0.documentElement,
_1025: (x0,x1) => x0.querySelector(x1),
_1027: (x0,x1) => x0.createElement(x1),
_1029: (x0,x1) => x0.execCommand(x1),
_1030: x0 => x0.currentScript,
_1031: (x0,x1,x2) => x0.createElementNS(x1,x2),
_1032: (x0,x1) => x0.createTextNode(x1),
_1034: (x0,x1) => x0.createEvent(x1),
_1037: x0 => x0.fonts,
_1038: x0 => x0.head,
_1039: x0 => x0.body,
_1040: (x0,x1) => x0.title = x1,
_1043: x0 => x0.activeElement,
_1046: () => globalThis.document,
_1047: (x0,x1,x2) => x0.addEventListener(x1,x2),
_1048: (x0,x1,x2,x3) => x0.addEventListener(x1,x2,x3),
_1049: (x0,x1,x2,x3) => x0.addEventListener(x1,x2,x3),
_1050: (x0,x1,x2) => x0.removeEventListener(x1,x2),
_1052: (x0,x1,x2,x3) => x0.removeEventListener(x1,x2,x3),
_1054: f => finalizeWrapper(f,x0 => dartInstance.exports._1054(f,x0)),
_1055: x0 => x0.target,
_1057: x0 => x0.timeStamp,
_1058: x0 => x0.type,
_1067: (x0,x1,x2,x3) => x0.initEvent(x1,x2,x3),
_1072: x0 => x0.firstChild,
_1075: x0 => x0.lastChild,
_1076: (x0,x1) => x0.appendChild(x1),
_1077: x0 => x0.parentElement,
_1079: x0 => x0.parentNode,
_1082: (x0,x1) => x0.removeChild(x1),
_1083: (x0,x1) => x0.removeChild(x1),
_1084: x0 => x0.isConnected,
_1085: (x0,x1) => x0.textContent = x1,
_1086: (x0,x1) => x0.cloneNode(x1),
_1087: (x0,x1) => x0.contains(x1),
_1092: x0 => x0.children,
_1094: x0 => x0.clientHeight,
_1095: x0 => x0.clientWidth,
_1096: x0 => x0.id,
_1097: (x0,x1) => x0.id = x1,
_1100: (x0,x1) => x0.spellcheck = x1,
_1101: x0 => x0.tagName,
_1102: x0 => x0.style,
_1104: (x0,x1) => x0.append(x1),
_1106: (x0,x1) => x0.getAttribute(x1),
_1108: x0 => x0.getBoundingClientRect(),
_1113: (x0,x1) => x0.querySelectorAll(x1),
_1114: x0 => x0.remove(),
_1116: (x0,x1,x2) => x0.setAttribute(x1,x2),
_1118: (x0,x1) => x0.removeAttribute(x1),
_1119: (x0,x1) => x0.tabIndex = x1,
_1122: x0 => x0.scrollTop,
_1123: (x0,x1) => x0.scrollTop = x1,
_1124: x0 => x0.scrollLeft,
_1125: (x0,x1) => x0.scrollLeft = x1,
_1126: x0 => x0.classList,
_1127: (x0,x1) => x0.className = x1,
_1132: (x0,x1) => x0.getElementsByClassName(x1),
_1133: x0 => x0.click(),
_1136: (x0,x1) => x0.attachShadow(x1),
_1139: (x0,x1) => x0.getPropertyValue(x1),
_1141: (x0,x1,x2,x3) => x0.setProperty(x1,x2,x3),
_1143: (x0,x1) => x0.removeProperty(x1),
_1145: x0 => x0.offsetLeft,
_1146: x0 => x0.offsetTop,
_1147: x0 => x0.offsetParent,
_1149: (x0,x1) => x0.name = x1,
_1150: x0 => x0.content,
_1151: (x0,x1) => x0.content = x1,
_1154: x0 => x0.src,
_1155: (x0,x1) => x0.src = x1,
_1156: x0 => x0.naturalWidth,
_1157: x0 => x0.naturalHeight,
_1160: x0 => x0.decode(),
_1161: (x0,x1) => x0.src = x1,
_1163: x0 => x0.sheet,
_1166: x0 => x0.now(),
_1168: (x0,x1) => x0.width = x1,
_1170: (x0,x1) => x0.height = x1,
_1172: (x0,x1) => x0.toDataURL(x1),
_1173: (x0,x1) => x0.getContext(x1),
_1174: (x0,x1,x2) => x0.getContext(x1,x2),
_1175: (x0,x1) => x0.getParameter(x1),
_1176: x0 => x0.SAMPLES,
_1177: x0 => x0.STENCIL_BITS,
_1179: x0 => x0.fillStyle,
_1180: (x0,x1) => x0.fillStyle = x1,
_1181: x0 => x0.font,
_1182: (x0,x1) => x0.font = x1,
_1184: (x0,x1) => x0.direction = x1,
_1185: (x0,x1) => x0.lineWidth = x1,
_1186: (x0,x1) => x0.strokeStyle = x1,
_1187: x0 => x0.strokeStyle,
_1192: (x0,x1,x2,x3,x4) => x0.createLinearGradient(x1,x2,x3,x4),
_1194: (x0,x1,x2) => x0.createPattern(x1,x2),
_1199: x0 => x0.fill(),
_1200: (x0,x1) => x0.fill(x1),
_1201: (x0,x1,x2,x3,x4) => x0.fillRect(x1,x2,x3,x4),
_1202: (x0,x1,x2,x3) => x0.fillText(x1,x2,x3),
_1207: (x0,x1,x2) => x0.lineTo(x1,x2),
_1209: (x0,x1) => x0.measureText(x1),
_1211: (x0,x1,x2) => x0.moveTo(x1,x2),
_1213: x0 => x0.save(),
_1217: (x0,x1,x2,x3,x4) => x0.rect(x1,x2,x3,x4),
_1219: x0 => x0.restore(),
_1221: (x0,x1,x2,x3,x4,x5,x6) => x0.setTransform(x1,x2,x3,x4,x5,x6),
_1222: (x0,x1,x2,x3,x4,x5,x6) => x0.transform(x1,x2,x3,x4,x5,x6),
_1224: x0 => x0.clip(),
_1226: (x0,x1) => x0.clip(x1),
_1227: (x0,x1,x2) => x0.scale(x1,x2),
_1228: (x0,x1,x2,x3,x4) => x0.clearRect(x1,x2,x3,x4),
_1229: (x0,x1,x2) => x0.translate(x1,x2),
_1230: (x0,x1) => x0.rotate(x1),
_1231: (x0,x1,x2,x3,x4,x5,x6) => x0.bezierCurveTo(x1,x2,x3,x4,x5,x6),
_1232: (x0,x1,x2,x3,x4) => x0.quadraticCurveTo(x1,x2,x3,x4),
_1233: (x0,x1) => x0.globalCompositeOperation = x1,
_1234: (x0,x1) => x0.lineCap = x1,
_1235: (x0,x1) => x0.lineJoin = x1,
_1236: (x0,x1) => x0.shadowBlur = x1,
_1237: (x0,x1,x2,x3,x4,x5,x6) => x0.arc(x1,x2,x3,x4,x5,x6),
_1238: (x0,x1) => x0.filter = x1,
_1239: (x0,x1) => x0.shadowOffsetX = x1,
_1240: (x0,x1) => x0.shadowOffsetY = x1,
_1241: (x0,x1) => x0.shadowColor = x1,
_1243: (x0,x1,x2,x3,x4,x5,x6,x7,x8) => x0.ellipse(x1,x2,x3,x4,x5,x6,x7,x8),
_1245: (x0,x1,x2,x3) => x0.strokeText(x1,x2,x3),
_1246: (x0,x1) => x0.globalAlpha = x1,
_1249: (x0,x1,x2) => x0.addColorStop(x1,x2),
_1250: x0 => x0.status,
_1252: x0 => x0.body,
_1253: x0 => x0.arrayBuffer(),
_1260: x0 => x0.read(),
_1261: x0 => x0.value,
_1262: x0 => x0.done,
_1263: x0 => x0.width,
_1264: x0 => x0.name,
_1265: x0 => x0.x,
_1266: x0 => x0.y,
_1267: x0 => x0.width,
_1268: x0 => x0.height,
_1269: x0 => x0.top,
_1270: x0 => x0.right,
_1271: x0 => x0.bottom,
_1272: x0 => x0.left,
_1274: x0 => x0.load(),
_1283: x0 => x0.height,
_1284: x0 => x0.width,
_1285: (x0,x1) => x0.value = x1,
_1287: (x0,x1) => x0.placeholder = x1,
_1288: (x0,x1) => x0.name = x1,
_1289: x0 => x0.selectionStart,
_1290: x0 => x0.selectionEnd,
_1293: x0 => x0.value,
_1294: (x0,x1,x2) => x0.setSelectionRange(x1,x2),
_1298: x0 => x0.readText(),
_1299: (x0,x1) => x0.writeText(x1),
_1300: x0 => x0.altKey,
_1301: x0 => x0.code,
_1302: x0 => x0.ctrlKey,
_1303: x0 => x0.key,
_1304: x0 => x0.keyCode,
_1305: x0 => x0.location,
_1306: x0 => x0.metaKey,
_1307: x0 => x0.repeat,
_1308: x0 => x0.shiftKey,
_1309: x0 => x0.isComposing,
_1310: (x0,x1) => x0.getModifierState(x1),
_1311: x0 => x0.state,
_1313: (x0,x1) => x0.go(x1),
_1314: (x0,x1,x2,x3) => x0.pushState(x1,x2,x3),
_1315: (x0,x1,x2,x3) => x0.replaceState(x1,x2,x3),
_1316: x0 => x0.pathname,
_1317: x0 => x0.search,
_1318: x0 => x0.hash,
_1321: x0 => x0.state,
_1322: (x0,x1) => x0.createObjectURL(x1),
_1323: (x0,x1) => x0.revokeObjectURL(x1),
_1324: f => finalizeWrapper(f,(x0,x1) => dartInstance.exports._1324(f,x0,x1)),
_1326: (x0,x1,x2) => x0.observe(x1,x2),
_1329: x0 => x0.attributeName,
_1330: x0 => x0.type,
_1331: x0 => x0.matches,
_1334: x0 => x0.matches,
_1335: x0 => x0.clientX,
_1336: x0 => x0.clientY,
_1337: x0 => x0.offsetX,
_1338: x0 => x0.offsetY,
_1341: x0 => x0.button,
_1342: x0 => x0.buttons,
_1343: x0 => x0.ctrlKey,
_1345: (x0,x1) => x0.getModifierState(x1),
_1346: x0 => x0.pointerId,
_1347: x0 => x0.pointerType,
_1348: x0 => x0.pressure,
_1349: x0 => x0.tiltX,
_1350: x0 => x0.tiltY,
_1351: x0 => x0.getCoalescedEvents(),
_1352: x0 => x0.deltaX,
_1353: x0 => x0.deltaY,
_1354: x0 => x0.wheelDeltaX,
_1355: x0 => x0.wheelDeltaY,
_1356: x0 => x0.deltaMode,
_1357: x0 => x0.altKey,
_1358: x0 => x0.ctrlKey,
_1359: x0 => x0.metaKey,
_1360: x0 => x0.shiftKey,
_1361: x0 => x0.changedTouches,
_1362: x0 => x0.identifier,
_1363: x0 => x0.clientX,
_1364: x0 => x0.clientY,
_1365: x0 => x0.data,
_1366: (x0,x1) => x0.type = x1,
_1367: (x0,x1) => x0.max = x1,
_1368: (x0,x1) => x0.min = x1,
_1369: (x0,x1) => x0.value = x1,
_1370: x0 => x0.value,
_1371: x0 => x0.disabled,
_1372: (x0,x1) => x0.disabled = x1,
_1373: (x0,x1) => x0.placeholder = x1,
_1374: (x0,x1) => x0.name = x1,
_1375: (x0,x1) => x0.autocomplete = x1,
_1376: x0 => x0.selectionStart,
_1377: x0 => x0.selectionEnd,
_1380: (x0,x1,x2) => x0.setSelectionRange(x1,x2),
_1387: (x0,x1) => x0.add(x1),
_1392: (x0,x1) => x0.noValidate = x1,
_1393: (x0,x1) => x0.method = x1,
_1394: (x0,x1) => x0.action = x1,
_1397: (x0,x1) => x0.height = x1,
_1398: (x0,x1) => x0.width = x1,
_1400: (x0,x1,x2) => x0.getContext(x1,x2),
_1414: x0 => x0.cssRules,
_1416: (x0,x1,x2) => x0.insertRule(x1,x2),
_1418: x0 => x0.orientation,
_1421: (x0,x1) => x0.lock(x1),
_1437: f => finalizeWrapper(f,(x0,x1) => dartInstance.exports._1437(f,x0,x1)),
_1441: x0 => x0.contentRect,
_1443: (x0,x1,x2) => x0.createPolicy(x1,x2),
_1445: (x0,x1) => x0.createScriptURL(x1),
_1448: x0 => x0.length,
_1450: (x0,x1) => x0.item(x1),
_1451: x0 => x0.length,
_1452: (x0,x1) => x0.item(x1),
_1453: x0 => x0.iterator,
_1454: x0 => x0.Segmenter,
_1455: x0 => x0.v8BreakIterator,
_1457: (x0,x1) => x0.segment(x1),
_1459: x0 => x0.done,
_1460: x0 => x0.value,
_1461: x0 => x0.index,
_1466: (x0,x1) => x0.adoptText(x1),
_1468: x0 => x0.first(),
_1469: x0 => x0.next(),
_1470: x0 => x0.current(),
_1473: () => globalThis.window.FinalizationRegistry,
_1474: (x0,x1,x2) => x0.register(x1,x2),
_1477: x0 => x0.loader,
_1478: () => globalThis._flutter,
_1479: (x0,x1) => x0.didCreateEngineInitializer(x1),
_1480: f => finalizeWrapper(f,(x0,x1) => dartInstance.exports._1480(f,x0,x1)),
_1486: () => globalThis.window.ImageDecoder,
_1487: x0 => x0.tracks,
_1492: x0 => x0.image,
_1499: x0 => x0.displayWidth,
_1500: x0 => x0.displayHeight,
_1501: x0 => x0.duration,
_1504: x0 => x0.ready,
_1505: x0 => x0.selectedTrack,
_1506: x0 => x0.repetitionCount,
_1507: x0 => x0.frameCount,
_1550: f => finalizeWrapper(f,x0 => dartInstance.exports._1550(f,x0)),
_1551: f => finalizeWrapper(f,x0 => dartInstance.exports._1551(f,x0)),
_1567: (x0,x1) => x0.matchMedia(x1),
_1568: x0 => x0.navigator,
_1570: () => globalThis.window,
_1571: x0 => x0.matches,
_1572: x0 => x0.platform
      };

    const baseImports = {
        dart2wasm: dart2wasm,
        Math: Math,
        Date: Date,
        Object: Object,
        Array: Array,
        Reflect: Reflect,
    };
    dartInstance = await WebAssembly.instantiate(await modulePromise, {
        ...baseImports,
        ...(await importObjectPromise),
    });

    return dartInstance;
}

// Call the main function for the instantiated module
// `moduleInstance` is the instantiated dart2wasm module
// `args` are any arguments that should be passed into the main function.
export const invoke = (moduleInstance, ...args) => {
    const dartMain = moduleInstance.exports.$getMain();
    const dartArgs = buildArgsList(args);
    moduleInstance.exports.$invokeMain(dartMain, dartArgs);
}
