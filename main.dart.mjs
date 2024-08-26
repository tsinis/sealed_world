// Returns whether the `js-string` built-in is supported.
function detectJsStringBuiltins() {
    let bytes = [
        0,   97,  115, 109, 1,   0,   0,  0,   1,   4,   1,   96,  0,
        0,   2,   23,  1,   14,  119, 97, 115, 109, 58,  106, 115, 45,
        115, 116, 114, 105, 110, 103, 4,  99,  97,  115, 116, 0,   0
    ];
    return WebAssembly.validate(
        new Uint8Array(bytes), {builtins: ['js-string']});
}

// Compile a dart2wasm-generated Wasm module using
// `WebAssembly.compileStreaming`, with the flags needed by dart2wasm. `source`
// needs to have a type expected by `WebAssembly.compileStreaming`.
//
// Pass the output of this to `instantiate` below to instantiate the compiled
// module.
export const compileStreaming = (source) => {
    return WebAssembly.compileStreaming(
        source,
        detectJsStringBuiltins() ? {builtins: ['js-string']} : {}
    );
}

// Compile a dart2wasm-generated Wasm module using `WebAssembly.compile`, with
// the flags needed by dart2wasm. `source` needs to have a type expected by
// `WebAssembly.compileStreaming`.
//
// Pass the output of this to `instantiate` below to instantiate the compiled
// module.
export const compile = (bytes) => {
    return WebAssembly.compile(
        bytes,
        detectJsStringBuiltins() ? {builtins: ['js-string']} : {}
    );
}

// `modulePromise` is a promise to the `WebAssembly.module` object to be
//   instantiated.
// `importObjectPromise` is a promise to an object that contains any additional
//   imports needed by the module that aren't provided by the standard runtime.
//   The fields on this object will be merged into the importObject with which
//   the module will be instantiated.
// This function returns a promise to the instantiated module.
export const instantiate = async (modulePromise, importObjectPromise) => {
    let dartInstance;

    // Prints to the console
    function printToConsole(value) {
      if (typeof dartPrint == "function") {
        dartPrint(value);
        return;
      }
      if (typeof console == "object" && typeof console.log != "undefined") {
        console.log(value);
        return;
      }
      if (typeof print == "function") {
        print(value);
        return;
      }

      throw "Unable to print message: " + js;
    }

    // Converts a Dart List to a JS array. Any Dart objects will be converted, but
    // this will be cheap for JSValues.
    function arrayFromDartList(constructor, list) {
      const exports = dartInstance.exports;
      const read = exports.$listRead;
      const length = exports.$listLength(list);
      const array = new constructor(length);
      for (let i = 0; i < length; i++) {
        array[i] = read(list, i);
      }
      return array;
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

_1: (x0,x1,x2) => x0.set(x1,x2),
_2: (x0,x1,x2) => x0.set(x1,x2),
_6: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._6(f,arguments.length,x0) }),
_7: x0 => new window.FinalizationRegistry(x0),
_8: (x0,x1,x2,x3) => x0.register(x1,x2,x3),
_9: (x0,x1) => x0.unregister(x1),
_10: (x0,x1,x2) => x0.slice(x1,x2),
_11: (x0,x1) => x0.decode(x1),
_12: (x0,x1) => x0.segment(x1),
_13: () => new TextDecoder(),
_14: x0 => x0.buffer,
_15: x0 => x0.wasmMemory,
_16: () => globalThis.window._flutter_skwasmInstance,
_17: x0 => x0.rasterStartMilliseconds,
_18: x0 => x0.rasterEndMilliseconds,
_19: x0 => x0.imageBitmaps,
_168: x0 => x0.select(),
_169: (x0,x1) => x0.append(x1),
_170: x0 => x0.remove(),
_173: x0 => x0.unlock(),
_178: x0 => x0.getReader(),
_187: x0 => new MutationObserver(x0),
_198: (x0,x1,x2) => x0.addEventListener(x1,x2),
_199: (x0,x1,x2) => x0.removeEventListener(x1,x2),
_202: x0 => new ResizeObserver(x0),
_205: (x0,x1) => new Intl.Segmenter(x0,x1),
_206: x0 => x0.next(),
_207: (x0,x1) => new Intl.v8BreakIterator(x0,x1),
_284: x0 => x0.close(),
_285: (x0,x1,x2,x3,x4) => ({type: x0,data: x1,premultiplyAlpha: x2,colorSpaceConversion: x3,preferAnimation: x4}),
_286: x0 => new window.ImageDecoder(x0),
_287: x0 => x0.close(),
_288: x0 => ({frameIndex: x0}),
_289: (x0,x1) => x0.decode(x1),
_292: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._292(f,arguments.length,x0) }),
_293: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._293(f,arguments.length,x0) }),
_294: (x0,x1) => ({addView: x0,removeView: x1}),
_295: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._295(f,arguments.length,x0) }),
_296: f => finalizeWrapper(f, function() { return dartInstance.exports._296(f,arguments.length) }),
_297: (x0,x1) => ({initializeEngine: x0,autoStart: x1}),
_298: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._298(f,arguments.length,x0) }),
_299: x0 => ({runApp: x0}),
_300: x0 => new Uint8Array(x0),
_302: x0 => x0.preventDefault(),
_303: x0 => x0.stopPropagation(),
_304: (x0,x1) => x0.addListener(x1),
_305: (x0,x1) => x0.removeListener(x1),
_306: (x0,x1) => x0.prepend(x1),
_307: x0 => x0.remove(),
_308: x0 => x0.disconnect(),
_309: (x0,x1) => x0.addListener(x1),
_310: (x0,x1) => x0.removeListener(x1),
_312: (x0,x1) => x0.append(x1),
_313: x0 => x0.remove(),
_314: x0 => x0.stopPropagation(),
_318: x0 => x0.preventDefault(),
_319: (x0,x1) => x0.append(x1),
_320: x0 => x0.remove(),
_321: x0 => x0.preventDefault(),
_326: (x0,x1) => x0.removeChild(x1),
_327: (x0,x1) => x0.appendChild(x1),
_328: (x0,x1,x2) => x0.insertBefore(x1,x2),
_329: (x0,x1) => x0.appendChild(x1),
_330: (x0,x1) => x0.transferFromImageBitmap(x1),
_332: (x0,x1) => x0.append(x1),
_333: (x0,x1) => x0.append(x1),
_334: (x0,x1) => x0.append(x1),
_335: x0 => x0.remove(),
_336: x0 => x0.remove(),
_337: x0 => x0.remove(),
_338: (x0,x1) => x0.appendChild(x1),
_339: (x0,x1) => x0.appendChild(x1),
_340: x0 => x0.remove(),
_341: (x0,x1) => x0.append(x1),
_342: (x0,x1) => x0.append(x1),
_343: x0 => x0.remove(),
_344: (x0,x1) => x0.append(x1),
_345: (x0,x1) => x0.append(x1),
_346: (x0,x1,x2) => x0.insertBefore(x1,x2),
_347: (x0,x1) => x0.append(x1),
_348: (x0,x1,x2) => x0.insertBefore(x1,x2),
_349: x0 => x0.remove(),
_350: x0 => x0.remove(),
_351: (x0,x1) => x0.append(x1),
_352: x0 => x0.remove(),
_353: (x0,x1) => x0.append(x1),
_354: x0 => x0.remove(),
_355: x0 => x0.remove(),
_356: x0 => x0.getBoundingClientRect(),
_357: x0 => x0.remove(),
_370: (x0,x1) => x0.append(x1),
_371: x0 => x0.remove(),
_372: (x0,x1) => x0.append(x1),
_373: (x0,x1,x2) => x0.insertBefore(x1,x2),
_374: x0 => x0.preventDefault(),
_375: x0 => x0.preventDefault(),
_376: x0 => x0.preventDefault(),
_377: x0 => x0.preventDefault(),
_378: x0 => x0.remove(),
_379: (x0,x1) => x0.observe(x1),
_380: x0 => x0.disconnect(),
_381: (x0,x1) => x0.appendChild(x1),
_382: (x0,x1) => x0.appendChild(x1),
_383: (x0,x1) => x0.appendChild(x1),
_384: (x0,x1) => x0.append(x1),
_385: x0 => x0.remove(),
_386: (x0,x1) => x0.append(x1),
_388: (x0,x1) => x0.appendChild(x1),
_389: (x0,x1) => x0.append(x1),
_390: x0 => x0.remove(),
_391: (x0,x1) => x0.append(x1),
_395: (x0,x1) => x0.appendChild(x1),
_396: x0 => x0.remove(),
_949: () => globalThis.window.flutterConfiguration,
_950: x0 => x0.assetBase,
_955: x0 => x0.debugShowSemanticsNodes,
_956: x0 => x0.hostElement,
_957: x0 => x0.multiViewEnabled,
_958: x0 => x0.nonce,
_960: x0 => x0.fontFallbackBaseUrl,
_961: x0 => x0.useColorEmoji,
_966: x0 => x0.console,
_967: x0 => x0.devicePixelRatio,
_968: x0 => x0.document,
_969: x0 => x0.history,
_970: x0 => x0.innerHeight,
_971: x0 => x0.innerWidth,
_972: x0 => x0.location,
_973: x0 => x0.navigator,
_974: x0 => x0.visualViewport,
_975: x0 => x0.performance,
_978: (x0,x1) => x0.dispatchEvent(x1),
_980: (x0,x1) => x0.matchMedia(x1),
_982: (x0,x1) => x0.getComputedStyle(x1),
_983: x0 => x0.screen,
_984: (x0,x1) => x0.requestAnimationFrame(x1),
_985: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._985(f,arguments.length,x0) }),
_989: (x0,x1) => x0.warn(x1),
_993: () => globalThis.window,
_994: () => globalThis.Intl,
_995: () => globalThis.Symbol,
_998: x0 => x0.clipboard,
_999: x0 => x0.maxTouchPoints,
_1000: x0 => x0.vendor,
_1001: x0 => x0.language,
_1002: x0 => x0.platform,
_1003: x0 => x0.userAgent,
_1004: x0 => x0.languages,
_1005: x0 => x0.documentElement,
_1006: (x0,x1) => x0.querySelector(x1),
_1009: (x0,x1) => x0.createElement(x1),
_1010: (x0,x1) => x0.execCommand(x1),
_1013: (x0,x1) => x0.createTextNode(x1),
_1014: (x0,x1) => x0.createEvent(x1),
_1018: x0 => x0.head,
_1019: x0 => x0.body,
_1020: (x0,x1) => x0.title = x1,
_1023: x0 => x0.activeElement,
_1025: x0 => x0.visibilityState,
_1026: () => globalThis.document,
_1027: (x0,x1,x2,x3) => x0.addEventListener(x1,x2,x3),
_1029: (x0,x1,x2,x3) => x0.addEventListener(x1,x2,x3),
_1032: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._1032(f,arguments.length,x0) }),
_1033: x0 => x0.target,
_1035: x0 => x0.timeStamp,
_1036: x0 => x0.type,
_1038: x0 => x0.preventDefault(),
_1040: (x0,x1,x2,x3) => x0.initEvent(x1,x2,x3),
_1047: x0 => x0.firstChild,
_1052: x0 => x0.parentElement,
_1054: x0 => x0.parentNode,
_1057: (x0,x1) => x0.removeChild(x1),
_1058: (x0,x1) => x0.removeChild(x1),
_1059: x0 => x0.isConnected,
_1060: (x0,x1) => x0.textContent = x1,
_1062: (x0,x1) => x0.contains(x1),
_1067: x0 => x0.firstElementChild,
_1069: x0 => x0.nextElementSibling,
_1070: x0 => x0.clientHeight,
_1071: x0 => x0.clientWidth,
_1072: x0 => x0.offsetHeight,
_1073: x0 => x0.offsetWidth,
_1074: x0 => x0.id,
_1075: (x0,x1) => x0.id = x1,
_1078: (x0,x1) => x0.spellcheck = x1,
_1079: x0 => x0.tagName,
_1080: x0 => x0.style,
_1081: (x0,x1) => x0.append(x1),
_1082: (x0,x1) => x0.getAttribute(x1),
_1083: x0 => x0.getBoundingClientRect(),
_1087: (x0,x1) => x0.closest(x1),
_1089: (x0,x1) => x0.querySelectorAll(x1),
_1091: x0 => x0.remove(),
_1093: (x0,x1,x2) => x0.setAttribute(x1,x2),
_1094: (x0,x1) => x0.removeAttribute(x1),
_1095: (x0,x1) => x0.tabIndex = x1,
_1097: (x0,x1) => x0.focus(x1),
_1098: x0 => x0.scrollTop,
_1099: (x0,x1) => x0.scrollTop = x1,
_1100: x0 => x0.scrollLeft,
_1101: (x0,x1) => x0.scrollLeft = x1,
_1102: x0 => x0.classList,
_1103: (x0,x1) => x0.className = x1,
_1108: (x0,x1) => x0.getElementsByClassName(x1),
_1110: x0 => x0.click(),
_1112: (x0,x1) => x0.hasAttribute(x1),
_1114: (x0,x1) => x0.attachShadow(x1),
_1119: (x0,x1) => x0.getPropertyValue(x1),
_1121: (x0,x1,x2,x3) => x0.setProperty(x1,x2,x3),
_1123: (x0,x1) => x0.removeProperty(x1),
_1125: x0 => x0.offsetLeft,
_1126: x0 => x0.offsetTop,
_1127: x0 => x0.offsetParent,
_1129: (x0,x1) => x0.name = x1,
_1130: x0 => x0.content,
_1131: (x0,x1) => x0.content = x1,
_1145: (x0,x1) => x0.nonce = x1,
_1150: x0 => x0.now(),
_1152: (x0,x1) => x0.width = x1,
_1154: (x0,x1) => x0.height = x1,
_1158: (x0,x1) => x0.getContext(x1),
_1232: (x0,x1) => x0.fetch(x1),
_1233: x0 => x0.status,
_1235: x0 => x0.body,
_1236: x0 => x0.arrayBuffer(),
_1242: x0 => x0.read(),
_1243: x0 => x0.value,
_1244: x0 => x0.done,
_1246: x0 => x0.name,
_1247: x0 => x0.x,
_1248: x0 => x0.y,
_1251: x0 => x0.top,
_1252: x0 => x0.right,
_1253: x0 => x0.bottom,
_1254: x0 => x0.left,
_1264: x0 => x0.height,
_1265: x0 => x0.width,
_1266: (x0,x1) => x0.value = x1,
_1268: (x0,x1) => x0.placeholder = x1,
_1269: (x0,x1) => x0.name = x1,
_1270: x0 => x0.selectionDirection,
_1271: x0 => x0.selectionStart,
_1272: x0 => x0.selectionEnd,
_1275: x0 => x0.value,
_1277: (x0,x1,x2) => x0.setSelectionRange(x1,x2),
_1280: x0 => x0.readText(),
_1281: (x0,x1) => x0.writeText(x1),
_1282: x0 => x0.altKey,
_1283: x0 => x0.code,
_1284: x0 => x0.ctrlKey,
_1285: x0 => x0.key,
_1286: x0 => x0.keyCode,
_1287: x0 => x0.location,
_1288: x0 => x0.metaKey,
_1289: x0 => x0.repeat,
_1290: x0 => x0.shiftKey,
_1291: x0 => x0.isComposing,
_1293: (x0,x1) => x0.getModifierState(x1),
_1295: x0 => x0.state,
_1296: (x0,x1) => x0.go(x1),
_1298: (x0,x1,x2,x3) => x0.pushState(x1,x2,x3),
_1299: (x0,x1,x2,x3) => x0.replaceState(x1,x2,x3),
_1300: x0 => x0.pathname,
_1301: x0 => x0.search,
_1302: x0 => x0.hash,
_1306: x0 => x0.state,
_1312: f => finalizeWrapper(f, function(x0,x1) { return dartInstance.exports._1312(f,arguments.length,x0,x1) }),
_1314: (x0,x1,x2) => x0.observe(x1,x2),
_1317: x0 => x0.attributeName,
_1318: x0 => x0.type,
_1319: x0 => x0.matches,
_1322: x0 => x0.matches,
_1324: x0 => x0.relatedTarget,
_1325: x0 => x0.clientX,
_1326: x0 => x0.clientY,
_1327: x0 => x0.offsetX,
_1328: x0 => x0.offsetY,
_1331: x0 => x0.button,
_1332: x0 => x0.buttons,
_1333: x0 => x0.ctrlKey,
_1334: (x0,x1) => x0.getModifierState(x1),
_1337: x0 => x0.pointerId,
_1338: x0 => x0.pointerType,
_1339: x0 => x0.pressure,
_1340: x0 => x0.tiltX,
_1341: x0 => x0.tiltY,
_1342: x0 => x0.getCoalescedEvents(),
_1344: x0 => x0.deltaX,
_1345: x0 => x0.deltaY,
_1346: x0 => x0.wheelDeltaX,
_1347: x0 => x0.wheelDeltaY,
_1348: x0 => x0.deltaMode,
_1354: x0 => x0.changedTouches,
_1356: x0 => x0.clientX,
_1357: x0 => x0.clientY,
_1359: x0 => x0.data,
_1362: (x0,x1) => x0.disabled = x1,
_1363: (x0,x1) => x0.type = x1,
_1364: (x0,x1) => x0.max = x1,
_1365: (x0,x1) => x0.min = x1,
_1366: (x0,x1) => x0.value = x1,
_1367: x0 => x0.value,
_1368: x0 => x0.disabled,
_1369: (x0,x1) => x0.disabled = x1,
_1370: (x0,x1) => x0.placeholder = x1,
_1371: (x0,x1) => x0.name = x1,
_1372: (x0,x1) => x0.autocomplete = x1,
_1373: x0 => x0.selectionDirection,
_1374: x0 => x0.selectionStart,
_1375: x0 => x0.selectionEnd,
_1379: (x0,x1,x2) => x0.setSelectionRange(x1,x2),
_1385: (x0,x1) => x0.add(x1),
_1388: (x0,x1) => x0.noValidate = x1,
_1389: (x0,x1) => x0.method = x1,
_1390: (x0,x1) => x0.action = x1,
_1415: x0 => x0.orientation,
_1416: x0 => x0.width,
_1417: x0 => x0.height,
_1418: (x0,x1) => x0.lock(x1),
_1434: f => finalizeWrapper(f, function(x0,x1) { return dartInstance.exports._1434(f,arguments.length,x0,x1) }),
_1445: x0 => x0.length,
_1447: (x0,x1) => x0.item(x1),
_1448: x0 => x0.length,
_1449: (x0,x1) => x0.item(x1),
_1450: x0 => x0.iterator,
_1451: x0 => x0.Segmenter,
_1452: x0 => x0.v8BreakIterator,
_1455: x0 => x0.done,
_1456: x0 => x0.value,
_1457: x0 => x0.index,
_1461: (x0,x1) => x0.adoptText(x1),
_1462: x0 => x0.first(),
_1463: x0 => x0.next(),
_1464: x0 => x0.current(),
_1475: x0 => x0.hostElement,
_1476: x0 => x0.viewConstraints,
_1478: x0 => x0.maxHeight,
_1479: x0 => x0.maxWidth,
_1480: x0 => x0.minHeight,
_1481: x0 => x0.minWidth,
_1482: x0 => x0.loader,
_1483: () => globalThis._flutter,
_1484: (x0,x1) => x0.didCreateEngineInitializer(x1),
_1485: (x0,x1,x2) => x0.call(x1,x2),
_1486: () => globalThis.Promise,
_1487: f => finalizeWrapper(f, function(x0,x1) { return dartInstance.exports._1487(f,arguments.length,x0,x1) }),
_1491: x0 => x0.length,
_1494: x0 => x0.tracks,
_1498: x0 => x0.image,
_1503: x0 => x0.codedWidth,
_1504: x0 => x0.codedHeight,
_1507: x0 => x0.duration,
_1511: x0 => x0.ready,
_1512: x0 => x0.selectedTrack,
_1513: x0 => x0.repetitionCount,
_1514: x0 => x0.frameCount,
_1585: x0 => new Array(x0),
_1586: x0 => x0.length,
_1588: (x0,x1) => x0[x1],
_1589: (x0,x1,x2) => x0[x1] = x2,
_1592: (x0,x1,x2) => new DataView(x0,x1,x2),
_1595: x0 => new Int8Array(x0),
_1596: (x0,x1,x2) => new Uint8Array(x0,x1,x2),
_1597: x0 => new Uint8Array(x0),
_1605: x0 => new Int32Array(x0),
_1609: x0 => new Float32Array(x0),
_1611: x0 => new Float64Array(x0),
_1644: (decoder, codeUnits) => decoder.decode(codeUnits),
_1645: () => new TextDecoder("utf-8", {fatal: true}),
_1646: () => new TextDecoder("utf-8", {fatal: false}),
_1647: x0 => new WeakRef(x0),
_1648: x0 => x0.deref(),
_1654: Date.now,
_1656: s => new Date(s * 1000).getTimezoneOffset() * 60 ,
_1657: s => {
      if (!/^\s*[+-]?(?:Infinity|NaN|(?:\.\d+|\d+(?:\.\d*)?)(?:[eE][+-]?\d+)?)\s*$/.test(s)) {
        return NaN;
      }
      return parseFloat(s);
    },
_1658: () => {
          let stackString = new Error().stack.toString();
          let frames = stackString.split('\n');
          let drop = 2;
          if (frames[0] === 'Error') {
              drop += 1;
          }
          return frames.slice(drop).join('\n');
        },
_1659: () => typeof dartUseDateNowForTicks !== "undefined",
_1660: () => 1000 * performance.now(),
_1661: () => Date.now(),
_1664: () => new WeakMap(),
_1665: (map, o) => map.get(o),
_1666: (map, o, v) => map.set(o, v),
_1667: () => globalThis.WeakRef,
_1677: s => JSON.stringify(s),
_1678: s => printToConsole(s),
_1679: a => a.join(''),
_1682: (s, t) => s.split(t),
_1683: s => s.toLowerCase(),
_1684: s => s.toUpperCase(),
_1685: s => s.trim(),
_1686: s => s.trimLeft(),
_1687: s => s.trimRight(),
_1689: (s, p, i) => s.indexOf(p, i),
_1690: (s, p, i) => s.lastIndexOf(p, i),
_1692: Object.is,
_1693: s => s.toUpperCase(),
_1694: s => s.toLowerCase(),
_1695: (a, i) => a.push(i),
_1699: a => a.pop(),
_1700: (a, i) => a.splice(i, 1),
_1702: (a, s) => a.join(s),
_1706: a => a.length,
_1708: (a, i) => a[i],
_1709: (a, i, v) => a[i] = v,
_1712: (o, start, length) => new Uint8Array(o.buffer, o.byteOffset + start, length),
_1713: (o, start, length) => new Int8Array(o.buffer, o.byteOffset + start, length),
_1714: (o, start, length) => new Uint8ClampedArray(o.buffer, o.byteOffset + start, length),
_1715: (o, start, length) => new Uint16Array(o.buffer, o.byteOffset + start, length),
_1716: (o, start, length) => new Int16Array(o.buffer, o.byteOffset + start, length),
_1717: (o, start, length) => new Uint32Array(o.buffer, o.byteOffset + start, length),
_1718: (o, start, length) => new Int32Array(o.buffer, o.byteOffset + start, length),
_1720: (o, start, length) => new BigInt64Array(o.buffer, o.byteOffset + start, length),
_1721: (o, start, length) => new Float32Array(o.buffer, o.byteOffset + start, length),
_1722: (o, start, length) => new Float64Array(o.buffer, o.byteOffset + start, length),
_1723: (t, s) => t.set(s),
_1725: (o) => new DataView(o.buffer, o.byteOffset, o.byteLength),
_1727: o => o.buffer,
_1728: o => o.byteOffset,
_1729: Function.prototype.call.bind(Object.getOwnPropertyDescriptor(DataView.prototype, 'byteLength').get),
_1730: (b, o) => new DataView(b, o),
_1731: (b, o, l) => new DataView(b, o, l),
_1732: Function.prototype.call.bind(DataView.prototype.getUint8),
_1733: Function.prototype.call.bind(DataView.prototype.setUint8),
_1734: Function.prototype.call.bind(DataView.prototype.getInt8),
_1735: Function.prototype.call.bind(DataView.prototype.setInt8),
_1736: Function.prototype.call.bind(DataView.prototype.getUint16),
_1737: Function.prototype.call.bind(DataView.prototype.setUint16),
_1738: Function.prototype.call.bind(DataView.prototype.getInt16),
_1739: Function.prototype.call.bind(DataView.prototype.setInt16),
_1740: Function.prototype.call.bind(DataView.prototype.getUint32),
_1741: Function.prototype.call.bind(DataView.prototype.setUint32),
_1742: Function.prototype.call.bind(DataView.prototype.getInt32),
_1743: Function.prototype.call.bind(DataView.prototype.setInt32),
_1746: Function.prototype.call.bind(DataView.prototype.getBigInt64),
_1747: Function.prototype.call.bind(DataView.prototype.setBigInt64),
_1748: Function.prototype.call.bind(DataView.prototype.getFloat32),
_1749: Function.prototype.call.bind(DataView.prototype.setFloat32),
_1750: Function.prototype.call.bind(DataView.prototype.getFloat64),
_1751: Function.prototype.call.bind(DataView.prototype.setFloat64),
_1769: (o, t) => o instanceof t,
_1771: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._1771(f,arguments.length,x0) }),
_1772: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._1772(f,arguments.length,x0) }),
_1773: o => Object.keys(o),
_1774: (ms, c) =>
              setTimeout(() => dartInstance.exports.$invokeCallback(c),ms),
_1775: (handle) => clearTimeout(handle),
_1776: (ms, c) =>
          setInterval(() => dartInstance.exports.$invokeCallback(c), ms),
_1777: (handle) => clearInterval(handle),
_1778: (c) =>
              queueMicrotask(() => dartInstance.exports.$invokeCallback(c)),
_1779: () => Date.now(),
_1780: (s, m) => {
          try {
            return new RegExp(s, m);
          } catch (e) {
            return String(e);
          }
        },
_1781: (x0,x1) => x0.exec(x1),
_1782: (x0,x1) => x0.test(x1),
_1783: (x0,x1) => x0.exec(x1),
_1784: (x0,x1) => x0.exec(x1),
_1785: x0 => x0.pop(),
_1787: o => o === undefined,
_1806: o => typeof o === 'function' && o[jsWrappedDartFunctionSymbol] === true,
_1808: o => {
            const proto = Object.getPrototypeOf(o);
            return proto === Object.prototype || proto === null;
          },
_1809: o => o instanceof RegExp,
_1810: (l, r) => l === r,
_1811: o => o,
_1812: o => o,
_1813: o => o,
_1814: b => !!b,
_1815: o => o.length,
_1818: (o, i) => o[i],
_1819: f => f.dartFunction,
_1820: l => arrayFromDartList(Int8Array, l),
_1821: l => arrayFromDartList(Uint8Array, l),
_1822: l => arrayFromDartList(Uint8ClampedArray, l),
_1823: l => arrayFromDartList(Int16Array, l),
_1824: l => arrayFromDartList(Uint16Array, l),
_1825: l => arrayFromDartList(Int32Array, l),
_1826: l => arrayFromDartList(Uint32Array, l),
_1827: l => arrayFromDartList(Float32Array, l),
_1828: l => arrayFromDartList(Float64Array, l),
_1829: x0 => new ArrayBuffer(x0),
_1830: (data, length) => {
          const getByte = dartInstance.exports.$byteDataGetUint8;
          const view = new DataView(new ArrayBuffer(length));
          for (let i = 0; i < length; i++) {
            view.setUint8(i, getByte(data, i));
          }
          return view;
        },
_1831: l => arrayFromDartList(Array, l),
_1832:       (s, length) => {
        if (length == 0) return '';

        const read = dartInstance.exports.$stringRead1;
        let result = '';
        let index = 0;
        const chunkLength = Math.min(length - index, 500);
        let array = new Array(chunkLength);
        while (index < length) {
          const newChunkLength = Math.min(length - index, 500);
          for (let i = 0; i < newChunkLength; i++) {
            array[i] = read(s, index++);
          }
          if (newChunkLength < chunkLength) {
            array = array.slice(0, newChunkLength);
          }
          result += String.fromCharCode(...array);
        }
        return result;
      }
      ,
_1833:     (s, length) => {
      if (length == 0) return '';

      const read = dartInstance.exports.$stringRead2;
      let result = '';
      let index = 0;
      const chunkLength = Math.min(length - index, 500);
      let array = new Array(chunkLength);
      while (index < length) {
        const newChunkLength = Math.min(length - index, 500);
        for (let i = 0; i < newChunkLength; i++) {
          array[i] = read(s, index++);
        }
        if (newChunkLength < chunkLength) {
          array = array.slice(0, newChunkLength);
        }
        result += String.fromCharCode(...array);
      }
      return result;
    }
    ,
_1834:     (s) => {
      let length = s.length;
      let range = 0;
      for (let i = 0; i < length; i++) {
        range |= s.codePointAt(i);
      }
      const exports = dartInstance.exports;
      if (range < 256) {
        if (length <= 10) {
          if (length == 1) {
            return exports.$stringAllocate1_1(s.codePointAt(0));
          }
          if (length == 2) {
            return exports.$stringAllocate1_2(s.codePointAt(0), s.codePointAt(1));
          }
          if (length == 3) {
            return exports.$stringAllocate1_3(s.codePointAt(0), s.codePointAt(1), s.codePointAt(2));
          }
          if (length == 4) {
            return exports.$stringAllocate1_4(s.codePointAt(0), s.codePointAt(1), s.codePointAt(2), s.codePointAt(3));
          }
          if (length == 5) {
            return exports.$stringAllocate1_5(s.codePointAt(0), s.codePointAt(1), s.codePointAt(2), s.codePointAt(3), s.codePointAt(4));
          }
          if (length == 6) {
            return exports.$stringAllocate1_6(s.codePointAt(0), s.codePointAt(1), s.codePointAt(2), s.codePointAt(3), s.codePointAt(4), s.codePointAt(5));
          }
          if (length == 7) {
            return exports.$stringAllocate1_7(s.codePointAt(0), s.codePointAt(1), s.codePointAt(2), s.codePointAt(3), s.codePointAt(4), s.codePointAt(5), s.codePointAt(6));
          }
          if (length == 8) {
            return exports.$stringAllocate1_8(s.codePointAt(0), s.codePointAt(1), s.codePointAt(2), s.codePointAt(3), s.codePointAt(4), s.codePointAt(5), s.codePointAt(6), s.codePointAt(7));
          }
          if (length == 9) {
            return exports.$stringAllocate1_9(s.codePointAt(0), s.codePointAt(1), s.codePointAt(2), s.codePointAt(3), s.codePointAt(4), s.codePointAt(5), s.codePointAt(6), s.codePointAt(7), s.codePointAt(8));
          }
          if (length == 10) {
            return exports.$stringAllocate1_10(s.codePointAt(0), s.codePointAt(1), s.codePointAt(2), s.codePointAt(3), s.codePointAt(4), s.codePointAt(5), s.codePointAt(6), s.codePointAt(7), s.codePointAt(8), s.codePointAt(9));
          }
        }
        const dartString = exports.$stringAllocate1(length);
        const write = exports.$stringWrite1;
        for (let i = 0; i < length; i++) {
          write(dartString, i, s.codePointAt(i));
        }
        return dartString;
      } else {
        const dartString = exports.$stringAllocate2(length);
        const write = exports.$stringWrite2;
        for (let i = 0; i < length; i++) {
          write(dartString, i, s.charCodeAt(i));
        }
        return dartString;
      }
    }
    ,
_1835: () => ({}),
_1836: () => [],
_1837: l => new Array(l),
_1838: () => globalThis,
_1839: (constructor, args) => {
      const factoryFunction = constructor.bind.apply(
          constructor, [null, ...args]);
      return new factoryFunction();
    },
_1840: (o, p) => p in o,
_1841: (o, p) => o[p],
_1842: (o, p, v) => o[p] = v,
_1843: (o, m, a) => o[m].apply(o, a),
_1845: o => String(o),
_1846: (p, s, f) => p.then(s, f),
_1847:   o => {
    if (o === undefined) return 1;
    var type = typeof o;
    if (type === 'boolean') return 2;
    if (type === 'number') return 3;
    if (type === 'string') return 4;
    if (o instanceof Array) return 5;
    if (ArrayBuffer.isView(o)) {
      if (o instanceof Int8Array) return 6;
      if (o instanceof Uint8Array) return 7;
      if (o instanceof Uint8ClampedArray) return 8;
      if (o instanceof Int16Array) return 9;
      if (o instanceof Uint16Array) return 10;
      if (o instanceof Int32Array) return 11;
      if (o instanceof Uint32Array) return 12;
      if (o instanceof Float32Array) return 13;
      if (o instanceof Float64Array) return 14;
      if (o instanceof DataView) return 15;
    }
    if (o instanceof ArrayBuffer) return 16;
    return 17;
  }
  ,
_1848: (jsArray, jsArrayOffset, wasmArray, wasmArrayOffset, length) => {
          const getByte = dartInstance.exports.$wasmI8ArrayGet;
          for (let i = 0; i < length; i++) {
            jsArray[jsArrayOffset + i] = getByte(wasmArray, wasmArrayOffset + i);
          }
        },
_1850: (jsArray, jsArrayOffset, wasmArray, wasmArrayOffset, length) => {
          const getByte = dartInstance.exports.$wasmI32ArrayGet;
          for (let i = 0; i < length; i++) {
            jsArray[jsArrayOffset + i] = getByte(wasmArray, wasmArrayOffset + i);
          }
        },
_1851: (jsArray, jsArrayOffset, wasmArray, wasmArrayOffset, length) => {
          const getByte = dartInstance.exports.$wasmF32ArrayGet;
          for (let i = 0; i < length; i++) {
            jsArray[jsArrayOffset + i] = getByte(wasmArray, wasmArrayOffset + i);
          }
        },
_1852: (jsArray, jsArrayOffset, wasmArray, wasmArrayOffset, length) => {
          const getByte = dartInstance.exports.$wasmF64ArrayGet;
          for (let i = 0; i < length; i++) {
            jsArray[jsArrayOffset + i] = getByte(wasmArray, wasmArrayOffset + i);
          }
        },
_1853: s => {
      if (/[[\]{}()*+?.\\^$|]/.test(s)) {
          s = s.replace(/[[\]{}()*+?.\\^$|]/g, '\\$&');
      }
      return s;
    },
_1856: x0 => x0.index,
_1861: x0 => x0.flags,
_1862: x0 => x0.multiline,
_1863: x0 => x0.ignoreCase,
_1864: x0 => x0.unicode,
_1865: x0 => x0.dotAll,
_1866: (x0,x1) => x0.lastIndex = x1,
_1871: v => v.toString(),
_1872: (d, digits) => d.toFixed(digits)
    };

    const baseImports = {
        dart2wasm: dart2wasm,


        Math: Math,
        Date: Date,
        Object: Object,
        Array: Array,
        Reflect: Reflect,
    };

    const jsStringPolyfill = {
        "charCodeAt": (s, i) => s.charCodeAt(i),
        "compare": (s1, s2) => {
            if (s1 < s2) return -1;
            if (s1 > s2) return 1;
            return 0;
        },
        "concat": (s1, s2) => s1 + s2,
        "equals": (s1, s2) => s1 === s2,
        "fromCharCode": (i) => String.fromCharCode(i),
        "length": (s) => s.length,
        "substring": (s, a, b) => s.substring(a, b),
    };

    dartInstance = await WebAssembly.instantiate(await modulePromise, {
        ...baseImports,
        ...(await importObjectPromise),
        "wasm:js-string": jsStringPolyfill,
    });

    return dartInstance;
}

// Call the main function for the instantiated module
// `moduleInstance` is the instantiated dart2wasm module
// `args` are any arguments that should be passed into the main function.
export const invoke = (moduleInstance, ...args) => {
  moduleInstance.exports.$invokeMain(args);
}

