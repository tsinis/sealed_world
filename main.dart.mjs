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

// Compiles a dart2wasm-generated main module from `source` which can then
// instantiatable via the `instantiate` method.
//
// `source` needs to be a `Response` object (or promise thereof) e.g. created
// via the `fetch()` JS API.
export async function compileStreaming(source) {
  const builtins = detectJsStringBuiltins()
      ? {builtins: ['js-string']} : {};
  return new CompiledApp(
      await WebAssembly.compileStreaming(source, builtins), builtins);
}

// Compiles a dart2wasm-generated wasm modules from `bytes` which is then
// instantiatable via the `instantiate` method.
export async function compile(bytes) {
  const builtins = detectJsStringBuiltins()
      ? {builtins: ['js-string']} : {};
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
      _374: x0 => x0.remove(),
      _375: (x0,x1) => x0.append(x1),
      _376: x0 => x0.remove(),
      _377: (x0,x1) => x0.append(x1),
      _378: x0 => x0.remove(),
      _379: x0 => x0.remove(),
      _380: x0 => x0.getBoundingClientRect(),
      _381: x0 => x0.remove(),
      _394: (x0,x1) => x0.append(x1),
      _395: x0 => x0.remove(),
      _396: (x0,x1) => x0.append(x1),
      _397: (x0,x1,x2) => x0.insertBefore(x1,x2),
      _398: x0 => x0.preventDefault(),
      _399: x0 => x0.preventDefault(),
      _400: x0 => x0.preventDefault(),
      _401: x0 => x0.preventDefault(),
      _402: x0 => x0.remove(),
      _403: (x0,x1) => x0.observe(x1),
      _404: x0 => x0.disconnect(),
      _405: (x0,x1) => x0.appendChild(x1),
      _406: (x0,x1) => x0.appendChild(x1),
      _407: (x0,x1) => x0.appendChild(x1),
      _408: (x0,x1) => x0.append(x1),
      _409: x0 => x0.remove(),
      _410: (x0,x1) => x0.append(x1),
      _412: (x0,x1) => x0.appendChild(x1),
      _413: (x0,x1) => x0.append(x1),
      _414: x0 => x0.remove(),
      _415: (x0,x1) => x0.append(x1),
      _419: (x0,x1) => x0.appendChild(x1),
      _420: x0 => x0.remove(),
      _977: () => globalThis.window.flutterConfiguration,
      _978: x0 => x0.assetBase,
      _983: x0 => x0.debugShowSemanticsNodes,
      _984: x0 => x0.hostElement,
      _985: x0 => x0.multiViewEnabled,
      _986: x0 => x0.nonce,
      _988: x0 => x0.fontFallbackBaseUrl,
      _989: x0 => x0.useColorEmoji,
      _994: x0 => x0.console,
      _995: x0 => x0.devicePixelRatio,
      _996: x0 => x0.document,
      _997: x0 => x0.history,
      _998: x0 => x0.innerHeight,
      _999: x0 => x0.innerWidth,
      _1000: x0 => x0.location,
      _1001: x0 => x0.navigator,
      _1002: x0 => x0.visualViewport,
      _1003: x0 => x0.performance,
      _1006: (x0,x1) => x0.dispatchEvent(x1),
      _1008: (x0,x1) => x0.matchMedia(x1),
      _1010: (x0,x1) => x0.getComputedStyle(x1),
      _1011: x0 => x0.screen,
      _1012: (x0,x1) => x0.requestAnimationFrame(x1),
      _1013: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._1013(f,arguments.length,x0) }),
      _1017: (x0,x1) => x0.warn(x1),
      _1021: () => globalThis.window,
      _1022: () => globalThis.Intl,
      _1023: () => globalThis.Symbol,
      _1026: x0 => x0.clipboard,
      _1027: x0 => x0.maxTouchPoints,
      _1028: x0 => x0.vendor,
      _1029: x0 => x0.language,
      _1030: x0 => x0.platform,
      _1031: x0 => x0.userAgent,
      _1032: x0 => x0.languages,
      _1033: x0 => x0.documentElement,
      _1034: (x0,x1) => x0.querySelector(x1),
      _1037: (x0,x1) => x0.createElement(x1),
      _1038: (x0,x1) => x0.execCommand(x1),
      _1041: (x0,x1) => x0.createTextNode(x1),
      _1042: (x0,x1) => x0.createEvent(x1),
      _1046: x0 => x0.head,
      _1047: x0 => x0.body,
      _1048: (x0,x1) => x0.title = x1,
      _1051: x0 => x0.activeElement,
      _1053: x0 => x0.visibilityState,
      _1054: x0 => x0.hasFocus(),
      _1055: () => globalThis.document,
      _1056: (x0,x1,x2,x3) => x0.addEventListener(x1,x2,x3),
      _1057: (x0,x1,x2,x3) => x0.addEventListener(x1,x2,x3),
      _1060: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._1060(f,arguments.length,x0) }),
      _1061: x0 => x0.target,
      _1063: x0 => x0.timeStamp,
      _1064: x0 => x0.type,
      _1067: x0 => x0.preventDefault(),
      _1069: (x0,x1,x2,x3) => x0.initEvent(x1,x2,x3),
      _1076: x0 => x0.firstChild,
      _1081: x0 => x0.parentElement,
      _1083: x0 => x0.parentNode,
      _1086: (x0,x1) => x0.removeChild(x1),
      _1087: (x0,x1) => x0.removeChild(x1),
      _1088: x0 => x0.isConnected,
      _1089: (x0,x1) => x0.textContent = x1,
      _1092: (x0,x1) => x0.contains(x1),
      _1098: x0 => x0.firstElementChild,
      _1100: x0 => x0.nextElementSibling,
      _1101: x0 => x0.clientHeight,
      _1102: x0 => x0.clientWidth,
      _1103: x0 => x0.offsetHeight,
      _1104: x0 => x0.offsetWidth,
      _1105: x0 => x0.id,
      _1106: (x0,x1) => x0.id = x1,
      _1109: (x0,x1) => x0.spellcheck = x1,
      _1110: x0 => x0.tagName,
      _1111: x0 => x0.style,
      _1112: (x0,x1) => x0.append(x1),
      _1113: (x0,x1) => x0.getAttribute(x1),
      _1114: x0 => x0.getBoundingClientRect(),
      _1117: (x0,x1) => x0.closest(x1),
      _1120: (x0,x1) => x0.querySelectorAll(x1),
      _1122: x0 => x0.remove(),
      _1124: (x0,x1,x2) => x0.setAttribute(x1,x2),
      _1125: (x0,x1) => x0.removeAttribute(x1),
      _1126: (x0,x1) => x0.tabIndex = x1,
      _1129: (x0,x1) => x0.focus(x1),
      _1130: x0 => x0.scrollTop,
      _1131: (x0,x1) => x0.scrollTop = x1,
      _1132: x0 => x0.scrollLeft,
      _1133: (x0,x1) => x0.scrollLeft = x1,
      _1134: x0 => x0.classList,
      _1135: (x0,x1) => x0.className = x1,
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
      _1176: (x0,x1) => x0.nonce = x1,
      _1181: x0 => x0.now(),
      _1183: (x0,x1) => x0.width = x1,
      _1185: (x0,x1) => x0.height = x1,
      _1190: (x0,x1) => x0.getContext(x1),
      _1267: (x0,x1) => x0.fetch(x1),
      _1268: x0 => x0.status,
      _1270: x0 => x0.body,
      _1271: x0 => x0.arrayBuffer(),
      _1276: x0 => x0.read(),
      _1277: x0 => x0.value,
      _1278: x0 => x0.done,
      _1280: x0 => x0.name,
      _1281: x0 => x0.x,
      _1282: x0 => x0.y,
      _1285: x0 => x0.top,
      _1286: x0 => x0.right,
      _1287: x0 => x0.bottom,
      _1288: x0 => x0.left,
      _1299: x0 => x0.height,
      _1300: x0 => x0.width,
      _1301: (x0,x1) => x0.value = x1,
      _1303: (x0,x1) => x0.placeholder = x1,
      _1304: (x0,x1) => x0.name = x1,
      _1305: x0 => x0.selectionDirection,
      _1306: x0 => x0.selectionStart,
      _1307: x0 => x0.selectionEnd,
      _1310: x0 => x0.value,
      _1312: (x0,x1,x2) => x0.setSelectionRange(x1,x2),
      _1315: x0 => x0.readText(),
      _1316: (x0,x1) => x0.writeText(x1),
      _1317: x0 => x0.altKey,
      _1318: x0 => x0.code,
      _1319: x0 => x0.ctrlKey,
      _1320: x0 => x0.key,
      _1321: x0 => x0.keyCode,
      _1322: x0 => x0.location,
      _1323: x0 => x0.metaKey,
      _1324: x0 => x0.repeat,
      _1325: x0 => x0.shiftKey,
      _1326: x0 => x0.isComposing,
      _1327: (x0,x1) => x0.getModifierState(x1),
      _1329: x0 => x0.state,
      _1330: (x0,x1) => x0.go(x1),
      _1332: (x0,x1,x2,x3) => x0.pushState(x1,x2,x3),
      _1333: (x0,x1,x2,x3) => x0.replaceState(x1,x2,x3),
      _1334: x0 => x0.pathname,
      _1335: x0 => x0.search,
      _1336: x0 => x0.hash,
      _1340: x0 => x0.state,
      _1346: f => finalizeWrapper(f, function(x0,x1) { return dartInstance.exports._1346(f,arguments.length,x0,x1) }),
      _1349: (x0,x1,x2) => x0.observe(x1,x2),
      _1352: x0 => x0.attributeName,
      _1353: x0 => x0.type,
      _1354: x0 => x0.matches,
      _1357: x0 => x0.matches,
      _1359: x0 => x0.relatedTarget,
      _1360: x0 => x0.clientX,
      _1361: x0 => x0.clientY,
      _1362: x0 => x0.offsetX,
      _1363: x0 => x0.offsetY,
      _1366: x0 => x0.button,
      _1367: x0 => x0.buttons,
      _1368: x0 => x0.ctrlKey,
      _1369: (x0,x1) => x0.getModifierState(x1),
      _1372: x0 => x0.pointerId,
      _1373: x0 => x0.pointerType,
      _1374: x0 => x0.pressure,
      _1375: x0 => x0.tiltX,
      _1376: x0 => x0.tiltY,
      _1377: x0 => x0.getCoalescedEvents(),
      _1379: x0 => x0.deltaX,
      _1380: x0 => x0.deltaY,
      _1381: x0 => x0.wheelDeltaX,
      _1382: x0 => x0.wheelDeltaY,
      _1383: x0 => x0.deltaMode,
      _1389: x0 => x0.changedTouches,
      _1391: x0 => x0.clientX,
      _1392: x0 => x0.clientY,
      _1394: x0 => x0.data,
      _1397: (x0,x1) => x0.disabled = x1,
      _1398: (x0,x1) => x0.type = x1,
      _1399: (x0,x1) => x0.max = x1,
      _1400: (x0,x1) => x0.min = x1,
      _1401: (x0,x1) => x0.value = x1,
      _1402: x0 => x0.value,
      _1403: x0 => x0.disabled,
      _1404: (x0,x1) => x0.disabled = x1,
      _1405: (x0,x1) => x0.placeholder = x1,
      _1406: (x0,x1) => x0.name = x1,
      _1407: (x0,x1) => x0.autocomplete = x1,
      _1408: x0 => x0.selectionDirection,
      _1409: x0 => x0.selectionStart,
      _1410: x0 => x0.selectionEnd,
      _1414: (x0,x1,x2) => x0.setSelectionRange(x1,x2),
      _1419: (x0,x1) => x0.add(x1),
      _1422: (x0,x1) => x0.noValidate = x1,
      _1423: (x0,x1) => x0.method = x1,
      _1424: (x0,x1) => x0.action = x1,
      _1449: x0 => x0.orientation,
      _1450: x0 => x0.width,
      _1451: x0 => x0.height,
      _1453: (x0,x1) => x0.lock(x1),
      _1469: f => finalizeWrapper(f, function(x0,x1) { return dartInstance.exports._1469(f,arguments.length,x0,x1) }),
      _1480: x0 => x0.length,
      _1482: (x0,x1) => x0.item(x1),
      _1483: x0 => x0.length,
      _1484: (x0,x1) => x0.item(x1),
      _1485: x0 => x0.iterator,
      _1486: x0 => x0.Segmenter,
      _1487: x0 => x0.v8BreakIterator,
      _1490: x0 => x0.done,
      _1491: x0 => x0.value,
      _1492: x0 => x0.index,
      _1496: (x0,x1) => x0.adoptText(x1),
      _1497: x0 => x0.first(),
      _1498: x0 => x0.next(),
      _1499: x0 => x0.current(),
      _1511: x0 => x0.hostElement,
      _1512: x0 => x0.viewConstraints,
      _1514: x0 => x0.maxHeight,
      _1515: x0 => x0.maxWidth,
      _1516: x0 => x0.minHeight,
      _1517: x0 => x0.minWidth,
      _1518: x0 => x0.loader,
      _1519: () => globalThis._flutter,
      _1520: (x0,x1) => x0.didCreateEngineInitializer(x1),
      _1521: (x0,x1,x2) => x0.call(x1,x2),
      _1522: () => globalThis.Promise,
      _1523: f => finalizeWrapper(f, function(x0,x1) { return dartInstance.exports._1523(f,arguments.length,x0,x1) }),
      _1527: x0 => x0.length,
      _1530: x0 => x0.tracks,
      _1534: x0 => x0.image,
      _1539: x0 => x0.codedWidth,
      _1540: x0 => x0.codedHeight,
      _1543: x0 => x0.duration,
      _1546: x0 => x0.ready,
      _1547: x0 => x0.selectedTrack,
      _1548: x0 => x0.repetitionCount,
      _1549: x0 => x0.frameCount,
      _1620: x0 => new Array(x0),
      _1622: x0 => x0.length,
      _1624: (x0,x1) => x0[x1],
      _1625: (x0,x1,x2) => x0[x1] = x2,
      _1628: (x0,x1,x2) => new DataView(x0,x1,x2),
      _1630: x0 => new Int8Array(x0),
      _1631: (x0,x1,x2) => new Uint8Array(x0,x1,x2),
      _1632: x0 => new Uint8Array(x0),
      _1640: x0 => new Int32Array(x0),
      _1644: x0 => new Float32Array(x0),
      _1646: x0 => new Float64Array(x0),
      _1679: (decoder, codeUnits) => decoder.decode(codeUnits),
      _1680: () => new TextDecoder("utf-8", {fatal: true}),
      _1681: () => new TextDecoder("utf-8", {fatal: false}),
      _1682: x0 => new WeakRef(x0),
      _1683: x0 => x0.deref(),
      _1689: Date.now,
      _1691: s => new Date(s * 1000).getTimezoneOffset() * 60,
      _1692: s => {
        if (!/^\s*[+-]?(?:Infinity|NaN|(?:\.\d+|\d+(?:\.\d*)?)(?:[eE][+-]?\d+)?)\s*$/.test(s)) {
          return NaN;
        }
        return parseFloat(s);
      },
      _1693: () => {
        let stackString = new Error().stack.toString();
        let frames = stackString.split('\n');
        let drop = 2;
        if (frames[0] === 'Error') {
            drop += 1;
        }
        return frames.slice(drop).join('\n');
      },
      _1694: () => typeof dartUseDateNowForTicks !== "undefined",
      _1695: () => 1000 * performance.now(),
      _1696: () => Date.now(),
      _1699: () => new WeakMap(),
      _1700: (map, o) => map.get(o),
      _1701: (map, o, v) => map.set(o, v),
      _1702: () => globalThis.WeakRef,
      _1712: s => JSON.stringify(s),
      _1713: s => printToConsole(s),
      _1714: a => a.join(''),
      _1717: (s, t) => s.split(t),
      _1718: s => s.toLowerCase(),
      _1719: s => s.toUpperCase(),
      _1720: s => s.trim(),
      _1721: s => s.trimLeft(),
      _1722: s => s.trimRight(),
      _1724: (s, p, i) => s.indexOf(p, i),
      _1725: (s, p, i) => s.lastIndexOf(p, i),
      _1727: Object.is,
      _1728: s => s.toUpperCase(),
      _1729: s => s.toLowerCase(),
      _1730: (a, i) => a.push(i),
      _1734: a => a.pop(),
      _1735: (a, i) => a.splice(i, 1),
      _1737: (a, s) => a.join(s),
      _1741: a => a.length,
      _1743: (a, i) => a[i],
      _1744: (a, i, v) => a[i] = v,
      _1747: (o, start, length) => new Uint8Array(o.buffer, o.byteOffset + start, length),
      _1748: (o, start, length) => new Int8Array(o.buffer, o.byteOffset + start, length),
      _1749: (o, start, length) => new Uint8ClampedArray(o.buffer, o.byteOffset + start, length),
      _1750: (o, start, length) => new Uint16Array(o.buffer, o.byteOffset + start, length),
      _1751: (o, start, length) => new Int16Array(o.buffer, o.byteOffset + start, length),
      _1752: (o, start, length) => new Uint32Array(o.buffer, o.byteOffset + start, length),
      _1753: (o, start, length) => new Int32Array(o.buffer, o.byteOffset + start, length),
      _1755: (o, start, length) => new BigInt64Array(o.buffer, o.byteOffset + start, length),
      _1756: (o, start, length) => new Float32Array(o.buffer, o.byteOffset + start, length),
      _1757: (o, start, length) => new Float64Array(o.buffer, o.byteOffset + start, length),
      _1758: (t, s) => t.set(s),
      _1760: (o) => new DataView(o.buffer, o.byteOffset, o.byteLength),
      _1762: o => o.buffer,
      _1763: o => o.byteOffset,
      _1764: Function.prototype.call.bind(Object.getOwnPropertyDescriptor(DataView.prototype, 'byteLength').get),
      _1765: (b, o) => new DataView(b, o),
      _1766: (b, o, l) => new DataView(b, o, l),
      _1767: Function.prototype.call.bind(DataView.prototype.getUint8),
      _1768: Function.prototype.call.bind(DataView.prototype.setUint8),
      _1769: Function.prototype.call.bind(DataView.prototype.getInt8),
      _1770: Function.prototype.call.bind(DataView.prototype.setInt8),
      _1771: Function.prototype.call.bind(DataView.prototype.getUint16),
      _1772: Function.prototype.call.bind(DataView.prototype.setUint16),
      _1773: Function.prototype.call.bind(DataView.prototype.getInt16),
      _1774: Function.prototype.call.bind(DataView.prototype.setInt16),
      _1775: Function.prototype.call.bind(DataView.prototype.getUint32),
      _1776: Function.prototype.call.bind(DataView.prototype.setUint32),
      _1777: Function.prototype.call.bind(DataView.prototype.getInt32),
      _1778: Function.prototype.call.bind(DataView.prototype.setInt32),
      _1781: Function.prototype.call.bind(DataView.prototype.getBigInt64),
      _1782: Function.prototype.call.bind(DataView.prototype.setBigInt64),
      _1783: Function.prototype.call.bind(DataView.prototype.getFloat32),
      _1784: Function.prototype.call.bind(DataView.prototype.setFloat32),
      _1785: Function.prototype.call.bind(DataView.prototype.getFloat64),
      _1786: Function.prototype.call.bind(DataView.prototype.setFloat64),
      _1799: (o, t) => o instanceof t,
      _1801: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._1801(f,arguments.length,x0) }),
      _1802: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._1802(f,arguments.length,x0) }),
      _1803: o => Object.keys(o),
      _1804: (ms, c) =>
      setTimeout(() => dartInstance.exports.$invokeCallback(c),ms),
      _1805: (handle) => clearTimeout(handle),
      _1806: (ms, c) =>
      setInterval(() => dartInstance.exports.$invokeCallback(c), ms),
      _1807: (handle) => clearInterval(handle),
      _1808: (c) =>
      queueMicrotask(() => dartInstance.exports.$invokeCallback(c)),
      _1809: () => Date.now(),
      _1810: (s, m) => {
        try {
          return new RegExp(s, m);
        } catch (e) {
          return String(e);
        }
      },
      _1811: (x0,x1) => x0.exec(x1),
      _1812: (x0,x1) => x0.test(x1),
      _1813: (x0,x1) => x0.exec(x1),
      _1814: (x0,x1) => x0.exec(x1),
      _1815: x0 => x0.pop(),
      _1817: o => o === undefined,
      _1836: o => typeof o === 'function' && o[jsWrappedDartFunctionSymbol] === true,
      _1838: o => {
        const proto = Object.getPrototypeOf(o);
        return proto === Object.prototype || proto === null;
      },
      _1839: o => o instanceof RegExp,
      _1840: (l, r) => l === r,
      _1841: o => o,
      _1842: o => o,
      _1843: o => o,
      _1844: b => !!b,
      _1845: o => o.length,
      _1848: (o, i) => o[i],
      _1849: f => f.dartFunction,
      _1850: l => arrayFromDartList(Int8Array, l),
      _1851: l => arrayFromDartList(Uint8Array, l),
      _1852: l => arrayFromDartList(Uint8ClampedArray, l),
      _1853: l => arrayFromDartList(Int16Array, l),
      _1854: l => arrayFromDartList(Uint16Array, l),
      _1855: l => arrayFromDartList(Int32Array, l),
      _1856: l => arrayFromDartList(Uint32Array, l),
      _1857: l => arrayFromDartList(Float32Array, l),
      _1858: l => arrayFromDartList(Float64Array, l),
      _1859: x0 => new ArrayBuffer(x0),
      _1860: (data, length) => {
        const getValue = dartInstance.exports.$byteDataGetUint8;
        const view = new DataView(new ArrayBuffer(length));
        for (let i = 0; i < length; i++) {
          view.setUint8(i, getValue(data, i));
        }
        return view;
      },
      _1861: l => arrayFromDartList(Array, l),
      _1862: (s, length) => {
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
      },
      _1863: (s, length) => {
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
      },
      _1864: (s) => {
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
      },
      _1865: () => ({}),
      _1866: () => [],
      _1867: l => new Array(l),
      _1868: () => globalThis,
      _1869: (constructor, args) => {
        const factoryFunction = constructor.bind.apply(
            constructor, [null, ...args]);
        return new factoryFunction();
      },
      _1870: (o, p) => p in o,
      _1871: (o, p) => o[p],
      _1872: (o, p, v) => o[p] = v,
      _1873: (o, m, a) => o[m].apply(o, a),
      _1875: o => String(o),
      _1876: (p, s, f) => p.then(s, f),
      _1877: o => {
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
      _1878: (jsArray, jsArrayOffset, wasmArray, wasmArrayOffset, length) => {
        const getValue = dartInstance.exports.$wasmI8ArrayGet;
        for (let i = 0; i < length; i++) {
          jsArray[jsArrayOffset + i] = getValue(wasmArray, wasmArrayOffset + i);
        }
      },
      _1879: (jsArray, jsArrayOffset, wasmArray, wasmArrayOffset, length) => {
        const setValue = dartInstance.exports.$wasmI8ArraySet;
        for (let i = 0; i < length; i++) {
          setValue(wasmArray, wasmArrayOffset + i, jsArray[jsArrayOffset + i]);
        }
      },
      _1882: (jsArray, jsArrayOffset, wasmArray, wasmArrayOffset, length) => {
        const getValue = dartInstance.exports.$wasmI32ArrayGet;
        for (let i = 0; i < length; i++) {
          jsArray[jsArrayOffset + i] = getValue(wasmArray, wasmArrayOffset + i);
        }
      },
      _1883: (jsArray, jsArrayOffset, wasmArray, wasmArrayOffset, length) => {
        const setValue = dartInstance.exports.$wasmI32ArraySet;
        for (let i = 0; i < length; i++) {
          setValue(wasmArray, wasmArrayOffset + i, jsArray[jsArrayOffset + i]);
        }
      },
      _1884: (jsArray, jsArrayOffset, wasmArray, wasmArrayOffset, length) => {
        const getValue = dartInstance.exports.$wasmF32ArrayGet;
        for (let i = 0; i < length; i++) {
          jsArray[jsArrayOffset + i] = getValue(wasmArray, wasmArrayOffset + i);
        }
      },
      _1885: (jsArray, jsArrayOffset, wasmArray, wasmArrayOffset, length) => {
        const setValue = dartInstance.exports.$wasmF32ArraySet;
        for (let i = 0; i < length; i++) {
          setValue(wasmArray, wasmArrayOffset + i, jsArray[jsArrayOffset + i]);
        }
      },
      _1886: (jsArray, jsArrayOffset, wasmArray, wasmArrayOffset, length) => {
        const getValue = dartInstance.exports.$wasmF64ArrayGet;
        for (let i = 0; i < length; i++) {
          jsArray[jsArrayOffset + i] = getValue(wasmArray, wasmArrayOffset + i);
        }
      },
      _1887: (jsArray, jsArrayOffset, wasmArray, wasmArrayOffset, length) => {
        const setValue = dartInstance.exports.$wasmF64ArraySet;
        for (let i = 0; i < length; i++) {
          setValue(wasmArray, wasmArrayOffset + i, jsArray[jsArrayOffset + i]);
        }
      },
      _1888: s => {
        if (/[[\]{}()*+?.\\^$|]/.test(s)) {
            s = s.replace(/[[\]{}()*+?.\\^$|]/g, '\\$&');
        }
        return s;
      },
      _1891: x0 => x0.index,
      _1897: x0 => x0.flags,
      _1898: x0 => x0.multiline,
      _1899: x0 => x0.ignoreCase,
      _1900: x0 => x0.unicode,
      _1901: x0 => x0.dotAll,
      _1902: (x0,x1) => x0.lastIndex = x1,
      _1907: v => v.toString(),
      _1908: (d, digits) => d.toFixed(digits),
      _1912: x0 => x0.random(),
      _1913: x0 => x0.random(),
      _1917: () => globalThis.Math,

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

