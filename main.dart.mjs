
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
_167: x0 => x0.select(),
_168: (x0,x1) => x0.append(x1),
_169: x0 => x0.remove(),
_172: x0 => x0.unlock(),
_177: x0 => x0.getReader(),
_189: x0 => new MutationObserver(x0),
_208: (x0,x1,x2) => x0.addEventListener(x1,x2),
_209: (x0,x1,x2) => x0.removeEventListener(x1,x2),
_212: x0 => new ResizeObserver(x0),
_215: (x0,x1) => new Intl.Segmenter(x0,x1),
_216: x0 => x0.next(),
_217: (x0,x1) => new Intl.v8BreakIterator(x0,x1),
_294: x0 => x0.close(),
_295: (x0,x1,x2,x3,x4) => ({type: x0,data: x1,premultiplyAlpha: x2,colorSpaceConversion: x3,preferAnimation: x4}),
_296: x0 => new window.ImageDecoder(x0),
_297: x0 => x0.close(),
_298: x0 => ({frameIndex: x0}),
_299: (x0,x1) => x0.decode(x1),
_302: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._302(f,arguments.length,x0) }),
_303: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._303(f,arguments.length,x0) }),
_304: (x0,x1) => ({addView: x0,removeView: x1}),
_305: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._305(f,arguments.length,x0) }),
_306: f => finalizeWrapper(f, function() { return dartInstance.exports._306(f,arguments.length) }),
_307: (x0,x1) => ({initializeEngine: x0,autoStart: x1}),
_308: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._308(f,arguments.length,x0) }),
_309: x0 => ({runApp: x0}),
_310: x0 => new Uint8Array(x0),
_312: x0 => x0.preventDefault(),
_313: x0 => x0.stopPropagation(),
_314: (x0,x1) => x0.addListener(x1),
_315: (x0,x1) => x0.removeListener(x1),
_316: (x0,x1) => x0.prepend(x1),
_317: x0 => x0.remove(),
_318: x0 => x0.disconnect(),
_319: (x0,x1) => x0.addListener(x1),
_320: (x0,x1) => x0.removeListener(x1),
_322: (x0,x1) => x0.append(x1),
_323: x0 => x0.remove(),
_324: x0 => x0.stopPropagation(),
_328: x0 => x0.preventDefault(),
_329: (x0,x1) => x0.append(x1),
_330: x0 => x0.remove(),
_331: x0 => x0.preventDefault(),
_332: x0 => x0.preventDefault(),
_337: (x0,x1) => x0.appendChild(x1),
_338: (x0,x1,x2) => x0.insertBefore(x1,x2),
_339: (x0,x1) => x0.removeChild(x1),
_340: (x0,x1) => x0.appendChild(x1),
_341: (x0,x1) => x0.transferFromImageBitmap(x1),
_342: (x0,x1) => x0.append(x1),
_343: (x0,x1) => x0.append(x1),
_344: (x0,x1) => x0.append(x1),
_345: x0 => x0.remove(),
_346: x0 => x0.remove(),
_347: x0 => x0.remove(),
_348: (x0,x1) => x0.appendChild(x1),
_349: (x0,x1) => x0.appendChild(x1),
_350: x0 => x0.remove(),
_351: (x0,x1) => x0.append(x1),
_352: (x0,x1) => x0.append(x1),
_353: x0 => x0.remove(),
_354: (x0,x1) => x0.append(x1),
_355: (x0,x1) => x0.append(x1),
_356: (x0,x1,x2) => x0.insertBefore(x1,x2),
_357: (x0,x1) => x0.append(x1),
_358: (x0,x1,x2) => x0.insertBefore(x1,x2),
_359: x0 => x0.remove(),
_360: x0 => x0.remove(),
_361: (x0,x1) => x0.append(x1),
_362: x0 => x0.remove(),
_363: (x0,x1) => x0.append(x1),
_364: x0 => x0.remove(),
_365: x0 => x0.remove(),
_366: x0 => x0.getBoundingClientRect(),
_367: x0 => x0.remove(),
_368: x0 => x0.blur(),
_369: x0 => x0.remove(),
_370: x0 => x0.blur(),
_371: x0 => x0.remove(),
_384: (x0,x1) => x0.append(x1),
_385: x0 => x0.remove(),
_386: (x0,x1) => x0.append(x1),
_387: (x0,x1,x2) => x0.insertBefore(x1,x2),
_388: x0 => x0.preventDefault(),
_389: x0 => x0.preventDefault(),
_390: x0 => x0.preventDefault(),
_391: x0 => x0.preventDefault(),
_392: x0 => x0.remove(),
_393: (x0,x1) => x0.observe(x1),
_394: x0 => x0.disconnect(),
_395: (x0,x1) => x0.appendChild(x1),
_396: (x0,x1) => x0.appendChild(x1),
_397: (x0,x1) => x0.appendChild(x1),
_398: (x0,x1) => x0.append(x1),
_399: x0 => x0.remove(),
_400: (x0,x1) => x0.append(x1),
_402: (x0,x1) => x0.appendChild(x1),
_403: (x0,x1) => x0.append(x1),
_404: x0 => x0.remove(),
_405: (x0,x1) => x0.append(x1),
_409: (x0,x1) => x0.appendChild(x1),
_410: x0 => x0.remove(),
_970: () => globalThis.window.flutterConfiguration,
_971: x0 => x0.assetBase,
_976: x0 => x0.debugShowSemanticsNodes,
_977: x0 => x0.hostElement,
_978: x0 => x0.multiViewEnabled,
_979: x0 => x0.nonce,
_981: x0 => x0.fontFallbackBaseUrl,
_982: x0 => x0.useColorEmoji,
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
_1001: (x0,x1) => x0.dispatchEvent(x1),
_1002: (x0,x1) => x0.matchMedia(x1),
_1003: (x0,x1) => x0.getComputedStyle(x1),
_1005: x0 => x0.screen,
_1006: (x0,x1) => x0.requestAnimationFrame(x1),
_1007: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._1007(f,arguments.length,x0) }),
_1011: (x0,x1) => x0.warn(x1),
_1014: () => globalThis.window,
_1015: () => globalThis.Intl,
_1016: () => globalThis.Symbol,
_1019: x0 => x0.clipboard,
_1020: x0 => x0.maxTouchPoints,
_1021: x0 => x0.vendor,
_1022: x0 => x0.language,
_1023: x0 => x0.platform,
_1024: x0 => x0.userAgent,
_1025: x0 => x0.languages,
_1026: x0 => x0.documentElement,
_1027: (x0,x1) => x0.querySelector(x1),
_1030: (x0,x1) => x0.createElement(x1),
_1032: (x0,x1) => x0.execCommand(x1),
_1036: (x0,x1) => x0.createTextNode(x1),
_1037: (x0,x1) => x0.createEvent(x1),
_1041: x0 => x0.head,
_1042: x0 => x0.body,
_1043: (x0,x1) => x0.title = x1,
_1046: x0 => x0.activeElement,
_1048: x0 => x0.visibilityState,
_1049: () => globalThis.document,
_1050: (x0,x1,x2) => x0.addEventListener(x1,x2),
_1051: (x0,x1,x2,x3) => x0.addEventListener(x1,x2,x3),
_1052: (x0,x1,x2,x3) => x0.addEventListener(x1,x2,x3),
_1053: (x0,x1,x2) => x0.removeEventListener(x1,x2),
_1056: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._1056(f,arguments.length,x0) }),
_1057: x0 => x0.target,
_1059: x0 => x0.timeStamp,
_1060: x0 => x0.type,
_1061: x0 => x0._cancelable,
_1062: x0 => x0.preventDefault(),
_1066: (x0,x1,x2,x3) => x0.initEvent(x1,x2,x3),
_1071: x0 => x0.firstChild,
_1077: x0 => x0.parentElement,
_1079: x0 => x0.parentNode,
_1082: (x0,x1) => x0.removeChild(x1),
_1083: (x0,x1) => x0.removeChild(x1),
_1084: x0 => x0.isConnected,
_1085: (x0,x1) => x0.textContent = x1,
_1088: (x0,x1) => x0.contains(x1),
_1093: x0 => x0.firstElementChild,
_1095: x0 => x0.nextElementSibling,
_1096: x0 => x0.clientHeight,
_1097: x0 => x0.clientWidth,
_1098: x0 => x0.offsetHeight,
_1099: x0 => x0.offsetWidth,
_1100: x0 => x0.id,
_1101: (x0,x1) => x0.id = x1,
_1104: (x0,x1) => x0.spellcheck = x1,
_1105: x0 => x0.tagName,
_1106: x0 => x0.style,
_1108: (x0,x1) => x0.append(x1),
_1109: (x0,x1) => x0.getAttribute(x1),
_1110: x0 => x0.getBoundingClientRect(),
_1113: (x0,x1) => x0.closest(x1),
_1115: (x0,x1) => x0.querySelectorAll(x1),
_1116: x0 => x0.remove(),
_1117: (x0,x1,x2) => x0.setAttribute(x1,x2),
_1119: (x0,x1) => x0.removeAttribute(x1),
_1120: (x0,x1) => x0.tabIndex = x1,
_1122: (x0,x1) => x0.focus(x1),
_1123: x0 => x0.scrollTop,
_1124: (x0,x1) => x0.scrollTop = x1,
_1125: x0 => x0.scrollLeft,
_1126: (x0,x1) => x0.scrollLeft = x1,
_1127: x0 => x0.classList,
_1128: (x0,x1) => x0.className = x1,
_1132: (x0,x1) => x0.getElementsByClassName(x1),
_1133: x0 => x0.click(),
_1134: (x0,x1) => x0.hasAttribute(x1),
_1137: (x0,x1) => x0.attachShadow(x1),
_1141: (x0,x1) => x0.getPropertyValue(x1),
_1143: (x0,x1,x2,x3) => x0.setProperty(x1,x2,x3),
_1145: (x0,x1) => x0.removeProperty(x1),
_1147: x0 => x0.offsetLeft,
_1148: x0 => x0.offsetTop,
_1149: x0 => x0.offsetParent,
_1151: (x0,x1) => x0.name = x1,
_1152: x0 => x0.content,
_1153: (x0,x1) => x0.content = x1,
_1166: (x0,x1) => x0.nonce = x1,
_1171: x0 => x0.now(),
_1173: (x0,x1) => x0.width = x1,
_1175: (x0,x1) => x0.height = x1,
_1179: (x0,x1) => x0.getContext(x1),
_1257: x0 => x0.status,
_1259: x0 => x0.body,
_1260: x0 => x0.arrayBuffer(),
_1265: x0 => x0.read(),
_1266: x0 => x0.value,
_1267: x0 => x0.done,
_1269: x0 => x0.name,
_1270: x0 => x0.x,
_1271: x0 => x0.y,
_1274: x0 => x0.top,
_1275: x0 => x0.right,
_1276: x0 => x0.bottom,
_1277: x0 => x0.left,
_1286: x0 => x0.height,
_1287: x0 => x0.width,
_1288: (x0,x1) => x0.value = x1,
_1290: (x0,x1) => x0.placeholder = x1,
_1291: (x0,x1) => x0.name = x1,
_1292: x0 => x0.selectionDirection,
_1293: x0 => x0.selectionStart,
_1294: x0 => x0.selectionEnd,
_1297: x0 => x0.value,
_1299: (x0,x1,x2) => x0.setSelectionRange(x1,x2),
_1304: x0 => x0.readText(),
_1305: (x0,x1) => x0.writeText(x1),
_1306: x0 => x0.altKey,
_1307: x0 => x0.code,
_1308: x0 => x0.ctrlKey,
_1309: x0 => x0.key,
_1310: x0 => x0.keyCode,
_1311: x0 => x0.location,
_1312: x0 => x0.metaKey,
_1313: x0 => x0.repeat,
_1314: x0 => x0.shiftKey,
_1315: x0 => x0.isComposing,
_1316: (x0,x1) => x0.getModifierState(x1),
_1317: x0 => x0.state,
_1320: (x0,x1) => x0.go(x1),
_1321: (x0,x1,x2,x3) => x0.pushState(x1,x2,x3),
_1322: (x0,x1,x2,x3) => x0.replaceState(x1,x2,x3),
_1323: x0 => x0.pathname,
_1324: x0 => x0.search,
_1325: x0 => x0.hash,
_1328: x0 => x0.state,
_1334: f => finalizeWrapper(f, function(x0,x1) { return dartInstance.exports._1334(f,arguments.length,x0,x1) }),
_1336: (x0,x1,x2) => x0.observe(x1,x2),
_1339: x0 => x0.attributeName,
_1340: x0 => x0.type,
_1341: x0 => x0.matches,
_1345: x0 => x0.matches,
_1346: x0 => x0.relatedTarget,
_1347: x0 => x0.clientX,
_1348: x0 => x0.clientY,
_1349: x0 => x0.offsetX,
_1350: x0 => x0.offsetY,
_1353: x0 => x0.button,
_1354: x0 => x0.buttons,
_1355: x0 => x0.ctrlKey,
_1356: (x0,x1) => x0.getModifierState(x1),
_1357: x0 => x0.pointerId,
_1358: x0 => x0.pointerType,
_1359: x0 => x0.pressure,
_1360: x0 => x0.tiltX,
_1361: x0 => x0.tiltY,
_1362: x0 => x0.getCoalescedEvents(),
_1363: x0 => x0.deltaX,
_1364: x0 => x0.deltaY,
_1365: x0 => x0.wheelDeltaX,
_1366: x0 => x0.wheelDeltaY,
_1367: x0 => x0.deltaMode,
_1372: x0 => x0.changedTouches,
_1374: x0 => x0.clientX,
_1375: x0 => x0.clientY,
_1376: x0 => x0.data,
_1377: (x0,x1) => x0.type = x1,
_1378: (x0,x1) => x0.max = x1,
_1379: (x0,x1) => x0.min = x1,
_1380: (x0,x1) => x0.value = x1,
_1381: x0 => x0.value,
_1382: x0 => x0.disabled,
_1383: (x0,x1) => x0.disabled = x1,
_1384: (x0,x1) => x0.placeholder = x1,
_1385: (x0,x1) => x0.name = x1,
_1386: (x0,x1) => x0.autocomplete = x1,
_1387: x0 => x0.selectionDirection,
_1388: x0 => x0.selectionStart,
_1389: x0 => x0.selectionEnd,
_1393: (x0,x1,x2) => x0.setSelectionRange(x1,x2),
_1400: (x0,x1) => x0.add(x1),
_1403: (x0,x1) => x0.noValidate = x1,
_1404: (x0,x1) => x0.method = x1,
_1405: (x0,x1) => x0.action = x1,
_1432: x0 => x0.orientation,
_1433: x0 => x0.width,
_1434: x0 => x0.height,
_1435: (x0,x1) => x0.lock(x1),
_1452: f => finalizeWrapper(f, function(x0,x1) { return dartInstance.exports._1452(f,arguments.length,x0,x1) }),
_1462: x0 => x0.length,
_1463: (x0,x1) => x0.item(x1),
_1464: x0 => x0.length,
_1465: (x0,x1) => x0.item(x1),
_1466: x0 => x0.iterator,
_1467: x0 => x0.Segmenter,
_1468: x0 => x0.v8BreakIterator,
_1471: x0 => x0.done,
_1472: x0 => x0.value,
_1473: x0 => x0.index,
_1477: (x0,x1) => x0.adoptText(x1),
_1479: x0 => x0.first(),
_1480: x0 => x0.next(),
_1481: x0 => x0.current(),
_1494: x0 => x0.hostElement,
_1495: x0 => x0.viewConstraints,
_1497: x0 => x0.maxHeight,
_1498: x0 => x0.maxWidth,
_1499: x0 => x0.minHeight,
_1500: x0 => x0.minWidth,
_1501: x0 => x0.loader,
_1502: () => globalThis._flutter,
_1503: (x0,x1) => x0.didCreateEngineInitializer(x1),
_1504: (x0,x1,x2) => x0.call(x1,x2),
_1505: () => globalThis.Promise,
_1506: f => finalizeWrapper(f, function(x0,x1) { return dartInstance.exports._1506(f,arguments.length,x0,x1) }),
_1509: x0 => x0.length,
_1512: x0 => x0.tracks,
_1516: x0 => x0.image,
_1521: x0 => x0.codedWidth,
_1522: x0 => x0.codedHeight,
_1525: x0 => x0.duration,
_1529: x0 => x0.ready,
_1530: x0 => x0.selectedTrack,
_1531: x0 => x0.repetitionCount,
_1532: x0 => x0.frameCount,
_1605: x0 => new Array(x0),
_1639: (decoder, codeUnits) => decoder.decode(codeUnits),
_1640: () => new TextDecoder("utf-8", {fatal: true}),
_1641: () => new TextDecoder("utf-8", {fatal: false}),
_1642: x0 => new WeakRef(x0),
_1643: x0 => x0.deref(),
_1649: Date.now,
_1651: s => new Date(s * 1000).getTimezoneOffset() * 60 ,
_1652: s => {
      if (!/^\s*[+-]?(?:Infinity|NaN|(?:\.\d+|\d+(?:\.\d*)?)(?:[eE][+-]?\d+)?)\s*$/.test(s)) {
        return NaN;
      }
      return parseFloat(s);
    },
_1653: () => {
          let stackString = new Error().stack.toString();
          let frames = stackString.split('\n');
          let drop = 2;
          if (frames[0] === 'Error') {
              drop += 1;
          }
          return frames.slice(drop).join('\n');
        },
_1654: () => typeof dartUseDateNowForTicks !== "undefined",
_1655: () => 1000 * performance.now(),
_1656: () => Date.now(),
_1659: () => new WeakMap(),
_1660: (map, o) => map.get(o),
_1661: (map, o, v) => map.set(o, v),
_1662: () => globalThis.WeakRef,
_1672: s => JSON.stringify(s),
_1673: s => printToConsole(s),
_1674: a => a.join(''),
_1677: (s, t) => s.split(t),
_1678: s => s.toLowerCase(),
_1679: s => s.toUpperCase(),
_1680: s => s.trim(),
_1681: s => s.trimLeft(),
_1682: s => s.trimRight(),
_1684: (s, p, i) => s.indexOf(p, i),
_1685: (s, p, i) => s.lastIndexOf(p, i),
_1687: Object.is,
_1688: s => s.toUpperCase(),
_1689: s => s.toLowerCase(),
_1690: (a, i) => a.push(i),
_1694: a => a.pop(),
_1695: (a, i) => a.splice(i, 1),
_1697: (a, s) => a.join(s),
_1701: a => a.length,
_1703: (a, i) => a[i],
_1704: (a, i, v) => a[i] = v,
_1707: (o, start, length) => new Uint8Array(o.buffer, o.byteOffset + start, length),
_1708: (o, start, length) => new Int8Array(o.buffer, o.byteOffset + start, length),
_1709: (o, start, length) => new Uint8ClampedArray(o.buffer, o.byteOffset + start, length),
_1710: (o, start, length) => new Uint16Array(o.buffer, o.byteOffset + start, length),
_1711: (o, start, length) => new Int16Array(o.buffer, o.byteOffset + start, length),
_1712: (o, start, length) => new Uint32Array(o.buffer, o.byteOffset + start, length),
_1713: (o, start, length) => new Int32Array(o.buffer, o.byteOffset + start, length),
_1715: (o, start, length) => new BigInt64Array(o.buffer, o.byteOffset + start, length),
_1716: (o, start, length) => new Float32Array(o.buffer, o.byteOffset + start, length),
_1717: (o, start, length) => new Float64Array(o.buffer, o.byteOffset + start, length),
_1718: (t, s) => t.set(s),
_1720: (o) => new DataView(o.buffer, o.byteOffset, o.byteLength),
_1722: o => o.buffer,
_1723: o => o.byteOffset,
_1724: Function.prototype.call.bind(Object.getOwnPropertyDescriptor(DataView.prototype, 'byteLength').get),
_1725: (b, o) => new DataView(b, o),
_1726: (b, o, l) => new DataView(b, o, l),
_1727: Function.prototype.call.bind(DataView.prototype.getUint8),
_1728: Function.prototype.call.bind(DataView.prototype.setUint8),
_1729: Function.prototype.call.bind(DataView.prototype.getInt8),
_1730: Function.prototype.call.bind(DataView.prototype.setInt8),
_1731: Function.prototype.call.bind(DataView.prototype.getUint16),
_1732: Function.prototype.call.bind(DataView.prototype.setUint16),
_1733: Function.prototype.call.bind(DataView.prototype.getInt16),
_1734: Function.prototype.call.bind(DataView.prototype.setInt16),
_1735: Function.prototype.call.bind(DataView.prototype.getUint32),
_1736: Function.prototype.call.bind(DataView.prototype.setUint32),
_1737: Function.prototype.call.bind(DataView.prototype.getInt32),
_1738: Function.prototype.call.bind(DataView.prototype.setInt32),
_1741: Function.prototype.call.bind(DataView.prototype.getBigInt64),
_1742: Function.prototype.call.bind(DataView.prototype.setBigInt64),
_1743: Function.prototype.call.bind(DataView.prototype.getFloat32),
_1744: Function.prototype.call.bind(DataView.prototype.setFloat32),
_1745: Function.prototype.call.bind(DataView.prototype.getFloat64),
_1746: Function.prototype.call.bind(DataView.prototype.setFloat64),
_1764: (o, t) => o instanceof t,
_1766: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._1766(f,arguments.length,x0) }),
_1767: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._1767(f,arguments.length,x0) }),
_1768: o => Object.keys(o),
_1769: (ms, c) =>
              setTimeout(() => dartInstance.exports.$invokeCallback(c),ms),
_1770: (handle) => clearTimeout(handle),
_1771: (ms, c) =>
          setInterval(() => dartInstance.exports.$invokeCallback(c), ms),
_1772: (handle) => clearInterval(handle),
_1773: (c) =>
              queueMicrotask(() => dartInstance.exports.$invokeCallback(c)),
_1774: () => Date.now(),
_1776: (s, m) => {
          try {
            return new RegExp(s, m);
          } catch (e) {
            return String(e);
          }
        },
_1777: (x0,x1) => x0.exec(x1),
_1778: (x0,x1) => x0.test(x1),
_1779: (x0,x1) => x0.exec(x1),
_1780: (x0,x1) => x0.exec(x1),
_1781: x0 => x0.pop(),
_1785: (x0,x1,x2) => x0[x1] = x2,
_1787: o => o === undefined,
_1788: o => typeof o === 'boolean',
_1789: o => typeof o === 'number',
_1791: o => typeof o === 'string',
_1794: o => o instanceof Int8Array,
_1795: o => o instanceof Uint8Array,
_1796: o => o instanceof Uint8ClampedArray,
_1797: o => o instanceof Int16Array,
_1798: o => o instanceof Uint16Array,
_1799: o => o instanceof Int32Array,
_1800: o => o instanceof Uint32Array,
_1801: o => o instanceof Float32Array,
_1802: o => o instanceof Float64Array,
_1803: o => o instanceof ArrayBuffer,
_1804: o => o instanceof DataView,
_1805: o => o instanceof Array,
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
_1821: (data, length) => {
          const jsBytes = new Uint8Array(length);
          const getByte = dartInstance.exports.$uint8ListGet;
          for (let i = 0; i < length; i++) {
            jsBytes[i] = getByte(data, i);
          }
          return jsBytes;
        },
_1822: l => arrayFromDartList(Uint8ClampedArray, l),
_1823: l => arrayFromDartList(Int16Array, l),
_1824: l => arrayFromDartList(Uint16Array, l),
_1825: l => arrayFromDartList(Int32Array, l),
_1826: l => arrayFromDartList(Uint32Array, l),
_1827: l => arrayFromDartList(Float32Array, l),
_1828: l => arrayFromDartList(Float64Array, l),
_1829: (data, length) => {
          const read = dartInstance.exports.$byteDataGetUint8;
          const view = new DataView(new ArrayBuffer(length));
          for (let i = 0; i < length; i++) {
              view.setUint8(i, read(data, i));
          }
          return view;
        },
_1830: l => arrayFromDartList(Array, l),
_1831:       (s, length) => {
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
_1832:     (s, length) => {
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
_1833:     (s) => {
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
_1834: () => ({}),
_1835: () => [],
_1836: l => new Array(l),
_1837: () => globalThis,
_1838: (constructor, args) => {
      const factoryFunction = constructor.bind.apply(
          constructor, [null, ...args]);
      return new factoryFunction();
    },
_1839: (o, p) => p in o,
_1840: (o, p) => o[p],
_1841: (o, p, v) => o[p] = v,
_1842: (o, m, a) => o[m].apply(o, a),
_1844: o => String(o),
_1845: (p, s, f) => p.then(s, f),
_1846: s => {
      if (/[[\]{}()*+?.\\^$|]/.test(s)) {
          s = s.replace(/[[\]{}()*+?.\\^$|]/g, '\\$&');
      }
      return s;
    },
_1849: x0 => x0.index,
_1851: x0 => x0.length,
_1853: (x0,x1) => x0[x1],
_1856: x0 => x0.flags,
_1857: x0 => x0.multiline,
_1858: x0 => x0.ignoreCase,
_1859: x0 => x0.unicode,
_1860: x0 => x0.dotAll,
_1861: (x0,x1) => x0.lastIndex = x1,
_1866: v => v.toString(),
_1867: (d, digits) => d.toFixed(digits)
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

