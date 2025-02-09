
// Compiles a dart2wasm-generated main module from `source` which can then
// instantiatable via the `instantiate` method.
//
// `source` needs to be a `Response` object (or promise thereof) e.g. created
// via the `fetch()` JS API.
export async function compileStreaming(source) {
  const builtins = {builtins: ['js-string']};
  return new CompiledApp(
      await WebAssembly.compileStreaming(source, builtins), builtins);
}

// Compiles a dart2wasm-generated wasm modules from `bytes` which is then
// instantiatable via the `instantiate` method.
export async function compile(bytes) {
  const builtins = {builtins: ['js-string']};
  return new CompiledApp(await WebAssembly.compile(bytes, builtins), builtins);
}

// DEPRECATED: Please use `compile` or `compileStreaming` to get a compiled app,
// use `instantiate` method to get an instantiated app and then call
// `invokeMain` to invoke the main function.
export async function instantiate(modulePromise, importObjectPromise) {
  var moduleOrCompiledApp = await modulePromise;
  if (!(moduleOrCompiledApp instanceof CompiledApp)) {
    moduleOrCompiledApp = new CompiledApp(moduleOrCompiledApp);
  }
  const instantiatedApp = await moduleOrCompiledApp.instantiate(await importObjectPromise);
  return instantiatedApp.instantiatedModule;
}

// DEPRECATED: Please use `compile` or `compileStreaming` to get a compiled app,
// use `instantiate` method to get an instantiated app and then call
// `invokeMain` to invoke the main function.
export const invoke = (moduleInstance, ...args) => {
  moduleInstance.exports.$invokeMain(args);
}

class CompiledApp {
  constructor(module, builtins) {
    this.module = module;
    this.builtins = builtins;
  }

  // The second argument is an options object containing:
  // `loadDeferredWasm` is a JS function that takes a module name matching a
  //   wasm file produced by the dart2wasm compiler and returns the bytes to
  //   load the module. These bytes can be in either a format supported by
  //   `WebAssembly.compile` or `WebAssembly.compileStreaming`.
  async instantiate(additionalImports, {loadDeferredWasm} = {}) {
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
      _192: x0 => x0.select(),
      _193: (x0,x1) => x0.append(x1),
      _194: x0 => x0.remove(),
      _197: x0 => x0.unlock(),
      _202: x0 => x0.getReader(),
      _211: x0 => new MutationObserver(x0),
      _222: (x0,x1,x2) => x0.addEventListener(x1,x2),
      _223: (x0,x1,x2) => x0.removeEventListener(x1,x2),
      _226: x0 => new ResizeObserver(x0),
      _229: (x0,x1) => new Intl.Segmenter(x0,x1),
      _230: x0 => x0.next(),
      _231: (x0,x1) => new Intl.v8BreakIterator(x0,x1),
      _308: x0 => x0.close(),
      _309: (x0,x1,x2,x3,x4) => ({type: x0,data: x1,premultiplyAlpha: x2,colorSpaceConversion: x3,preferAnimation: x4}),
      _310: x0 => new window.ImageDecoder(x0),
      _311: x0 => x0.close(),
      _312: x0 => ({frameIndex: x0}),
      _313: (x0,x1) => x0.decode(x1),
      _316: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._316(f,arguments.length,x0) }),
      _317: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._317(f,arguments.length,x0) }),
      _318: (x0,x1) => ({addView: x0,removeView: x1}),
      _319: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._319(f,arguments.length,x0) }),
      _320: f => finalizeWrapper(f, function() { return dartInstance.exports._320(f,arguments.length) }),
      _321: (x0,x1) => ({initializeEngine: x0,autoStart: x1}),
      _322: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._322(f,arguments.length,x0) }),
      _323: x0 => ({runApp: x0}),
      _324: x0 => new Uint8Array(x0),
      _326: x0 => x0.preventDefault(),
      _327: x0 => x0.stopPropagation(),
      _328: (x0,x1) => x0.addListener(x1),
      _329: (x0,x1) => x0.removeListener(x1),
      _330: (x0,x1) => x0.prepend(x1),
      _331: x0 => x0.remove(),
      _332: x0 => x0.disconnect(),
      _333: (x0,x1) => x0.addListener(x1),
      _334: (x0,x1) => x0.removeListener(x1),
      _335: x0 => x0.blur(),
      _336: (x0,x1) => x0.append(x1),
      _337: x0 => x0.remove(),
      _338: x0 => x0.stopPropagation(),
      _342: x0 => x0.preventDefault(),
      _343: (x0,x1) => x0.append(x1),
      _344: x0 => x0.remove(),
      _345: x0 => x0.preventDefault(),
      _350: (x0,x1) => x0.removeChild(x1),
      _351: (x0,x1) => x0.appendChild(x1),
      _352: (x0,x1,x2) => x0.insertBefore(x1,x2),
      _353: (x0,x1) => x0.appendChild(x1),
      _354: (x0,x1) => x0.transferFromImageBitmap(x1),
      _356: (x0,x1) => x0.append(x1),
      _357: (x0,x1) => x0.append(x1),
      _358: (x0,x1) => x0.append(x1),
      _359: x0 => x0.remove(),
      _360: x0 => x0.remove(),
      _361: x0 => x0.remove(),
      _362: (x0,x1) => x0.appendChild(x1),
      _363: (x0,x1) => x0.appendChild(x1),
      _364: x0 => x0.remove(),
      _365: (x0,x1) => x0.append(x1),
      _366: (x0,x1) => x0.append(x1),
      _367: x0 => x0.remove(),
      _368: (x0,x1) => x0.append(x1),
      _369: (x0,x1) => x0.append(x1),
      _370: (x0,x1,x2) => x0.insertBefore(x1,x2),
      _371: (x0,x1) => x0.append(x1),
      _372: (x0,x1,x2) => x0.insertBefore(x1,x2),
      _373: x0 => x0.remove(),
      _374: (x0,x1) => x0.append(x1),
      _375: x0 => x0.remove(),
      _376: (x0,x1) => x0.append(x1),
      _377: x0 => x0.remove(),
      _378: x0 => x0.remove(),
      _379: x0 => x0.getBoundingClientRect(),
      _380: x0 => x0.remove(),
      _393: (x0,x1) => x0.append(x1),
      _394: x0 => x0.remove(),
      _395: (x0,x1) => x0.append(x1),
      _396: (x0,x1,x2) => x0.insertBefore(x1,x2),
      _397: x0 => x0.preventDefault(),
      _398: x0 => x0.preventDefault(),
      _399: x0 => x0.preventDefault(),
      _400: x0 => x0.preventDefault(),
      _401: (x0,x1) => x0.observe(x1),
      _402: x0 => x0.disconnect(),
      _403: (x0,x1) => x0.appendChild(x1),
      _404: (x0,x1) => x0.appendChild(x1),
      _405: (x0,x1) => x0.appendChild(x1),
      _406: (x0,x1) => x0.append(x1),
      _407: x0 => x0.remove(),
      _408: (x0,x1) => x0.append(x1),
      _410: (x0,x1) => x0.appendChild(x1),
      _411: (x0,x1) => x0.append(x1),
      _412: x0 => x0.remove(),
      _413: (x0,x1) => x0.append(x1),
      _414: x0 => x0.remove(),
      _418: (x0,x1) => x0.appendChild(x1),
      _419: x0 => x0.remove(),
      _975: () => globalThis.window.flutterConfiguration,
      _976: x0 => x0.assetBase,
      _981: x0 => x0.debugShowSemanticsNodes,
      _982: x0 => x0.hostElement,
      _983: x0 => x0.multiViewEnabled,
      _984: x0 => x0.nonce,
      _986: x0 => x0.fontFallbackBaseUrl,
      _991: x0 => x0.console,
      _992: x0 => x0.devicePixelRatio,
      _993: x0 => x0.document,
      _994: x0 => x0.history,
      _995: x0 => x0.innerHeight,
      _996: x0 => x0.innerWidth,
      _997: x0 => x0.location,
      _998: x0 => x0.navigator,
      _999: x0 => x0.visualViewport,
      _1000: x0 => x0.performance,
      _1003: (x0,x1) => x0.dispatchEvent(x1),
      _1004: (x0,x1) => x0.matchMedia(x1),
      _1006: (x0,x1) => x0.getComputedStyle(x1),
      _1007: x0 => x0.screen,
      _1009: (x0,x1) => x0.requestAnimationFrame(x1),
      _1010: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._1010(f,arguments.length,x0) }),
      _1015: (x0,x1) => x0.warn(x1),
      _1018: () => globalThis.window,
      _1019: () => globalThis.Intl,
      _1020: () => globalThis.Symbol,
      _1023: x0 => x0.clipboard,
      _1024: x0 => x0.maxTouchPoints,
      _1025: x0 => x0.vendor,
      _1026: x0 => x0.language,
      _1027: x0 => x0.platform,
      _1028: x0 => x0.userAgent,
      _1029: x0 => x0.languages,
      _1030: x0 => x0.documentElement,
      _1031: (x0,x1) => x0.querySelector(x1),
      _1035: (x0,x1) => x0.createElement(x1),
      _1036: (x0,x1) => x0.execCommand(x1),
      _1040: (x0,x1) => x0.createTextNode(x1),
      _1041: (x0,x1) => x0.createEvent(x1),
      _1045: x0 => x0.head,
      _1046: x0 => x0.body,
      _1047: (x0,x1) => x0.title = x1,
      _1050: x0 => x0.activeElement,
      _1053: x0 => x0.visibilityState,
      _1054: x0 => x0.hasFocus(),
      _1055: () => globalThis.document,
      _1056: (x0,x1,x2,x3) => x0.addEventListener(x1,x2,x3),
      _1058: (x0,x1,x2,x3) => x0.addEventListener(x1,x2,x3),
      _1061: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._1061(f,arguments.length,x0) }),
      _1062: x0 => x0.target,
      _1064: x0 => x0.timeStamp,
      _1065: x0 => x0.type,
      _1067: x0 => x0.preventDefault(),
      _1069: (x0,x1,x2,x3) => x0.initEvent(x1,x2,x3),
      _1076: x0 => x0.firstChild,
      _1081: x0 => x0.parentElement,
      _1083: x0 => x0.parentNode,
      _1086: (x0,x1) => x0.removeChild(x1),
      _1087: (x0,x1) => x0.removeChild(x1),
      _1088: x0 => x0.isConnected,
      _1089: (x0,x1) => x0.textContent = x1,
      _1091: (x0,x1) => x0.contains(x1),
      _1096: x0 => x0.firstElementChild,
      _1098: x0 => x0.nextElementSibling,
      _1099: x0 => x0.clientHeight,
      _1100: x0 => x0.clientWidth,
      _1101: x0 => x0.offsetHeight,
      _1102: x0 => x0.offsetWidth,
      _1103: x0 => x0.id,
      _1104: (x0,x1) => x0.id = x1,
      _1107: (x0,x1) => x0.spellcheck = x1,
      _1108: x0 => x0.tagName,
      _1109: x0 => x0.style,
      _1110: (x0,x1) => x0.append(x1),
      _1111: (x0,x1) => x0.getAttribute(x1),
      _1112: x0 => x0.getBoundingClientRect(),
      _1117: (x0,x1) => x0.closest(x1),
      _1120: (x0,x1) => x0.querySelectorAll(x1),
      _1122: x0 => x0.remove(),
      _1123: (x0,x1,x2) => x0.setAttribute(x1,x2),
      _1124: (x0,x1) => x0.removeAttribute(x1),
      _1125: (x0,x1) => x0.tabIndex = x1,
      _1127: (x0,x1) => x0.focus(x1),
      _1128: x0 => x0.scrollTop,
      _1129: (x0,x1) => x0.scrollTop = x1,
      _1130: x0 => x0.scrollLeft,
      _1131: (x0,x1) => x0.scrollLeft = x1,
      _1132: x0 => x0.classList,
      _1133: (x0,x1) => x0.className = x1,
      _1140: (x0,x1) => x0.getElementsByClassName(x1),
      _1142: x0 => x0.click(),
      _1144: (x0,x1) => x0.hasAttribute(x1),
      _1147: (x0,x1) => x0.attachShadow(x1),
      _1151: (x0,x1) => x0.getPropertyValue(x1),
      _1153: (x0,x1,x2,x3) => x0.setProperty(x1,x2,x3),
      _1155: (x0,x1) => x0.removeProperty(x1),
      _1157: x0 => x0.offsetLeft,
      _1158: x0 => x0.offsetTop,
      _1159: x0 => x0.offsetParent,
      _1161: (x0,x1) => x0.name = x1,
      _1162: x0 => x0.content,
      _1163: (x0,x1) => x0.content = x1,
      _1181: (x0,x1) => x0.nonce = x1,
      _1186: x0 => x0.now(),
      _1188: (x0,x1) => x0.width = x1,
      _1190: (x0,x1) => x0.height = x1,
      _1195: (x0,x1) => x0.getContext(x1),
      _1275: (x0,x1) => x0.fetch(x1),
      _1276: x0 => x0.status,
      _1278: x0 => x0.body,
      _1280: x0 => x0.arrayBuffer(),
      _1285: x0 => x0.read(),
      _1286: x0 => x0.value,
      _1287: x0 => x0.done,
      _1289: x0 => x0.name,
      _1290: x0 => x0.x,
      _1291: x0 => x0.y,
      _1294: x0 => x0.top,
      _1295: x0 => x0.right,
      _1296: x0 => x0.bottom,
      _1297: x0 => x0.left,
      _1306: x0 => x0.height,
      _1307: x0 => x0.width,
      _1308: (x0,x1) => x0.value = x1,
      _1310: (x0,x1) => x0.placeholder = x1,
      _1311: (x0,x1) => x0.name = x1,
      _1312: x0 => x0.selectionDirection,
      _1313: x0 => x0.selectionStart,
      _1314: x0 => x0.selectionEnd,
      _1317: x0 => x0.value,
      _1319: (x0,x1,x2) => x0.setSelectionRange(x1,x2),
      _1323: x0 => x0.readText(),
      _1324: (x0,x1) => x0.writeText(x1),
      _1325: x0 => x0.altKey,
      _1326: x0 => x0.code,
      _1327: x0 => x0.ctrlKey,
      _1328: x0 => x0.key,
      _1329: x0 => x0.keyCode,
      _1330: x0 => x0.location,
      _1331: x0 => x0.metaKey,
      _1332: x0 => x0.repeat,
      _1333: x0 => x0.shiftKey,
      _1334: x0 => x0.isComposing,
      _1335: (x0,x1) => x0.getModifierState(x1),
      _1337: x0 => x0.state,
      _1338: (x0,x1) => x0.go(x1),
      _1341: (x0,x1,x2,x3) => x0.pushState(x1,x2,x3),
      _1342: (x0,x1,x2,x3) => x0.replaceState(x1,x2,x3),
      _1343: x0 => x0.pathname,
      _1344: x0 => x0.search,
      _1345: x0 => x0.hash,
      _1349: x0 => x0.state,
      _1356: f => finalizeWrapper(f, function(x0,x1) { return dartInstance.exports._1356(f,arguments.length,x0,x1) }),
      _1358: (x0,x1,x2) => x0.observe(x1,x2),
      _1361: x0 => x0.attributeName,
      _1362: x0 => x0.type,
      _1363: x0 => x0.matches,
      _1368: x0 => x0.matches,
      _1370: x0 => x0.relatedTarget,
      _1371: x0 => x0.clientX,
      _1372: x0 => x0.clientY,
      _1373: x0 => x0.offsetX,
      _1374: x0 => x0.offsetY,
      _1377: x0 => x0.button,
      _1378: x0 => x0.buttons,
      _1379: x0 => x0.ctrlKey,
      _1381: (x0,x1) => x0.getModifierState(x1),
      _1384: x0 => x0.pointerId,
      _1385: x0 => x0.pointerType,
      _1386: x0 => x0.pressure,
      _1387: x0 => x0.tiltX,
      _1388: x0 => x0.tiltY,
      _1390: x0 => x0.getCoalescedEvents(),
      _1392: x0 => x0.deltaX,
      _1393: x0 => x0.deltaY,
      _1394: x0 => x0.wheelDeltaX,
      _1395: x0 => x0.wheelDeltaY,
      _1396: x0 => x0.deltaMode,
      _1402: x0 => x0.changedTouches,
      _1404: x0 => x0.clientX,
      _1405: x0 => x0.clientY,
      _1407: x0 => x0.data,
      _1410: (x0,x1) => x0.disabled = x1,
      _1411: (x0,x1) => x0.type = x1,
      _1412: (x0,x1) => x0.max = x1,
      _1413: (x0,x1) => x0.min = x1,
      _1414: (x0,x1) => x0.value = x1,
      _1415: x0 => x0.value,
      _1416: x0 => x0.disabled,
      _1417: (x0,x1) => x0.disabled = x1,
      _1418: (x0,x1) => x0.placeholder = x1,
      _1419: (x0,x1) => x0.name = x1,
      _1420: (x0,x1) => x0.autocomplete = x1,
      _1421: x0 => x0.selectionDirection,
      _1422: x0 => x0.selectionStart,
      _1423: x0 => x0.selectionEnd,
      _1427: (x0,x1,x2) => x0.setSelectionRange(x1,x2),
      _1432: (x0,x1) => x0.add(x1),
      _1436: (x0,x1) => x0.noValidate = x1,
      _1437: (x0,x1) => x0.method = x1,
      _1438: (x0,x1) => x0.action = x1,
      _1463: x0 => x0.orientation,
      _1464: x0 => x0.width,
      _1465: x0 => x0.height,
      _1467: (x0,x1) => x0.lock(x1),
      _1484: f => finalizeWrapper(f, function(x0,x1) { return dartInstance.exports._1484(f,arguments.length,x0,x1) }),
      _1493: x0 => x0.length,
      _1494: (x0,x1) => x0.item(x1),
      _1495: x0 => x0.length,
      _1496: (x0,x1) => x0.item(x1),
      _1497: x0 => x0.iterator,
      _1498: x0 => x0.Segmenter,
      _1499: x0 => x0.v8BreakIterator,
      _1502: x0 => x0.done,
      _1503: x0 => x0.value,
      _1504: x0 => x0.index,
      _1508: (x0,x1) => x0.adoptText(x1),
      _1509: x0 => x0.first(),
      _1510: x0 => x0.next(),
      _1511: x0 => x0.current(),
      _1522: x0 => x0.hostElement,
      _1523: x0 => x0.viewConstraints,
      _1525: x0 => x0.maxHeight,
      _1526: x0 => x0.maxWidth,
      _1527: x0 => x0.minHeight,
      _1528: x0 => x0.minWidth,
      _1529: x0 => x0.loader,
      _1530: () => globalThis._flutter,
      _1532: (x0,x1) => x0.didCreateEngineInitializer(x1),
      _1533: (x0,x1,x2) => x0.call(x1,x2),
      _1534: f => finalizeWrapper(f, function(x0,x1) { return dartInstance.exports._1534(f,arguments.length,x0,x1) }),
      _1535: x0 => new Promise(x0),
      _1539: x0 => x0.length,
      _1541: x0 => x0.tracks,
      _1545: x0 => x0.image,
      _1552: x0 => x0.displayWidth,
      _1553: x0 => x0.displayHeight,
      _1554: x0 => x0.duration,
      _1558: x0 => x0.ready,
      _1559: x0 => x0.selectedTrack,
      _1560: x0 => x0.repetitionCount,
      _1561: x0 => x0.frameCount,
      _1633: x0 => new Array(x0),
      _1635: x0 => x0.length,
      _1637: (x0,x1) => x0[x1],
      _1638: (x0,x1,x2) => x0[x1] = x2,
      _1641: (x0,x1,x2) => new DataView(x0,x1,x2),
      _1643: x0 => new Int8Array(x0),
      _1644: (x0,x1,x2) => new Uint8Array(x0,x1,x2),
      _1645: x0 => new Uint8Array(x0),
      _1653: x0 => new Int32Array(x0),
      _1657: x0 => new Float32Array(x0),
      _1659: x0 => new Float64Array(x0),
      _1691: (decoder, codeUnits) => decoder.decode(codeUnits),
      _1692: () => new TextDecoder("utf-8", {fatal: true}),
      _1693: () => new TextDecoder("utf-8", {fatal: false}),
      _1694: x0 => new WeakRef(x0),
      _1695: x0 => x0.deref(),
      _1701: Date.now,
      _1703: s => new Date(s * 1000).getTimezoneOffset() * 60,
      _1704: s => {
        if (!/^\s*[+-]?(?:Infinity|NaN|(?:\.\d+|\d+(?:\.\d*)?)(?:[eE][+-]?\d+)?)\s*$/.test(s)) {
          return NaN;
        }
        return parseFloat(s);
      },
      _1705: () => {
        let stackString = new Error().stack.toString();
        let frames = stackString.split('\n');
        let drop = 2;
        if (frames[0] === 'Error') {
            drop += 1;
        }
        return frames.slice(drop).join('\n');
      },
      _1706: () => typeof dartUseDateNowForTicks !== "undefined",
      _1707: () => 1000 * performance.now(),
      _1708: () => Date.now(),
      _1711: () => new WeakMap(),
      _1712: (map, o) => map.get(o),
      _1713: (map, o, v) => map.set(o, v),
      _1714: () => globalThis.WeakRef,
      _1726: s => JSON.stringify(s),
      _1727: s => printToConsole(s),
      _1728: a => a.join(''),
      _1731: (s, t) => s.split(t),
      _1732: s => s.toLowerCase(),
      _1733: s => s.toUpperCase(),
      _1734: s => s.trim(),
      _1735: s => s.trimLeft(),
      _1736: s => s.trimRight(),
      _1738: (s, p, i) => s.indexOf(p, i),
      _1739: (s, p, i) => s.lastIndexOf(p, i),
      _1741: Object.is,
      _1742: s => s.toUpperCase(),
      _1743: s => s.toLowerCase(),
      _1744: (a, i) => a.push(i),
      _1748: a => a.pop(),
      _1749: (a, i) => a.splice(i, 1),
      _1751: (a, s) => a.join(s),
      _1755: a => a.length,
      _1757: (a, i) => a[i],
      _1758: (a, i, v) => a[i] = v,
      _1761: (o, start, length) => new Uint8Array(o.buffer, o.byteOffset + start, length),
      _1762: (o, start, length) => new Int8Array(o.buffer, o.byteOffset + start, length),
      _1763: (o, start, length) => new Uint8ClampedArray(o.buffer, o.byteOffset + start, length),
      _1764: (o, start, length) => new Uint16Array(o.buffer, o.byteOffset + start, length),
      _1765: (o, start, length) => new Int16Array(o.buffer, o.byteOffset + start, length),
      _1766: (o, start, length) => new Uint32Array(o.buffer, o.byteOffset + start, length),
      _1767: (o, start, length) => new Int32Array(o.buffer, o.byteOffset + start, length),
      _1769: (o, start, length) => new BigInt64Array(o.buffer, o.byteOffset + start, length),
      _1770: (o, start, length) => new Float32Array(o.buffer, o.byteOffset + start, length),
      _1771: (o, start, length) => new Float64Array(o.buffer, o.byteOffset + start, length),
      _1772: (t, s) => t.set(s),
      _1774: (o) => new DataView(o.buffer, o.byteOffset, o.byteLength),
      _1776: o => o.buffer,
      _1777: o => o.byteOffset,
      _1778: Function.prototype.call.bind(Object.getOwnPropertyDescriptor(DataView.prototype, 'byteLength').get),
      _1779: (b, o) => new DataView(b, o),
      _1780: (b, o, l) => new DataView(b, o, l),
      _1781: Function.prototype.call.bind(DataView.prototype.getUint8),
      _1782: Function.prototype.call.bind(DataView.prototype.setUint8),
      _1783: Function.prototype.call.bind(DataView.prototype.getInt8),
      _1784: Function.prototype.call.bind(DataView.prototype.setInt8),
      _1785: Function.prototype.call.bind(DataView.prototype.getUint16),
      _1786: Function.prototype.call.bind(DataView.prototype.setUint16),
      _1787: Function.prototype.call.bind(DataView.prototype.getInt16),
      _1788: Function.prototype.call.bind(DataView.prototype.setInt16),
      _1789: Function.prototype.call.bind(DataView.prototype.getUint32),
      _1790: Function.prototype.call.bind(DataView.prototype.setUint32),
      _1791: Function.prototype.call.bind(DataView.prototype.getInt32),
      _1792: Function.prototype.call.bind(DataView.prototype.setInt32),
      _1795: Function.prototype.call.bind(DataView.prototype.getBigInt64),
      _1796: Function.prototype.call.bind(DataView.prototype.setBigInt64),
      _1797: Function.prototype.call.bind(DataView.prototype.getFloat32),
      _1798: Function.prototype.call.bind(DataView.prototype.setFloat32),
      _1799: Function.prototype.call.bind(DataView.prototype.getFloat64),
      _1800: Function.prototype.call.bind(DataView.prototype.setFloat64),
      _1813: (o, t) => o instanceof t,
      _1815: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._1815(f,arguments.length,x0) }),
      _1816: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._1816(f,arguments.length,x0) }),
      _1817: o => Object.keys(o),
      _1818: (ms, c) =>
      setTimeout(() => dartInstance.exports.$invokeCallback(c),ms),
      _1819: (handle) => clearTimeout(handle),
      _1820: (ms, c) =>
      setInterval(() => dartInstance.exports.$invokeCallback(c), ms),
      _1821: (handle) => clearInterval(handle),
      _1822: (c) =>
      queueMicrotask(() => dartInstance.exports.$invokeCallback(c)),
      _1823: () => Date.now(),
      _1824: (s, m) => {
        try {
          return new RegExp(s, m);
        } catch (e) {
          return String(e);
        }
      },
      _1825: (x0,x1) => x0.exec(x1),
      _1826: (x0,x1) => x0.test(x1),
      _1827: (x0,x1) => x0.exec(x1),
      _1828: (x0,x1) => x0.exec(x1),
      _1829: x0 => x0.pop(),
      _1831: o => o === undefined,
      _1850: o => typeof o === 'function' && o[jsWrappedDartFunctionSymbol] === true,
      _1852: o => {
        const proto = Object.getPrototypeOf(o);
        return proto === Object.prototype || proto === null;
      },
      _1853: o => o instanceof RegExp,
      _1854: (l, r) => l === r,
      _1855: o => o,
      _1856: o => o,
      _1857: o => o,
      _1858: b => !!b,
      _1859: o => o.length,
      _1862: (o, i) => o[i],
      _1863: f => f.dartFunction,
      _1864: l => arrayFromDartList(Int8Array, l),
      _1865: l => arrayFromDartList(Uint8Array, l),
      _1866: l => arrayFromDartList(Uint8ClampedArray, l),
      _1867: l => arrayFromDartList(Int16Array, l),
      _1868: l => arrayFromDartList(Uint16Array, l),
      _1869: l => arrayFromDartList(Int32Array, l),
      _1870: l => arrayFromDartList(Uint32Array, l),
      _1871: l => arrayFromDartList(Float32Array, l),
      _1872: l => arrayFromDartList(Float64Array, l),
      _1873: x0 => new ArrayBuffer(x0),
      _1874: (data, length) => {
        const getValue = dartInstance.exports.$byteDataGetUint8;
        const view = new DataView(new ArrayBuffer(length));
        for (let i = 0; i < length; i++) {
          view.setUint8(i, getValue(data, i));
        }
        return view;
      },
      _1875: l => arrayFromDartList(Array, l),
      _1876: () => ({}),
      _1877: () => [],
      _1878: l => new Array(l),
      _1879: () => globalThis,
      _1880: (constructor, args) => {
        const factoryFunction = constructor.bind.apply(
            constructor, [null, ...args]);
        return new factoryFunction();
      },
      _1881: (o, p) => p in o,
      _1882: (o, p) => o[p],
      _1883: (o, p, v) => o[p] = v,
      _1884: (o, m, a) => o[m].apply(o, a),
      _1886: o => String(o),
      _1887: (p, s, f) => p.then(s, f),
      _1888: o => {
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
      },
      _1889: (jsArray, jsArrayOffset, wasmArray, wasmArrayOffset, length) => {
        const getValue = dartInstance.exports.$wasmI8ArrayGet;
        for (let i = 0; i < length; i++) {
          jsArray[jsArrayOffset + i] = getValue(wasmArray, wasmArrayOffset + i);
        }
      },
      _1890: (jsArray, jsArrayOffset, wasmArray, wasmArrayOffset, length) => {
        const setValue = dartInstance.exports.$wasmI8ArraySet;
        for (let i = 0; i < length; i++) {
          setValue(wasmArray, wasmArrayOffset + i, jsArray[jsArrayOffset + i]);
        }
      },
      _1893: (jsArray, jsArrayOffset, wasmArray, wasmArrayOffset, length) => {
        const getValue = dartInstance.exports.$wasmI32ArrayGet;
        for (let i = 0; i < length; i++) {
          jsArray[jsArrayOffset + i] = getValue(wasmArray, wasmArrayOffset + i);
        }
      },
      _1894: (jsArray, jsArrayOffset, wasmArray, wasmArrayOffset, length) => {
        const setValue = dartInstance.exports.$wasmI32ArraySet;
        for (let i = 0; i < length; i++) {
          setValue(wasmArray, wasmArrayOffset + i, jsArray[jsArrayOffset + i]);
        }
      },
      _1895: (jsArray, jsArrayOffset, wasmArray, wasmArrayOffset, length) => {
        const getValue = dartInstance.exports.$wasmF32ArrayGet;
        for (let i = 0; i < length; i++) {
          jsArray[jsArrayOffset + i] = getValue(wasmArray, wasmArrayOffset + i);
        }
      },
      _1896: (jsArray, jsArrayOffset, wasmArray, wasmArrayOffset, length) => {
        const setValue = dartInstance.exports.$wasmF32ArraySet;
        for (let i = 0; i < length; i++) {
          setValue(wasmArray, wasmArrayOffset + i, jsArray[jsArrayOffset + i]);
        }
      },
      _1897: (jsArray, jsArrayOffset, wasmArray, wasmArrayOffset, length) => {
        const getValue = dartInstance.exports.$wasmF64ArrayGet;
        for (let i = 0; i < length; i++) {
          jsArray[jsArrayOffset + i] = getValue(wasmArray, wasmArrayOffset + i);
        }
      },
      _1898: (jsArray, jsArrayOffset, wasmArray, wasmArrayOffset, length) => {
        const setValue = dartInstance.exports.$wasmF64ArraySet;
        for (let i = 0; i < length; i++) {
          setValue(wasmArray, wasmArrayOffset + i, jsArray[jsArrayOffset + i]);
        }
      },
      _1899: s => {
        if (/[[\]{}()*+?.\\^$|]/.test(s)) {
            s = s.replace(/[[\]{}()*+?.\\^$|]/g, '\\$&');
        }
        return s;
      },
      _1902: x0 => x0.index,
      _1907: x0 => x0.flags,
      _1908: x0 => x0.multiline,
      _1909: x0 => x0.ignoreCase,
      _1910: x0 => x0.unicode,
      _1911: x0 => x0.dotAll,
      _1912: (x0,x1) => x0.lastIndex = x1,
      _1914: (o, p) => o[p],
      _1917: x0 => x0.random(),
      _1918: x0 => x0.random(),
      _1922: () => globalThis.Math,
      _1924: Function.prototype.call.bind(Number.prototype.toString),
      _1925: (d, digits) => d.toFixed(digits),

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
      "fromCharCodeArray": (a, start, end) => {
        if (end <= start) return '';

        const read = dartInstance.exports.$wasmI16ArrayGet;
        let result = '';
        let index = start;
        const chunkLength = Math.min(end - index, 500);
        let array = new Array(chunkLength);
        while (index < end) {
          const newChunkLength = Math.min(end - index, 500);
          for (let i = 0; i < newChunkLength; i++) {
            array[i] = read(a, index++);
          }
          if (newChunkLength < chunkLength) {
            array = array.slice(0, newChunkLength);
          }
          result += String.fromCharCode(...array);
        }
        return result;
      },
    };

    const deferredLibraryHelper = {
      "loadModule": async (moduleName) => {
        if (!loadDeferredWasm) {
          throw "No implementation of loadDeferredWasm provided.";
        }
        const source = await Promise.resolve(loadDeferredWasm(moduleName));
        const module = await ((source instanceof Response)
            ? WebAssembly.compileStreaming(source, this.builtins)
            : WebAssembly.compile(source, this.builtins));
        return await WebAssembly.instantiate(module, {
          ...baseImports,
          ...additionalImports,
          "wasm:js-string": jsStringPolyfill,
          "module0": dartInstance.exports,
        });
      },
    };

    dartInstance = await WebAssembly.instantiate(this.module, {
      ...baseImports,
      ...additionalImports,
      "deferredLibraryHelper": deferredLibraryHelper,
      "wasm:js-string": jsStringPolyfill,
    });

    return new InstantiatedApp(this, dartInstance);
  }
}

class InstantiatedApp {
  constructor(compiledApp, instantiatedModule) {
    this.compiledApp = compiledApp;
    this.instantiatedModule = instantiatedModule;
  }

  // Call the main function with the given arguments.
  invokeMain(...args) {
    this.instantiatedModule.exports.$invokeMain(args);
  }
}

