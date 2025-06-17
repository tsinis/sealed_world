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
  // `loadDynamicModule` is a JS function that takes two string names matching,
  //   in order, a wasm file produced by the dart2wasm compiler during dynamic
  //   module compilation and a corresponding js file produced by the same
  //   compilation. It should return a JS Array containing 2 elements. The first
  //   should be the bytes for the wasm module in a format supported by
  //   `WebAssembly.compile` or `WebAssembly.compileStreaming`. The second
  //   should be the result of using the JS 'import' API on the js file path.
  async instantiate(additionalImports, {loadDeferredWasm, loadDynamicModule} = {}) {
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

      throw "Unable to print message: " + value;
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
            _4: (o, c) => o instanceof c,
      _7: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._7(f,arguments.length,x0) }),
      _8: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._8(f,arguments.length,x0) }),
      _37: x0 => new Array(x0),
      _39: x0 => x0.length,
      _41: (x0,x1) => x0[x1],
      _42: (x0,x1,x2) => { x0[x1] = x2 },
      _43: x0 => new Promise(x0),
      _45: (x0,x1,x2) => new DataView(x0,x1,x2),
      _47: x0 => new Int8Array(x0),
      _48: (x0,x1,x2) => new Uint8Array(x0,x1,x2),
      _49: x0 => new Uint8Array(x0),
      _51: x0 => new Uint8ClampedArray(x0),
      _53: x0 => new Int16Array(x0),
      _55: x0 => new Uint16Array(x0),
      _57: x0 => new Int32Array(x0),
      _59: x0 => new Uint32Array(x0),
      _61: x0 => new Float32Array(x0),
      _63: x0 => new Float64Array(x0),
      _65: (x0,x1,x2) => x0.call(x1,x2),
      _70: (decoder, codeUnits) => decoder.decode(codeUnits),
      _71: () => new TextDecoder("utf-8", {fatal: true}),
      _72: () => new TextDecoder("utf-8", {fatal: false}),
      _73: (s) => +s,
      _74: x0 => new Uint8Array(x0),
      _75: (x0,x1,x2) => x0.set(x1,x2),
      _76: (x0,x1) => x0.transferFromImageBitmap(x1),
      _78: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._78(f,arguments.length,x0) }),
      _79: x0 => new window.FinalizationRegistry(x0),
      _80: (x0,x1,x2,x3) => x0.register(x1,x2,x3),
      _81: (x0,x1) => x0.unregister(x1),
      _82: (x0,x1,x2) => x0.slice(x1,x2),
      _83: (x0,x1) => x0.decode(x1),
      _84: (x0,x1) => x0.segment(x1),
      _85: () => new TextDecoder(),
      _87: x0 => x0.click(),
      _88: x0 => x0.buffer,
      _89: x0 => x0.wasmMemory,
      _90: () => globalThis.window._flutter_skwasmInstance,
      _91: x0 => x0.rasterStartMilliseconds,
      _92: x0 => x0.rasterEndMilliseconds,
      _93: x0 => x0.imageBitmaps,
      _120: x0 => x0.remove(),
      _121: (x0,x1) => x0.append(x1),
      _122: (x0,x1,x2) => x0.insertBefore(x1,x2),
      _125: (x0,x1) => x0.removeChild(x1),
      _203: x0 => x0.stopPropagation(),
      _204: x0 => x0.preventDefault(),
      _206: (x0,x1,x2,x3) => x0.addEventListener(x1,x2,x3),
      _250: x0 => x0.select(),
      _251: (x0,x1) => x0.execCommand(x1),
      _253: x0 => x0.unlock(),
      _254: x0 => x0.getReader(),
      _255: (x0,x1,x2) => x0.addEventListener(x1,x2),
      _256: (x0,x1,x2) => x0.removeEventListener(x1,x2),
      _257: (x0,x1) => x0.item(x1),
      _258: x0 => x0.next(),
      _259: x0 => x0.now(),
      _260: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._260(f,arguments.length,x0) }),
      _261: (x0,x1) => x0.addListener(x1),
      _262: (x0,x1) => x0.removeListener(x1),
      _263: (x0,x1) => x0.matchMedia(x1),
      _264: (x0,x1) => x0.revokeObjectURL(x1),
      _265: x0 => x0.close(),
      _266: (x0,x1,x2,x3,x4) => ({type: x0,data: x1,premultiplyAlpha: x2,colorSpaceConversion: x3,preferAnimation: x4}),
      _267: x0 => new window.ImageDecoder(x0),
      _268: x0 => ({frameIndex: x0}),
      _269: (x0,x1) => x0.decode(x1),
      _270: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._270(f,arguments.length,x0) }),
      _271: (x0,x1) => x0.getModifierState(x1),
      _272: (x0,x1) => x0.removeProperty(x1),
      _273: (x0,x1) => x0.prepend(x1),
      _274: x0 => x0.disconnect(),
      _275: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._275(f,arguments.length,x0) }),
      _276: x0 => x0.blur(),
      _277: x0 => x0.hasFocus(),
      _278: (x0,x1) => x0.hasAttribute(x1),
      _279: (x0,x1) => x0.getModifierState(x1),
      _283: (x0,x1) => x0.appendChild(x1),
      _284: (x0,x1) => x0.createTextNode(x1),
      _285: (x0,x1) => x0.removeAttribute(x1),
      _286: x0 => x0.getBoundingClientRect(),
      _287: (x0,x1) => x0.contains(x1),
      _288: (x0,x1) => x0.observe(x1),
      _289: x0 => x0.disconnect(),
      _290: (x0,x1) => x0.closest(x1),
      _291: (x0,x1) => x0.getAttribute(x1),
      _701: () => globalThis.window.flutterConfiguration,
      _702: x0 => x0.assetBase,
      _708: x0 => x0.debugShowSemanticsNodes,
      _709: x0 => x0.hostElement,
      _710: x0 => x0.multiViewEnabled,
      _711: x0 => x0.nonce,
      _713: x0 => x0.fontFallbackBaseUrl,
      _717: x0 => x0.console,
      _718: x0 => x0.devicePixelRatio,
      _719: x0 => x0.document,
      _720: x0 => x0.history,
      _721: x0 => x0.innerHeight,
      _722: x0 => x0.innerWidth,
      _723: x0 => x0.location,
      _724: x0 => x0.navigator,
      _725: x0 => x0.visualViewport,
      _726: x0 => x0.performance,
      _728: x0 => x0.URL,
      _730: (x0,x1) => x0.getComputedStyle(x1),
      _731: x0 => x0.screen,
      _732: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._732(f,arguments.length,x0) }),
      _733: (x0,x1) => x0.requestAnimationFrame(x1),
      _738: (x0,x1) => x0.warn(x1),
      _741: x0 => globalThis.parseFloat(x0),
      _742: () => globalThis.window,
      _743: () => globalThis.Intl,
      _744: () => globalThis.Symbol,
      _745: (x0,x1,x2,x3,x4) => globalThis.createImageBitmap(x0,x1,x2,x3,x4),
      _747: x0 => x0.clipboard,
      _748: x0 => x0.maxTouchPoints,
      _749: x0 => x0.vendor,
      _750: x0 => x0.language,
      _751: x0 => x0.platform,
      _752: x0 => x0.userAgent,
      _753: (x0,x1) => x0.vibrate(x1),
      _754: x0 => x0.languages,
      _755: x0 => x0.documentElement,
      _756: (x0,x1) => x0.querySelector(x1),
      _759: (x0,x1) => x0.createElement(x1),
      _762: (x0,x1) => x0.createEvent(x1),
      _763: x0 => x0.activeElement,
      _766: x0 => x0.head,
      _767: x0 => x0.body,
      _769: (x0,x1) => { x0.title = x1 },
      _772: x0 => x0.visibilityState,
      _773: () => globalThis.document,
      _774: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._774(f,arguments.length,x0) }),
      _775: (x0,x1) => x0.dispatchEvent(x1),
      _783: x0 => x0.target,
      _785: x0 => x0.timeStamp,
      _786: x0 => x0.type,
      _788: (x0,x1,x2,x3) => x0.initEvent(x1,x2,x3),
      _795: x0 => x0.firstChild,
      _799: x0 => x0.parentElement,
      _801: (x0,x1) => { x0.textContent = x1 },
      _802: x0 => x0.parentNode,
      _804: x0 => x0.isConnected,
      _808: x0 => x0.firstElementChild,
      _810: x0 => x0.nextElementSibling,
      _811: x0 => x0.clientHeight,
      _812: x0 => x0.clientWidth,
      _813: x0 => x0.offsetHeight,
      _814: x0 => x0.offsetWidth,
      _815: x0 => x0.id,
      _816: (x0,x1) => { x0.id = x1 },
      _819: (x0,x1) => { x0.spellcheck = x1 },
      _820: x0 => x0.tagName,
      _821: x0 => x0.style,
      _823: (x0,x1) => x0.querySelectorAll(x1),
      _824: (x0,x1,x2) => x0.setAttribute(x1,x2),
      _826: (x0,x1) => { x0.tabIndex = x1 },
      _827: (x0,x1) => x0.focus(x1),
      _828: x0 => x0.scrollTop,
      _829: (x0,x1) => { x0.scrollTop = x1 },
      _830: x0 => x0.scrollLeft,
      _831: (x0,x1) => { x0.scrollLeft = x1 },
      _832: x0 => x0.classList,
      _834: (x0,x1) => { x0.className = x1 },
      _836: (x0,x1) => x0.getElementsByClassName(x1),
      _837: (x0,x1) => x0.attachShadow(x1),
      _840: x0 => x0.computedStyleMap(),
      _841: (x0,x1) => x0.get(x1),
      _847: (x0,x1) => x0.getPropertyValue(x1),
      _848: (x0,x1,x2,x3) => x0.setProperty(x1,x2,x3),
      _849: x0 => x0.offsetLeft,
      _850: x0 => x0.offsetTop,
      _851: x0 => x0.offsetParent,
      _852: (x0,x1) => { x0.name = x1 },
      _854: x0 => x0.content,
      _855: (x0,x1) => { x0.content = x1 },
      _859: (x0,x1) => { x0.src = x1 },
      _860: x0 => x0.naturalWidth,
      _861: x0 => x0.naturalHeight,
      _865: (x0,x1) => { x0.crossOrigin = x1 },
      _867: (x0,x1) => { x0.decoding = x1 },
      _868: x0 => x0.decode(),
      _873: (x0,x1) => { x0.nonce = x1 },
      _878: (x0,x1) => { x0.width = x1 },
      _880: (x0,x1) => { x0.height = x1 },
      _883: (x0,x1) => x0.getContext(x1),
      _942: (x0,x1) => x0.fetch(x1),
      _943: x0 => x0.status,
      _945: x0 => x0.body,
      _946: x0 => x0.arrayBuffer(),
      _949: x0 => x0.read(),
      _950: x0 => x0.value,
      _951: x0 => x0.done,
      _953: x0 => x0.name,
      _954: x0 => x0.x,
      _955: x0 => x0.y,
      _958: x0 => x0.top,
      _959: x0 => x0.right,
      _960: x0 => x0.bottom,
      _961: x0 => x0.left,
      _973: x0 => x0.height,
      _974: x0 => x0.width,
      _975: x0 => x0.scale,
      _976: (x0,x1) => { x0.value = x1 },
      _978: (x0,x1) => { x0.placeholder = x1 },
      _980: (x0,x1) => { x0.name = x1 },
      _981: x0 => x0.selectionDirection,
      _982: x0 => x0.selectionStart,
      _983: x0 => x0.selectionEnd,
      _986: x0 => x0.value,
      _988: (x0,x1,x2) => x0.setSelectionRange(x1,x2),
      _989: x0 => x0.readText(),
      _990: (x0,x1) => x0.writeText(x1),
      _992: x0 => x0.altKey,
      _993: x0 => x0.code,
      _994: x0 => x0.ctrlKey,
      _995: x0 => x0.key,
      _996: x0 => x0.keyCode,
      _997: x0 => x0.location,
      _998: x0 => x0.metaKey,
      _999: x0 => x0.repeat,
      _1000: x0 => x0.shiftKey,
      _1001: x0 => x0.isComposing,
      _1003: x0 => x0.state,
      _1004: (x0,x1) => x0.go(x1),
      _1006: (x0,x1,x2,x3) => x0.pushState(x1,x2,x3),
      _1007: (x0,x1,x2,x3) => x0.replaceState(x1,x2,x3),
      _1008: x0 => x0.pathname,
      _1009: x0 => x0.search,
      _1010: x0 => x0.hash,
      _1014: x0 => x0.state,
      _1017: (x0,x1) => x0.createObjectURL(x1),
      _1019: x0 => new Blob(x0),
      _1021: x0 => new MutationObserver(x0),
      _1022: (x0,x1,x2) => x0.observe(x1,x2),
      _1023: f => finalizeWrapper(f, function(x0,x1) { return dartInstance.exports._1023(f,arguments.length,x0,x1) }),
      _1026: x0 => x0.attributeName,
      _1027: x0 => x0.type,
      _1028: x0 => x0.matches,
      _1029: x0 => x0.matches,
      _1033: x0 => x0.relatedTarget,
      _1035: x0 => x0.clientX,
      _1036: x0 => x0.clientY,
      _1037: x0 => x0.offsetX,
      _1038: x0 => x0.offsetY,
      _1041: x0 => x0.button,
      _1042: x0 => x0.buttons,
      _1043: x0 => x0.ctrlKey,
      _1047: x0 => x0.pointerId,
      _1048: x0 => x0.pointerType,
      _1049: x0 => x0.pressure,
      _1050: x0 => x0.tiltX,
      _1051: x0 => x0.tiltY,
      _1052: x0 => x0.getCoalescedEvents(),
      _1055: x0 => x0.deltaX,
      _1056: x0 => x0.deltaY,
      _1057: x0 => x0.wheelDeltaX,
      _1058: x0 => x0.wheelDeltaY,
      _1059: x0 => x0.deltaMode,
      _1066: x0 => x0.changedTouches,
      _1069: x0 => x0.clientX,
      _1070: x0 => x0.clientY,
      _1073: x0 => x0.data,
      _1076: (x0,x1) => { x0.disabled = x1 },
      _1078: (x0,x1) => { x0.type = x1 },
      _1079: (x0,x1) => { x0.max = x1 },
      _1080: (x0,x1) => { x0.min = x1 },
      _1081: x0 => x0.value,
      _1082: (x0,x1) => { x0.value = x1 },
      _1083: x0 => x0.disabled,
      _1084: (x0,x1) => { x0.disabled = x1 },
      _1085: (x0,x1) => { x0.placeholder = x1 },
      _1088: (x0,x1) => { x0.name = x1 },
      _1090: (x0,x1) => { x0.autocomplete = x1 },
      _1091: x0 => x0.selectionDirection,
      _1092: x0 => x0.selectionStart,
      _1094: x0 => x0.selectionEnd,
      _1097: (x0,x1,x2) => x0.setSelectionRange(x1,x2),
      _1098: (x0,x1) => x0.add(x1),
      _1101: (x0,x1) => { x0.noValidate = x1 },
      _1102: (x0,x1) => { x0.method = x1 },
      _1103: (x0,x1) => { x0.action = x1 },
      _1129: x0 => x0.orientation,
      _1130: x0 => x0.width,
      _1131: x0 => x0.height,
      _1132: (x0,x1) => x0.lock(x1),
      _1151: x0 => new ResizeObserver(x0),
      _1154: f => finalizeWrapper(f, function(x0,x1) { return dartInstance.exports._1154(f,arguments.length,x0,x1) }),
      _1162: x0 => x0.length,
      _1163: x0 => x0.iterator,
      _1164: x0 => x0.Segmenter,
      _1165: x0 => x0.v8BreakIterator,
      _1166: (x0,x1) => new Intl.Segmenter(x0,x1),
      _1167: x0 => x0.done,
      _1168: x0 => x0.value,
      _1169: x0 => x0.index,
      _1173: (x0,x1) => new Intl.v8BreakIterator(x0,x1),
      _1174: (x0,x1) => x0.adoptText(x1),
      _1175: x0 => x0.first(),
      _1176: x0 => x0.next(),
      _1177: x0 => x0.current(),
      _1183: x0 => x0.hostElement,
      _1184: x0 => x0.viewConstraints,
      _1187: x0 => x0.maxHeight,
      _1188: x0 => x0.maxWidth,
      _1189: x0 => x0.minHeight,
      _1190: x0 => x0.minWidth,
      _1191: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._1191(f,arguments.length,x0) }),
      _1192: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._1192(f,arguments.length,x0) }),
      _1193: (x0,x1) => ({addView: x0,removeView: x1}),
      _1194: x0 => x0.loader,
      _1195: () => globalThis._flutter,
      _1196: (x0,x1) => x0.didCreateEngineInitializer(x1),
      _1197: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._1197(f,arguments.length,x0) }),
      _1198: f => finalizeWrapper(f, function() { return dartInstance.exports._1198(f,arguments.length) }),
      _1199: (x0,x1) => ({initializeEngine: x0,autoStart: x1}),
      _1200: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._1200(f,arguments.length,x0) }),
      _1201: x0 => ({runApp: x0}),
      _1202: f => finalizeWrapper(f, function(x0,x1) { return dartInstance.exports._1202(f,arguments.length,x0,x1) }),
      _1203: x0 => x0.length,
      _1204: () => globalThis.window.ImageDecoder,
      _1205: x0 => x0.tracks,
      _1207: x0 => x0.completed,
      _1209: x0 => x0.image,
      _1215: x0 => x0.displayWidth,
      _1216: x0 => x0.displayHeight,
      _1217: x0 => x0.duration,
      _1220: x0 => x0.ready,
      _1221: x0 => x0.selectedTrack,
      _1222: x0 => x0.repetitionCount,
      _1223: x0 => x0.frameCount,
      _1285: Date.now,
      _1287: s => new Date(s * 1000).getTimezoneOffset() * 60,
      _1288: s => {
        if (!/^\s*[+-]?(?:Infinity|NaN|(?:\.\d+|\d+(?:\.\d*)?)(?:[eE][+-]?\d+)?)\s*$/.test(s)) {
          return NaN;
        }
        return parseFloat(s);
      },
      _1289: () => {
        let stackString = new Error().stack.toString();
        let frames = stackString.split('\n');
        let drop = 2;
        if (frames[0] === 'Error') {
            drop += 1;
        }
        return frames.slice(drop).join('\n');
      },
      _1290: () => typeof dartUseDateNowForTicks !== "undefined",
      _1291: () => 1000 * performance.now(),
      _1292: () => Date.now(),
      _1295: () => new WeakMap(),
      _1296: (map, o) => map.get(o),
      _1297: (map, o, v) => map.set(o, v),
      _1298: x0 => new WeakRef(x0),
      _1299: x0 => x0.deref(),
      _1306: () => globalThis.WeakRef,
      _1310: s => JSON.stringify(s),
      _1311: s => printToConsole(s),
      _1312: (o, p, r) => o.replaceAll(p, () => r),
      _1314: Function.prototype.call.bind(String.prototype.toLowerCase),
      _1315: s => s.toUpperCase(),
      _1316: s => s.trim(),
      _1317: s => s.trimLeft(),
      _1318: s => s.trimRight(),
      _1319: (string, times) => string.repeat(times),
      _1320: Function.prototype.call.bind(String.prototype.indexOf),
      _1321: (s, p, i) => s.lastIndexOf(p, i),
      _1322: (string, token) => string.split(token),
      _1323: Object.is,
      _1324: o => o instanceof Array,
      _1325: (a, i) => a.push(i),
      _1329: a => a.pop(),
      _1330: (a, i) => a.splice(i, 1),
      _1331: (a, s) => a.join(s),
      _1335: a => a.length,
      _1337: (a, i) => a[i],
      _1338: (a, i, v) => a[i] = v,
      _1340: o => o instanceof ArrayBuffer,
      _1343: o => o instanceof Uint8Array,
      _1344: (o, start, length) => new Uint8Array(o.buffer, o.byteOffset + start, length),
      _1345: o => o instanceof Int8Array,
      _1346: (o, start, length) => new Int8Array(o.buffer, o.byteOffset + start, length),
      _1347: o => o instanceof Uint8ClampedArray,
      _1348: (o, start, length) => new Uint8ClampedArray(o.buffer, o.byteOffset + start, length),
      _1349: o => o instanceof Uint16Array,
      _1350: (o, start, length) => new Uint16Array(o.buffer, o.byteOffset + start, length),
      _1351: o => o instanceof Int16Array,
      _1352: (o, start, length) => new Int16Array(o.buffer, o.byteOffset + start, length),
      _1353: o => o instanceof Uint32Array,
      _1354: (o, start, length) => new Uint32Array(o.buffer, o.byteOffset + start, length),
      _1355: o => o instanceof Int32Array,
      _1356: (o, start, length) => new Int32Array(o.buffer, o.byteOffset + start, length),
      _1358: (o, start, length) => new BigInt64Array(o.buffer, o.byteOffset + start, length),
      _1359: o => o instanceof Float32Array,
      _1360: (o, start, length) => new Float32Array(o.buffer, o.byteOffset + start, length),
      _1361: o => o instanceof Float64Array,
      _1362: (o, start, length) => new Float64Array(o.buffer, o.byteOffset + start, length),
      _1363: (t, s) => t.set(s),
      _1365: (o) => new DataView(o.buffer, o.byteOffset, o.byteLength),
      _1367: o => o.buffer,
      _1368: o => o.byteOffset,
      _1369: Function.prototype.call.bind(Object.getOwnPropertyDescriptor(DataView.prototype, 'byteLength').get),
      _1370: (b, o) => new DataView(b, o),
      _1371: (b, o, l) => new DataView(b, o, l),
      _1372: Function.prototype.call.bind(DataView.prototype.getUint8),
      _1373: Function.prototype.call.bind(DataView.prototype.setUint8),
      _1374: Function.prototype.call.bind(DataView.prototype.getInt8),
      _1375: Function.prototype.call.bind(DataView.prototype.setInt8),
      _1376: Function.prototype.call.bind(DataView.prototype.getUint16),
      _1377: Function.prototype.call.bind(DataView.prototype.setUint16),
      _1378: Function.prototype.call.bind(DataView.prototype.getInt16),
      _1379: Function.prototype.call.bind(DataView.prototype.setInt16),
      _1380: Function.prototype.call.bind(DataView.prototype.getUint32),
      _1381: Function.prototype.call.bind(DataView.prototype.setUint32),
      _1382: Function.prototype.call.bind(DataView.prototype.getInt32),
      _1383: Function.prototype.call.bind(DataView.prototype.setInt32),
      _1386: Function.prototype.call.bind(DataView.prototype.getBigInt64),
      _1387: Function.prototype.call.bind(DataView.prototype.setBigInt64),
      _1388: Function.prototype.call.bind(DataView.prototype.getFloat32),
      _1389: Function.prototype.call.bind(DataView.prototype.setFloat32),
      _1390: Function.prototype.call.bind(DataView.prototype.getFloat64),
      _1391: Function.prototype.call.bind(DataView.prototype.setFloat64),
      _1404: (ms, c) =>
      setTimeout(() => dartInstance.exports.$invokeCallback(c),ms),
      _1405: (handle) => clearTimeout(handle),
      _1406: (ms, c) =>
      setInterval(() => dartInstance.exports.$invokeCallback(c), ms),
      _1407: (handle) => clearInterval(handle),
      _1408: (c) =>
      queueMicrotask(() => dartInstance.exports.$invokeCallback(c)),
      _1409: () => Date.now(),
      _1414: o => Object.keys(o),
      _1415: (s, m) => {
        try {
          return new RegExp(s, m);
        } catch (e) {
          return String(e);
        }
      },
      _1416: (x0,x1) => x0.exec(x1),
      _1417: (x0,x1) => x0.test(x1),
      _1418: x0 => x0.pop(),
      _1420: o => o === undefined,
      _1422: o => typeof o === 'function' && o[jsWrappedDartFunctionSymbol] === true,
      _1424: o => {
        const proto = Object.getPrototypeOf(o);
        return proto === Object.prototype || proto === null;
      },
      _1425: o => o instanceof RegExp,
      _1426: (l, r) => l === r,
      _1427: o => o,
      _1428: o => o,
      _1429: o => o,
      _1430: b => !!b,
      _1431: o => o.length,
      _1433: (o, i) => o[i],
      _1434: f => f.dartFunction,
      _1435: () => ({}),
      _1436: () => [],
      _1438: () => globalThis,
      _1439: (constructor, args) => {
        const factoryFunction = constructor.bind.apply(
            constructor, [null, ...args]);
        return new factoryFunction();
      },
      _1441: (o, p) => o[p],
      _1442: (o, p, v) => o[p] = v,
      _1443: (o, m, a) => o[m].apply(o, a),
      _1445: o => String(o),
      _1446: (p, s, f) => p.then(s, f),
      _1447: o => {
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
      _1448: o => [o],
      _1449: (o0, o1) => [o0, o1],
      _1450: (o0, o1, o2) => [o0, o1, o2],
      _1451: (o0, o1, o2, o3) => [o0, o1, o2, o3],
      _1452: (jsArray, jsArrayOffset, wasmArray, wasmArrayOffset, length) => {
        const getValue = dartInstance.exports.$wasmI8ArrayGet;
        for (let i = 0; i < length; i++) {
          jsArray[jsArrayOffset + i] = getValue(wasmArray, wasmArrayOffset + i);
        }
      },
      _1453: (jsArray, jsArrayOffset, wasmArray, wasmArrayOffset, length) => {
        const setValue = dartInstance.exports.$wasmI8ArraySet;
        for (let i = 0; i < length; i++) {
          setValue(wasmArray, wasmArrayOffset + i, jsArray[jsArrayOffset + i]);
        }
      },
      _1456: (jsArray, jsArrayOffset, wasmArray, wasmArrayOffset, length) => {
        const getValue = dartInstance.exports.$wasmI32ArrayGet;
        for (let i = 0; i < length; i++) {
          jsArray[jsArrayOffset + i] = getValue(wasmArray, wasmArrayOffset + i);
        }
      },
      _1457: (jsArray, jsArrayOffset, wasmArray, wasmArrayOffset, length) => {
        const setValue = dartInstance.exports.$wasmI32ArraySet;
        for (let i = 0; i < length; i++) {
          setValue(wasmArray, wasmArrayOffset + i, jsArray[jsArrayOffset + i]);
        }
      },
      _1458: (jsArray, jsArrayOffset, wasmArray, wasmArrayOffset, length) => {
        const getValue = dartInstance.exports.$wasmF32ArrayGet;
        for (let i = 0; i < length; i++) {
          jsArray[jsArrayOffset + i] = getValue(wasmArray, wasmArrayOffset + i);
        }
      },
      _1459: (jsArray, jsArrayOffset, wasmArray, wasmArrayOffset, length) => {
        const setValue = dartInstance.exports.$wasmF32ArraySet;
        for (let i = 0; i < length; i++) {
          setValue(wasmArray, wasmArrayOffset + i, jsArray[jsArrayOffset + i]);
        }
      },
      _1460: (jsArray, jsArrayOffset, wasmArray, wasmArrayOffset, length) => {
        const getValue = dartInstance.exports.$wasmF64ArrayGet;
        for (let i = 0; i < length; i++) {
          jsArray[jsArrayOffset + i] = getValue(wasmArray, wasmArrayOffset + i);
        }
      },
      _1461: (jsArray, jsArrayOffset, wasmArray, wasmArrayOffset, length) => {
        const setValue = dartInstance.exports.$wasmF64ArraySet;
        for (let i = 0; i < length; i++) {
          setValue(wasmArray, wasmArrayOffset + i, jsArray[jsArrayOffset + i]);
        }
      },
      _1462: x0 => new ArrayBuffer(x0),
      _1463: s => {
        if (/[[\]{}()*+?.\\^$|]/.test(s)) {
            s = s.replace(/[[\]{}()*+?.\\^$|]/g, '\\$&');
        }
        return s;
      },
      _1465: x0 => x0.index,
      _1467: x0 => x0.flags,
      _1468: x0 => x0.multiline,
      _1469: x0 => x0.ignoreCase,
      _1470: x0 => x0.unicode,
      _1471: x0 => x0.dotAll,
      _1472: (x0,x1) => { x0.lastIndex = x1 },
      _1473: (o, p) => p in o,
      _1474: (o, p) => o[p],
      _1477: x0 => x0.random(),
      _1480: () => globalThis.Math,
      _1481: Function.prototype.call.bind(Number.prototype.toString),
      _1482: Function.prototype.call.bind(BigInt.prototype.toString),
      _1483: Function.prototype.call.bind(Number.prototype.toString),
      _1484: (d, digits) => d.toFixed(digits),

    };

    const baseImports = {
      dart2wasm: dart2wasm,
      Math: Math,
      Date: Date,
      Object: Object,
      Array: Array,
      Reflect: Reflect,
      S: new Proxy({}, { get(_, prop) { return prop; } }),

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
      "intoCharCodeArray": (s, a, start) => {
        if (s === '') return 0;

        const write = dartInstance.exports.$wasmI16ArraySet;
        for (var i = 0; i < s.length; ++i) {
          write(a, start++, s.charCodeAt(i));
        }
        return s.length;
      },
      "test": (s) => typeof s == "string",
    };


    

    dartInstance = await WebAssembly.instantiate(this.module, {
      ...baseImports,
      ...additionalImports,
      
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
