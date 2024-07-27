
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
_326: (x0,x1) => x0.appendChild(x1),
_327: (x0,x1,x2) => x0.insertBefore(x1,x2),
_328: (x0,x1) => x0.removeChild(x1),
_329: (x0,x1) => x0.appendChild(x1),
_330: (x0,x1) => x0.transferFromImageBitmap(x1),
_331: (x0,x1) => x0.append(x1),
_332: (x0,x1) => x0.append(x1),
_333: (x0,x1) => x0.append(x1),
_334: x0 => x0.remove(),
_335: x0 => x0.remove(),
_336: x0 => x0.remove(),
_337: (x0,x1) => x0.appendChild(x1),
_338: (x0,x1) => x0.appendChild(x1),
_339: x0 => x0.remove(),
_340: (x0,x1) => x0.append(x1),
_341: (x0,x1) => x0.append(x1),
_342: x0 => x0.remove(),
_343: (x0,x1) => x0.append(x1),
_344: (x0,x1) => x0.append(x1),
_345: (x0,x1,x2) => x0.insertBefore(x1,x2),
_346: (x0,x1) => x0.append(x1),
_347: (x0,x1,x2) => x0.insertBefore(x1,x2),
_348: x0 => x0.remove(),
_349: x0 => x0.remove(),
_350: (x0,x1) => x0.append(x1),
_351: x0 => x0.remove(),
_352: (x0,x1) => x0.append(x1),
_353: x0 => x0.remove(),
_354: x0 => x0.remove(),
_355: x0 => x0.getBoundingClientRect(),
_356: x0 => x0.remove(),
_369: (x0,x1) => x0.append(x1),
_370: x0 => x0.remove(),
_371: (x0,x1) => x0.append(x1),
_372: (x0,x1,x2) => x0.insertBefore(x1,x2),
_373: x0 => x0.preventDefault(),
_374: x0 => x0.preventDefault(),
_375: x0 => x0.preventDefault(),
_376: x0 => x0.preventDefault(),
_377: x0 => x0.remove(),
_378: (x0,x1) => x0.observe(x1),
_379: x0 => x0.disconnect(),
_380: (x0,x1) => x0.appendChild(x1),
_381: (x0,x1) => x0.appendChild(x1),
_382: (x0,x1) => x0.appendChild(x1),
_383: (x0,x1) => x0.append(x1),
_384: x0 => x0.remove(),
_385: (x0,x1) => x0.append(x1),
_387: (x0,x1) => x0.appendChild(x1),
_388: (x0,x1) => x0.append(x1),
_389: x0 => x0.remove(),
_390: (x0,x1) => x0.append(x1),
_394: (x0,x1) => x0.appendChild(x1),
_395: x0 => x0.remove(),
_948: () => globalThis.window.flutterConfiguration,
_949: x0 => x0.assetBase,
_954: x0 => x0.debugShowSemanticsNodes,
_955: x0 => x0.hostElement,
_956: x0 => x0.multiViewEnabled,
_957: x0 => x0.nonce,
_959: x0 => x0.fontFallbackBaseUrl,
_960: x0 => x0.useColorEmoji,
_965: x0 => x0.console,
_966: x0 => x0.devicePixelRatio,
_967: x0 => x0.document,
_968: x0 => x0.history,
_969: x0 => x0.innerHeight,
_970: x0 => x0.innerWidth,
_971: x0 => x0.location,
_972: x0 => x0.navigator,
_973: x0 => x0.visualViewport,
_974: x0 => x0.performance,
_977: (x0,x1) => x0.dispatchEvent(x1),
_979: (x0,x1) => x0.matchMedia(x1),
_981: (x0,x1) => x0.getComputedStyle(x1),
_982: x0 => x0.screen,
_983: (x0,x1) => x0.requestAnimationFrame(x1),
_984: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._984(f,arguments.length,x0) }),
_988: (x0,x1) => x0.warn(x1),
_992: () => globalThis.window,
_993: () => globalThis.Intl,
_994: () => globalThis.Symbol,
_997: x0 => x0.clipboard,
_998: x0 => x0.maxTouchPoints,
_999: x0 => x0.vendor,
_1000: x0 => x0.language,
_1001: x0 => x0.platform,
_1002: x0 => x0.userAgent,
_1003: x0 => x0.languages,
_1004: x0 => x0.documentElement,
_1005: (x0,x1) => x0.querySelector(x1),
_1008: (x0,x1) => x0.createElement(x1),
_1009: (x0,x1) => x0.execCommand(x1),
_1012: (x0,x1) => x0.createTextNode(x1),
_1013: (x0,x1) => x0.createEvent(x1),
_1017: x0 => x0.head,
_1018: x0 => x0.body,
_1019: (x0,x1) => x0.title = x1,
_1022: x0 => x0.activeElement,
_1024: x0 => x0.visibilityState,
_1025: () => globalThis.document,
_1026: (x0,x1,x2,x3) => x0.addEventListener(x1,x2,x3),
_1028: (x0,x1,x2,x3) => x0.addEventListener(x1,x2,x3),
_1031: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._1031(f,arguments.length,x0) }),
_1032: x0 => x0.target,
_1034: x0 => x0.timeStamp,
_1035: x0 => x0.type,
_1037: x0 => x0.preventDefault(),
_1039: (x0,x1,x2,x3) => x0.initEvent(x1,x2,x3),
_1046: x0 => x0.firstChild,
_1051: x0 => x0.parentElement,
_1053: x0 => x0.parentNode,
_1056: (x0,x1) => x0.removeChild(x1),
_1057: (x0,x1) => x0.removeChild(x1),
_1058: x0 => x0.isConnected,
_1059: (x0,x1) => x0.textContent = x1,
_1061: (x0,x1) => x0.contains(x1),
_1066: x0 => x0.firstElementChild,
_1068: x0 => x0.nextElementSibling,
_1069: x0 => x0.clientHeight,
_1070: x0 => x0.clientWidth,
_1071: x0 => x0.offsetHeight,
_1072: x0 => x0.offsetWidth,
_1073: x0 => x0.id,
_1074: (x0,x1) => x0.id = x1,
_1077: (x0,x1) => x0.spellcheck = x1,
_1078: x0 => x0.tagName,
_1079: x0 => x0.style,
_1080: (x0,x1) => x0.append(x1),
_1081: (x0,x1) => x0.getAttribute(x1),
_1082: x0 => x0.getBoundingClientRect(),
_1086: (x0,x1) => x0.closest(x1),
_1088: (x0,x1) => x0.querySelectorAll(x1),
_1090: x0 => x0.remove(),
_1092: (x0,x1,x2) => x0.setAttribute(x1,x2),
_1093: (x0,x1) => x0.removeAttribute(x1),
_1094: (x0,x1) => x0.tabIndex = x1,
_1096: (x0,x1) => x0.focus(x1),
_1097: x0 => x0.scrollTop,
_1098: (x0,x1) => x0.scrollTop = x1,
_1099: x0 => x0.scrollLeft,
_1100: (x0,x1) => x0.scrollLeft = x1,
_1101: x0 => x0.classList,
_1102: (x0,x1) => x0.className = x1,
_1107: (x0,x1) => x0.getElementsByClassName(x1),
_1109: x0 => x0.click(),
_1111: (x0,x1) => x0.hasAttribute(x1),
_1113: (x0,x1) => x0.attachShadow(x1),
_1118: (x0,x1) => x0.getPropertyValue(x1),
_1120: (x0,x1,x2,x3) => x0.setProperty(x1,x2,x3),
_1122: (x0,x1) => x0.removeProperty(x1),
_1124: x0 => x0.offsetLeft,
_1125: x0 => x0.offsetTop,
_1126: x0 => x0.offsetParent,
_1128: (x0,x1) => x0.name = x1,
_1129: x0 => x0.content,
_1130: (x0,x1) => x0.content = x1,
_1144: (x0,x1) => x0.nonce = x1,
_1149: x0 => x0.now(),
_1151: (x0,x1) => x0.width = x1,
_1153: (x0,x1) => x0.height = x1,
_1157: (x0,x1) => x0.getContext(x1),
_1231: (x0,x1) => x0.fetch(x1),
_1232: x0 => x0.status,
_1234: x0 => x0.body,
_1235: x0 => x0.arrayBuffer(),
_1241: x0 => x0.read(),
_1242: x0 => x0.value,
_1243: x0 => x0.done,
_1245: x0 => x0.name,
_1246: x0 => x0.x,
_1247: x0 => x0.y,
_1250: x0 => x0.top,
_1251: x0 => x0.right,
_1252: x0 => x0.bottom,
_1253: x0 => x0.left,
_1263: x0 => x0.height,
_1264: x0 => x0.width,
_1265: (x0,x1) => x0.value = x1,
_1267: (x0,x1) => x0.placeholder = x1,
_1268: (x0,x1) => x0.name = x1,
_1269: x0 => x0.selectionDirection,
_1270: x0 => x0.selectionStart,
_1271: x0 => x0.selectionEnd,
_1274: x0 => x0.value,
_1276: (x0,x1,x2) => x0.setSelectionRange(x1,x2),
_1279: x0 => x0.readText(),
_1280: (x0,x1) => x0.writeText(x1),
_1281: x0 => x0.altKey,
_1282: x0 => x0.code,
_1283: x0 => x0.ctrlKey,
_1284: x0 => x0.key,
_1285: x0 => x0.keyCode,
_1286: x0 => x0.location,
_1287: x0 => x0.metaKey,
_1288: x0 => x0.repeat,
_1289: x0 => x0.shiftKey,
_1290: x0 => x0.isComposing,
_1292: (x0,x1) => x0.getModifierState(x1),
_1294: x0 => x0.state,
_1295: (x0,x1) => x0.go(x1),
_1297: (x0,x1,x2,x3) => x0.pushState(x1,x2,x3),
_1298: (x0,x1,x2,x3) => x0.replaceState(x1,x2,x3),
_1299: x0 => x0.pathname,
_1300: x0 => x0.search,
_1301: x0 => x0.hash,
_1305: x0 => x0.state,
_1311: f => finalizeWrapper(f, function(x0,x1) { return dartInstance.exports._1311(f,arguments.length,x0,x1) }),
_1313: (x0,x1,x2) => x0.observe(x1,x2),
_1316: x0 => x0.attributeName,
_1317: x0 => x0.type,
_1318: x0 => x0.matches,
_1321: x0 => x0.matches,
_1323: x0 => x0.relatedTarget,
_1324: x0 => x0.clientX,
_1325: x0 => x0.clientY,
_1326: x0 => x0.offsetX,
_1327: x0 => x0.offsetY,
_1330: x0 => x0.button,
_1331: x0 => x0.buttons,
_1332: x0 => x0.ctrlKey,
_1333: (x0,x1) => x0.getModifierState(x1),
_1336: x0 => x0.pointerId,
_1337: x0 => x0.pointerType,
_1338: x0 => x0.pressure,
_1339: x0 => x0.tiltX,
_1340: x0 => x0.tiltY,
_1341: x0 => x0.getCoalescedEvents(),
_1343: x0 => x0.deltaX,
_1344: x0 => x0.deltaY,
_1345: x0 => x0.wheelDeltaX,
_1346: x0 => x0.wheelDeltaY,
_1347: x0 => x0.deltaMode,
_1353: x0 => x0.changedTouches,
_1355: x0 => x0.clientX,
_1356: x0 => x0.clientY,
_1358: x0 => x0.data,
_1361: (x0,x1) => x0.disabled = x1,
_1362: (x0,x1) => x0.type = x1,
_1363: (x0,x1) => x0.max = x1,
_1364: (x0,x1) => x0.min = x1,
_1365: (x0,x1) => x0.value = x1,
_1366: x0 => x0.value,
_1367: x0 => x0.disabled,
_1368: (x0,x1) => x0.disabled = x1,
_1369: (x0,x1) => x0.placeholder = x1,
_1370: (x0,x1) => x0.name = x1,
_1371: (x0,x1) => x0.autocomplete = x1,
_1372: x0 => x0.selectionDirection,
_1373: x0 => x0.selectionStart,
_1374: x0 => x0.selectionEnd,
_1378: (x0,x1,x2) => x0.setSelectionRange(x1,x2),
_1384: (x0,x1) => x0.add(x1),
_1387: (x0,x1) => x0.noValidate = x1,
_1388: (x0,x1) => x0.method = x1,
_1389: (x0,x1) => x0.action = x1,
_1414: x0 => x0.orientation,
_1415: x0 => x0.width,
_1416: x0 => x0.height,
_1417: (x0,x1) => x0.lock(x1),
_1433: f => finalizeWrapper(f, function(x0,x1) { return dartInstance.exports._1433(f,arguments.length,x0,x1) }),
_1444: x0 => x0.length,
_1446: (x0,x1) => x0.item(x1),
_1447: x0 => x0.length,
_1448: (x0,x1) => x0.item(x1),
_1449: x0 => x0.iterator,
_1450: x0 => x0.Segmenter,
_1451: x0 => x0.v8BreakIterator,
_1454: x0 => x0.done,
_1455: x0 => x0.value,
_1456: x0 => x0.index,
_1460: (x0,x1) => x0.adoptText(x1),
_1461: x0 => x0.first(),
_1462: x0 => x0.next(),
_1463: x0 => x0.current(),
_1474: x0 => x0.hostElement,
_1475: x0 => x0.viewConstraints,
_1477: x0 => x0.maxHeight,
_1478: x0 => x0.maxWidth,
_1479: x0 => x0.minHeight,
_1480: x0 => x0.minWidth,
_1481: x0 => x0.loader,
_1482: () => globalThis._flutter,
_1483: (x0,x1) => x0.didCreateEngineInitializer(x1),
_1484: (x0,x1,x2) => x0.call(x1,x2),
_1485: () => globalThis.Promise,
_1486: f => finalizeWrapper(f, function(x0,x1) { return dartInstance.exports._1486(f,arguments.length,x0,x1) }),
_1490: x0 => x0.length,
_1493: x0 => x0.tracks,
_1497: x0 => x0.image,
_1502: x0 => x0.codedWidth,
_1503: x0 => x0.codedHeight,
_1506: x0 => x0.duration,
_1510: x0 => x0.ready,
_1511: x0 => x0.selectedTrack,
_1512: x0 => x0.repetitionCount,
_1513: x0 => x0.frameCount,
_1585: x0 => new Array(x0),
_1586: x0 => x0.length,
_1588: (x0,x1) => x0[x1],
_1589: (x0,x1,x2) => x0[x1] = x2,
_1643: (decoder, codeUnits) => decoder.decode(codeUnits),
_1644: () => new TextDecoder("utf-8", {fatal: true}),
_1645: () => new TextDecoder("utf-8", {fatal: false}),
_1646: x0 => new WeakRef(x0),
_1647: x0 => x0.deref(),
_1653: Date.now,
_1655: s => new Date(s * 1000).getTimezoneOffset() * 60 ,
_1656: s => {
      if (!/^\s*[+-]?(?:Infinity|NaN|(?:\.\d+|\d+(?:\.\d*)?)(?:[eE][+-]?\d+)?)\s*$/.test(s)) {
        return NaN;
      }
      return parseFloat(s);
    },
_1657: () => {
          let stackString = new Error().stack.toString();
          let frames = stackString.split('\n');
          let drop = 2;
          if (frames[0] === 'Error') {
              drop += 1;
          }
          return frames.slice(drop).join('\n');
        },
_1658: () => typeof dartUseDateNowForTicks !== "undefined",
_1659: () => 1000 * performance.now(),
_1660: () => Date.now(),
_1663: () => new WeakMap(),
_1664: (map, o) => map.get(o),
_1665: (map, o, v) => map.set(o, v),
_1666: () => globalThis.WeakRef,
_1676: s => JSON.stringify(s),
_1677: s => printToConsole(s),
_1678: a => a.join(''),
_1681: (s, t) => s.split(t),
_1682: s => s.toLowerCase(),
_1683: s => s.toUpperCase(),
_1684: s => s.trim(),
_1685: s => s.trimLeft(),
_1686: s => s.trimRight(),
_1688: (s, p, i) => s.indexOf(p, i),
_1689: (s, p, i) => s.lastIndexOf(p, i),
_1691: Object.is,
_1692: s => s.toUpperCase(),
_1693: s => s.toLowerCase(),
_1694: (a, i) => a.push(i),
_1698: a => a.pop(),
_1699: (a, i) => a.splice(i, 1),
_1701: (a, s) => a.join(s),
_1705: a => a.length,
_1707: (a, i) => a[i],
_1708: (a, i, v) => a[i] = v,
_1711: (o, start, length) => new Uint8Array(o.buffer, o.byteOffset + start, length),
_1712: (o, start, length) => new Int8Array(o.buffer, o.byteOffset + start, length),
_1713: (o, start, length) => new Uint8ClampedArray(o.buffer, o.byteOffset + start, length),
_1714: (o, start, length) => new Uint16Array(o.buffer, o.byteOffset + start, length),
_1715: (o, start, length) => new Int16Array(o.buffer, o.byteOffset + start, length),
_1716: (o, start, length) => new Uint32Array(o.buffer, o.byteOffset + start, length),
_1717: (o, start, length) => new Int32Array(o.buffer, o.byteOffset + start, length),
_1719: (o, start, length) => new BigInt64Array(o.buffer, o.byteOffset + start, length),
_1720: (o, start, length) => new Float32Array(o.buffer, o.byteOffset + start, length),
_1721: (o, start, length) => new Float64Array(o.buffer, o.byteOffset + start, length),
_1722: (t, s) => t.set(s),
_1724: (o) => new DataView(o.buffer, o.byteOffset, o.byteLength),
_1726: o => o.buffer,
_1727: o => o.byteOffset,
_1728: Function.prototype.call.bind(Object.getOwnPropertyDescriptor(DataView.prototype, 'byteLength').get),
_1729: (b, o) => new DataView(b, o),
_1730: (b, o, l) => new DataView(b, o, l),
_1731: Function.prototype.call.bind(DataView.prototype.getUint8),
_1732: Function.prototype.call.bind(DataView.prototype.setUint8),
_1733: Function.prototype.call.bind(DataView.prototype.getInt8),
_1734: Function.prototype.call.bind(DataView.prototype.setInt8),
_1735: Function.prototype.call.bind(DataView.prototype.getUint16),
_1736: Function.prototype.call.bind(DataView.prototype.setUint16),
_1737: Function.prototype.call.bind(DataView.prototype.getInt16),
_1738: Function.prototype.call.bind(DataView.prototype.setInt16),
_1739: Function.prototype.call.bind(DataView.prototype.getUint32),
_1740: Function.prototype.call.bind(DataView.prototype.setUint32),
_1741: Function.prototype.call.bind(DataView.prototype.getInt32),
_1742: Function.prototype.call.bind(DataView.prototype.setInt32),
_1745: Function.prototype.call.bind(DataView.prototype.getBigInt64),
_1746: Function.prototype.call.bind(DataView.prototype.setBigInt64),
_1747: Function.prototype.call.bind(DataView.prototype.getFloat32),
_1748: Function.prototype.call.bind(DataView.prototype.setFloat32),
_1749: Function.prototype.call.bind(DataView.prototype.getFloat64),
_1750: Function.prototype.call.bind(DataView.prototype.setFloat64),
_1768: (o, t) => o instanceof t,
_1770: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._1770(f,arguments.length,x0) }),
_1771: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._1771(f,arguments.length,x0) }),
_1772: o => Object.keys(o),
_1773: (ms, c) =>
              setTimeout(() => dartInstance.exports.$invokeCallback(c),ms),
_1774: (handle) => clearTimeout(handle),
_1775: (ms, c) =>
          setInterval(() => dartInstance.exports.$invokeCallback(c), ms),
_1776: (handle) => clearInterval(handle),
_1777: (c) =>
              queueMicrotask(() => dartInstance.exports.$invokeCallback(c)),
_1778: () => Date.now(),
_1779: (s, m) => {
          try {
            return new RegExp(s, m);
          } catch (e) {
            return String(e);
          }
        },
_1780: (x0,x1) => x0.exec(x1),
_1781: (x0,x1) => x0.test(x1),
_1782: (x0,x1) => x0.exec(x1),
_1783: (x0,x1) => x0.exec(x1),
_1784: x0 => x0.pop(),
_1786: o => o === undefined,
_1787: o => typeof o === 'boolean',
_1788: o => typeof o === 'number',
_1790: o => typeof o === 'string',
_1793: o => o instanceof Int8Array,
_1794: o => o instanceof Uint8Array,
_1795: o => o instanceof Uint8ClampedArray,
_1796: o => o instanceof Int16Array,
_1797: o => o instanceof Uint16Array,
_1798: o => o instanceof Int32Array,
_1799: o => o instanceof Uint32Array,
_1800: o => o instanceof Float32Array,
_1801: o => o instanceof Float64Array,
_1802: o => o instanceof ArrayBuffer,
_1803: o => o instanceof DataView,
_1804: o => o instanceof Array,
_1805: o => typeof o === 'function' && o[jsWrappedDartFunctionSymbol] === true,
_1807: o => {
            const proto = Object.getPrototypeOf(o);
            return proto === Object.prototype || proto === null;
          },
_1808: o => o instanceof RegExp,
_1809: (l, r) => l === r,
_1810: o => o,
_1811: o => o,
_1812: o => o,
_1813: b => !!b,
_1814: o => o.length,
_1817: (o, i) => o[i],
_1818: f => f.dartFunction,
_1819: l => arrayFromDartList(Int8Array, l),
_1820: (data, length) => {
          const jsBytes = new Uint8Array(length);
          const getByte = dartInstance.exports.$uint8ListGet;
          for (let i = 0; i < length; i++) {
            jsBytes[i] = getByte(data, i);
          }
          return jsBytes;
        },
_1821: l => arrayFromDartList(Uint8ClampedArray, l),
_1822: l => arrayFromDartList(Int16Array, l),
_1823: l => arrayFromDartList(Uint16Array, l),
_1824: l => arrayFromDartList(Int32Array, l),
_1825: l => arrayFromDartList(Uint32Array, l),
_1826: l => arrayFromDartList(Float32Array, l),
_1827: l => arrayFromDartList(Float64Array, l),
_1828: (data, length) => {
          const read = dartInstance.exports.$byteDataGetUint8;
          const view = new DataView(new ArrayBuffer(length));
          for (let i = 0; i < length; i++) {
              view.setUint8(i, read(data, i));
          }
          return view;
        },
_1829: l => arrayFromDartList(Array, l),
_1830:       (s, length) => {
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
_1831:     (s, length) => {
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
_1832:     (s) => {
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
_1833: () => ({}),
_1834: () => [],
_1835: l => new Array(l),
_1836: () => globalThis,
_1837: (constructor, args) => {
      const factoryFunction = constructor.bind.apply(
          constructor, [null, ...args]);
      return new factoryFunction();
    },
_1838: (o, p) => p in o,
_1839: (o, p) => o[p],
_1840: (o, p, v) => o[p] = v,
_1841: (o, m, a) => o[m].apply(o, a),
_1843: o => String(o),
_1844: (p, s, f) => p.then(s, f),
_1845: s => {
      if (/[[\]{}()*+?.\\^$|]/.test(s)) {
          s = s.replace(/[[\]{}()*+?.\\^$|]/g, '\\$&');
      }
      return s;
    },
_1848: x0 => x0.index,
_1853: x0 => x0.flags,
_1854: x0 => x0.multiline,
_1855: x0 => x0.ignoreCase,
_1856: x0 => x0.unicode,
_1857: x0 => x0.dotAll,
_1858: (x0,x1) => x0.lastIndex = x1,
_1863: v => v.toString(),
_1864: (d, digits) => d.toFixed(digits)
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

