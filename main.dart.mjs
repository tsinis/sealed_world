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
      _202: x0 => x0.stopPropagation(),
      _203: x0 => x0.preventDefault(),
      _205: (x0,x1,x2,x3) => x0.addEventListener(x1,x2,x3),
      _249: x0 => x0.select(),
      _250: (x0,x1) => x0.execCommand(x1),
      _252: x0 => x0.unlock(),
      _253: x0 => x0.getReader(),
      _254: (x0,x1,x2) => x0.addEventListener(x1,x2),
      _255: (x0,x1,x2) => x0.removeEventListener(x1,x2),
      _256: (x0,x1) => x0.item(x1),
      _257: x0 => x0.next(),
      _258: x0 => x0.now(),
      _259: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._259(f,arguments.length,x0) }),
      _260: (x0,x1) => x0.addListener(x1),
      _261: (x0,x1) => x0.removeListener(x1),
      _262: (x0,x1) => x0.matchMedia(x1),
      _263: (x0,x1) => x0.revokeObjectURL(x1),
      _264: x0 => x0.close(),
      _265: (x0,x1,x2,x3,x4) => ({type: x0,data: x1,premultiplyAlpha: x2,colorSpaceConversion: x3,preferAnimation: x4}),
      _266: x0 => new window.ImageDecoder(x0),
      _267: x0 => ({frameIndex: x0}),
      _268: (x0,x1) => x0.decode(x1),
      _269: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._269(f,arguments.length,x0) }),
      _270: (x0,x1) => x0.getModifierState(x1),
      _271: (x0,x1) => x0.removeProperty(x1),
      _272: (x0,x1) => x0.prepend(x1),
      _273: x0 => x0.disconnect(),
      _274: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._274(f,arguments.length,x0) }),
      _275: x0 => x0.blur(),
      _276: x0 => x0.hasFocus(),
      _277: (x0,x1) => x0.hasAttribute(x1),
      _278: (x0,x1) => x0.getModifierState(x1),
      _282: (x0,x1) => x0.appendChild(x1),
      _283: (x0,x1) => x0.createTextNode(x1),
      _284: (x0,x1) => x0.removeAttribute(x1),
      _285: x0 => x0.getBoundingClientRect(),
      _286: (x0,x1) => x0.contains(x1),
      _287: (x0,x1) => x0.observe(x1),
      _288: x0 => x0.disconnect(),
      _289: (x0,x1) => x0.closest(x1),
      _290: (x0,x1) => x0.getAttribute(x1),
      _700: () => globalThis.window.flutterConfiguration,
      _701: x0 => x0.assetBase,
      _707: x0 => x0.debugShowSemanticsNodes,
      _708: x0 => x0.hostElement,
      _709: x0 => x0.multiViewEnabled,
      _710: x0 => x0.nonce,
      _712: x0 => x0.fontFallbackBaseUrl,
      _716: x0 => x0.console,
      _717: x0 => x0.devicePixelRatio,
      _718: x0 => x0.document,
      _719: x0 => x0.history,
      _720: x0 => x0.innerHeight,
      _721: x0 => x0.innerWidth,
      _722: x0 => x0.location,
      _723: x0 => x0.navigator,
      _724: x0 => x0.visualViewport,
      _725: x0 => x0.performance,
      _727: x0 => x0.URL,
      _729: (x0,x1) => x0.getComputedStyle(x1),
      _730: x0 => x0.screen,
      _731: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._731(f,arguments.length,x0) }),
      _732: (x0,x1) => x0.requestAnimationFrame(x1),
      _737: (x0,x1) => x0.warn(x1),
      _740: x0 => globalThis.parseFloat(x0),
      _741: () => globalThis.window,
      _742: () => globalThis.Intl,
      _743: () => globalThis.Symbol,
      _744: (x0,x1,x2,x3,x4) => globalThis.createImageBitmap(x0,x1,x2,x3,x4),
      _746: x0 => x0.clipboard,
      _747: x0 => x0.maxTouchPoints,
      _748: x0 => x0.vendor,
      _749: x0 => x0.language,
      _750: x0 => x0.platform,
      _751: x0 => x0.userAgent,
      _752: (x0,x1) => x0.vibrate(x1),
      _753: x0 => x0.languages,
      _754: x0 => x0.documentElement,
      _755: (x0,x1) => x0.querySelector(x1),
      _758: (x0,x1) => x0.createElement(x1),
      _761: (x0,x1) => x0.createEvent(x1),
      _762: x0 => x0.activeElement,
      _765: x0 => x0.head,
      _766: x0 => x0.body,
      _768: (x0,x1) => { x0.title = x1 },
      _771: x0 => x0.visibilityState,
      _772: () => globalThis.document,
      _773: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._773(f,arguments.length,x0) }),
      _774: (x0,x1) => x0.dispatchEvent(x1),
      _782: x0 => x0.target,
      _784: x0 => x0.timeStamp,
      _785: x0 => x0.type,
      _787: (x0,x1,x2,x3) => x0.initEvent(x1,x2,x3),
      _794: x0 => x0.firstChild,
      _798: x0 => x0.parentElement,
      _800: (x0,x1) => { x0.textContent = x1 },
      _801: x0 => x0.parentNode,
      _803: x0 => x0.isConnected,
      _807: x0 => x0.firstElementChild,
      _809: x0 => x0.nextElementSibling,
      _810: x0 => x0.clientHeight,
      _811: x0 => x0.clientWidth,
      _812: x0 => x0.offsetHeight,
      _813: x0 => x0.offsetWidth,
      _814: x0 => x0.id,
      _815: (x0,x1) => { x0.id = x1 },
      _818: (x0,x1) => { x0.spellcheck = x1 },
      _819: x0 => x0.tagName,
      _820: x0 => x0.style,
      _822: (x0,x1) => x0.querySelectorAll(x1),
      _823: (x0,x1,x2) => x0.setAttribute(x1,x2),
      _825: (x0,x1) => { x0.tabIndex = x1 },
      _826: (x0,x1) => x0.focus(x1),
      _827: x0 => x0.scrollTop,
      _828: (x0,x1) => { x0.scrollTop = x1 },
      _829: (x0,x1) => { x0.scrollLeft = x1 },
      _830: x0 => x0.scrollLeft,
      _831: x0 => x0.classList,
      _833: (x0,x1) => { x0.className = x1 },
      _835: (x0,x1) => x0.getElementsByClassName(x1),
      _836: (x0,x1) => x0.attachShadow(x1),
      _839: x0 => x0.computedStyleMap(),
      _840: (x0,x1) => x0.get(x1),
      _846: (x0,x1) => x0.getPropertyValue(x1),
      _847: (x0,x1,x2,x3) => x0.setProperty(x1,x2,x3),
      _848: x0 => x0.offsetLeft,
      _849: x0 => x0.offsetTop,
      _850: x0 => x0.offsetParent,
      _852: (x0,x1) => { x0.name = x1 },
      _853: x0 => x0.content,
      _854: (x0,x1) => { x0.content = x1 },
      _858: (x0,x1) => { x0.src = x1 },
      _859: x0 => x0.naturalWidth,
      _860: x0 => x0.naturalHeight,
      _864: (x0,x1) => { x0.crossOrigin = x1 },
      _866: (x0,x1) => { x0.decoding = x1 },
      _867: x0 => x0.decode(),
      _872: (x0,x1) => { x0.nonce = x1 },
      _877: (x0,x1) => { x0.width = x1 },
      _879: (x0,x1) => { x0.height = x1 },
      _882: (x0,x1) => x0.getContext(x1),
      _941: (x0,x1) => x0.fetch(x1),
      _942: x0 => x0.status,
      _944: x0 => x0.body,
      _945: x0 => x0.arrayBuffer(),
      _948: x0 => x0.read(),
      _949: x0 => x0.value,
      _950: x0 => x0.done,
      _952: x0 => x0.name,
      _953: x0 => x0.x,
      _954: x0 => x0.y,
      _957: x0 => x0.top,
      _958: x0 => x0.right,
      _959: x0 => x0.bottom,
      _960: x0 => x0.left,
      _972: x0 => x0.height,
      _973: x0 => x0.width,
      _974: x0 => x0.scale,
      _975: (x0,x1) => { x0.value = x1 },
      _977: (x0,x1) => { x0.placeholder = x1 },
      _978: (x0,x1) => { x0.name = x1 },
      _980: x0 => x0.selectionDirection,
      _981: x0 => x0.selectionStart,
      _982: x0 => x0.selectionEnd,
      _985: x0 => x0.value,
      _987: (x0,x1,x2) => x0.setSelectionRange(x1,x2),
      _988: x0 => x0.readText(),
      _989: (x0,x1) => x0.writeText(x1),
      _991: x0 => x0.altKey,
      _992: x0 => x0.code,
      _993: x0 => x0.ctrlKey,
      _994: x0 => x0.key,
      _995: x0 => x0.keyCode,
      _996: x0 => x0.location,
      _997: x0 => x0.metaKey,
      _998: x0 => x0.repeat,
      _999: x0 => x0.shiftKey,
      _1000: x0 => x0.isComposing,
      _1002: x0 => x0.state,
      _1003: (x0,x1) => x0.go(x1),
      _1005: (x0,x1,x2,x3) => x0.pushState(x1,x2,x3),
      _1006: (x0,x1,x2,x3) => x0.replaceState(x1,x2,x3),
      _1007: x0 => x0.pathname,
      _1008: x0 => x0.search,
      _1009: x0 => x0.hash,
      _1013: x0 => x0.state,
      _1016: (x0,x1) => x0.createObjectURL(x1),
      _1018: x0 => new Blob(x0),
      _1020: x0 => new MutationObserver(x0),
      _1021: (x0,x1,x2) => x0.observe(x1,x2),
      _1022: f => finalizeWrapper(f, function(x0,x1) { return dartInstance.exports._1022(f,arguments.length,x0,x1) }),
      _1025: x0 => x0.attributeName,
      _1026: x0 => x0.type,
      _1027: x0 => x0.matches,
      _1028: x0 => x0.matches,
      _1032: x0 => x0.relatedTarget,
      _1034: x0 => x0.clientX,
      _1035: x0 => x0.clientY,
      _1036: x0 => x0.offsetX,
      _1037: x0 => x0.offsetY,
      _1040: x0 => x0.button,
      _1041: x0 => x0.buttons,
      _1042: x0 => x0.ctrlKey,
      _1046: x0 => x0.pointerId,
      _1047: x0 => x0.pointerType,
      _1048: x0 => x0.pressure,
      _1049: x0 => x0.tiltX,
      _1050: x0 => x0.tiltY,
      _1051: x0 => x0.getCoalescedEvents(),
      _1054: x0 => x0.deltaX,
      _1055: x0 => x0.deltaY,
      _1056: x0 => x0.wheelDeltaX,
      _1057: x0 => x0.wheelDeltaY,
      _1058: x0 => x0.deltaMode,
      _1065: x0 => x0.changedTouches,
      _1068: x0 => x0.clientX,
      _1069: x0 => x0.clientY,
      _1072: x0 => x0.data,
      _1074: (x0,x1) => { x0.disabled = x1 },
      _1077: (x0,x1) => { x0.type = x1 },
      _1078: (x0,x1) => { x0.max = x1 },
      _1079: (x0,x1) => { x0.min = x1 },
      _1080: (x0,x1) => { x0.value = x1 },
      _1081: x0 => x0.value,
      _1082: (x0,x1) => { x0.disabled = x1 },
      _1083: x0 => x0.disabled,
      _1085: (x0,x1) => { x0.placeholder = x1 },
      _1087: (x0,x1) => { x0.name = x1 },
      _1089: (x0,x1) => { x0.autocomplete = x1 },
      _1090: x0 => x0.selectionDirection,
      _1091: x0 => x0.selectionStart,
      _1094: x0 => x0.selectionEnd,
      _1096: (x0,x1,x2) => x0.setSelectionRange(x1,x2),
      _1097: (x0,x1) => x0.add(x1),
      _1100: (x0,x1) => { x0.noValidate = x1 },
      _1101: (x0,x1) => { x0.method = x1 },
      _1102: (x0,x1) => { x0.action = x1 },
      _1128: x0 => x0.orientation,
      _1129: x0 => x0.width,
      _1130: x0 => x0.height,
      _1131: (x0,x1) => x0.lock(x1),
      _1150: x0 => new ResizeObserver(x0),
      _1153: f => finalizeWrapper(f, function(x0,x1) { return dartInstance.exports._1153(f,arguments.length,x0,x1) }),
      _1161: x0 => x0.length,
      _1162: x0 => x0.iterator,
      _1163: x0 => x0.Segmenter,
      _1164: x0 => x0.v8BreakIterator,
      _1165: (x0,x1) => new Intl.Segmenter(x0,x1),
      _1166: x0 => x0.done,
      _1167: x0 => x0.value,
      _1168: x0 => x0.index,
      _1172: (x0,x1) => new Intl.v8BreakIterator(x0,x1),
      _1173: (x0,x1) => x0.adoptText(x1),
      _1174: x0 => x0.first(),
      _1175: x0 => x0.next(),
      _1176: x0 => x0.current(),
      _1182: x0 => x0.hostElement,
      _1183: x0 => x0.viewConstraints,
      _1186: x0 => x0.maxHeight,
      _1187: x0 => x0.maxWidth,
      _1188: x0 => x0.minHeight,
      _1189: x0 => x0.minWidth,
      _1190: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._1190(f,arguments.length,x0) }),
      _1191: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._1191(f,arguments.length,x0) }),
      _1192: (x0,x1) => ({addView: x0,removeView: x1}),
      _1193: x0 => x0.loader,
      _1194: () => globalThis._flutter,
      _1195: (x0,x1) => x0.didCreateEngineInitializer(x1),
      _1196: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._1196(f,arguments.length,x0) }),
      _1197: f => finalizeWrapper(f, function() { return dartInstance.exports._1197(f,arguments.length) }),
      _1198: (x0,x1) => ({initializeEngine: x0,autoStart: x1}),
      _1199: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._1199(f,arguments.length,x0) }),
      _1200: x0 => ({runApp: x0}),
      _1201: f => finalizeWrapper(f, function(x0,x1) { return dartInstance.exports._1201(f,arguments.length,x0,x1) }),
      _1202: x0 => x0.length,
      _1203: () => globalThis.window.ImageDecoder,
      _1204: x0 => x0.tracks,
      _1206: x0 => x0.completed,
      _1208: x0 => x0.image,
      _1214: x0 => x0.displayWidth,
      _1215: x0 => x0.displayHeight,
      _1216: x0 => x0.duration,
      _1219: x0 => x0.ready,
      _1220: x0 => x0.selectedTrack,
      _1221: x0 => x0.repetitionCount,
      _1222: x0 => x0.frameCount,
      _1283: Date.now,
      _1285: s => new Date(s * 1000).getTimezoneOffset() * 60,
      _1286: s => {
        if (!/^\s*[+-]?(?:Infinity|NaN|(?:\.\d+|\d+(?:\.\d*)?)(?:[eE][+-]?\d+)?)\s*$/.test(s)) {
          return NaN;
        }
        return parseFloat(s);
      },
      _1287: () => {
        let stackString = new Error().stack.toString();
        let frames = stackString.split('\n');
        let drop = 2;
        if (frames[0] === 'Error') {
            drop += 1;
        }
        return frames.slice(drop).join('\n');
      },
      _1288: () => typeof dartUseDateNowForTicks !== "undefined",
      _1289: () => 1000 * performance.now(),
      _1290: () => Date.now(),
      _1293: () => new WeakMap(),
      _1294: (map, o) => map.get(o),
      _1295: (map, o, v) => map.set(o, v),
      _1296: x0 => new WeakRef(x0),
      _1297: x0 => x0.deref(),
      _1304: () => globalThis.WeakRef,
      _1308: s => JSON.stringify(s),
      _1309: s => printToConsole(s),
      _1310: (o, p, r) => o.replaceAll(p, () => r),
      _1312: Function.prototype.call.bind(String.prototype.toLowerCase),
      _1313: s => s.toUpperCase(),
      _1314: s => s.trim(),
      _1315: s => s.trimLeft(),
      _1316: s => s.trimRight(),
      _1317: (string, times) => string.repeat(times),
      _1318: Function.prototype.call.bind(String.prototype.indexOf),
      _1319: (s, p, i) => s.lastIndexOf(p, i),
      _1320: (string, token) => string.split(token),
      _1321: Object.is,
      _1322: (a, i) => a.push(i),
      _1326: a => a.pop(),
      _1327: (a, i) => a.splice(i, 1),
      _1328: (a, s) => a.join(s),
      _1332: a => a.length,
      _1334: (a, i) => a[i],
      _1335: (a, i, v) => a[i] = v,
      _1338: (o, start, length) => new Uint8Array(o.buffer, o.byteOffset + start, length),
      _1339: (o, start, length) => new Int8Array(o.buffer, o.byteOffset + start, length),
      _1340: (o, start, length) => new Uint8ClampedArray(o.buffer, o.byteOffset + start, length),
      _1341: (o, start, length) => new Uint16Array(o.buffer, o.byteOffset + start, length),
      _1342: (o, start, length) => new Int16Array(o.buffer, o.byteOffset + start, length),
      _1343: (o, start, length) => new Uint32Array(o.buffer, o.byteOffset + start, length),
      _1344: (o, start, length) => new Int32Array(o.buffer, o.byteOffset + start, length),
      _1346: (o, start, length) => new BigInt64Array(o.buffer, o.byteOffset + start, length),
      _1347: (o, start, length) => new Float32Array(o.buffer, o.byteOffset + start, length),
      _1348: (o, start, length) => new Float64Array(o.buffer, o.byteOffset + start, length),
      _1349: (t, s) => t.set(s),
      _1351: (o) => new DataView(o.buffer, o.byteOffset, o.byteLength),
      _1353: o => o.buffer,
      _1354: o => o.byteOffset,
      _1355: Function.prototype.call.bind(Object.getOwnPropertyDescriptor(DataView.prototype, 'byteLength').get),
      _1356: (b, o) => new DataView(b, o),
      _1357: (b, o, l) => new DataView(b, o, l),
      _1358: Function.prototype.call.bind(DataView.prototype.getUint8),
      _1359: Function.prototype.call.bind(DataView.prototype.setUint8),
      _1360: Function.prototype.call.bind(DataView.prototype.getInt8),
      _1361: Function.prototype.call.bind(DataView.prototype.setInt8),
      _1362: Function.prototype.call.bind(DataView.prototype.getUint16),
      _1363: Function.prototype.call.bind(DataView.prototype.setUint16),
      _1364: Function.prototype.call.bind(DataView.prototype.getInt16),
      _1365: Function.prototype.call.bind(DataView.prototype.setInt16),
      _1366: Function.prototype.call.bind(DataView.prototype.getUint32),
      _1367: Function.prototype.call.bind(DataView.prototype.setUint32),
      _1368: Function.prototype.call.bind(DataView.prototype.getInt32),
      _1369: Function.prototype.call.bind(DataView.prototype.setInt32),
      _1372: Function.prototype.call.bind(DataView.prototype.getBigInt64),
      _1373: Function.prototype.call.bind(DataView.prototype.setBigInt64),
      _1374: Function.prototype.call.bind(DataView.prototype.getFloat32),
      _1375: Function.prototype.call.bind(DataView.prototype.setFloat32),
      _1376: Function.prototype.call.bind(DataView.prototype.getFloat64),
      _1377: Function.prototype.call.bind(DataView.prototype.setFloat64),
      _1390: (ms, c) =>
      setTimeout(() => dartInstance.exports.$invokeCallback(c),ms),
      _1391: (handle) => clearTimeout(handle),
      _1392: (ms, c) =>
      setInterval(() => dartInstance.exports.$invokeCallback(c), ms),
      _1393: (handle) => clearInterval(handle),
      _1394: (c) =>
      queueMicrotask(() => dartInstance.exports.$invokeCallback(c)),
      _1395: () => Date.now(),
      _1400: o => Object.keys(o),
      _1401: (s, m) => {
        try {
          return new RegExp(s, m);
        } catch (e) {
          return String(e);
        }
      },
      _1402: (x0,x1) => x0.exec(x1),
      _1403: (x0,x1) => x0.test(x1),
      _1404: x0 => x0.pop(),
      _1406: o => o === undefined,
      _1408: o => typeof o === 'function' && o[jsWrappedDartFunctionSymbol] === true,
      _1410: o => {
        const proto = Object.getPrototypeOf(o);
        return proto === Object.prototype || proto === null;
      },
      _1411: o => o instanceof RegExp,
      _1412: (l, r) => l === r,
      _1413: o => o,
      _1414: o => o,
      _1415: o => o,
      _1416: b => !!b,
      _1417: o => o.length,
      _1419: (o, i) => o[i],
      _1420: f => f.dartFunction,
      _1421: () => ({}),
      _1422: () => [],
      _1424: () => globalThis,
      _1425: (constructor, args) => {
        const factoryFunction = constructor.bind.apply(
            constructor, [null, ...args]);
        return new factoryFunction();
      },
      _1427: (o, p) => o[p],
      _1428: (o, p, v) => o[p] = v,
      _1429: (o, m, a) => o[m].apply(o, a),
      _1431: o => String(o),
      _1432: (p, s, f) => p.then(s, f),
      _1433: o => {
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
      _1434: o => [o],
      _1435: (o0, o1) => [o0, o1],
      _1436: (o0, o1, o2) => [o0, o1, o2],
      _1437: (o0, o1, o2, o3) => [o0, o1, o2, o3],
      _1438: (jsArray, jsArrayOffset, wasmArray, wasmArrayOffset, length) => {
        const getValue = dartInstance.exports.$wasmI8ArrayGet;
        for (let i = 0; i < length; i++) {
          jsArray[jsArrayOffset + i] = getValue(wasmArray, wasmArrayOffset + i);
        }
      },
      _1439: (jsArray, jsArrayOffset, wasmArray, wasmArrayOffset, length) => {
        const setValue = dartInstance.exports.$wasmI8ArraySet;
        for (let i = 0; i < length; i++) {
          setValue(wasmArray, wasmArrayOffset + i, jsArray[jsArrayOffset + i]);
        }
      },
      _1442: (jsArray, jsArrayOffset, wasmArray, wasmArrayOffset, length) => {
        const getValue = dartInstance.exports.$wasmI32ArrayGet;
        for (let i = 0; i < length; i++) {
          jsArray[jsArrayOffset + i] = getValue(wasmArray, wasmArrayOffset + i);
        }
      },
      _1443: (jsArray, jsArrayOffset, wasmArray, wasmArrayOffset, length) => {
        const setValue = dartInstance.exports.$wasmI32ArraySet;
        for (let i = 0; i < length; i++) {
          setValue(wasmArray, wasmArrayOffset + i, jsArray[jsArrayOffset + i]);
        }
      },
      _1444: (jsArray, jsArrayOffset, wasmArray, wasmArrayOffset, length) => {
        const getValue = dartInstance.exports.$wasmF32ArrayGet;
        for (let i = 0; i < length; i++) {
          jsArray[jsArrayOffset + i] = getValue(wasmArray, wasmArrayOffset + i);
        }
      },
      _1445: (jsArray, jsArrayOffset, wasmArray, wasmArrayOffset, length) => {
        const setValue = dartInstance.exports.$wasmF32ArraySet;
        for (let i = 0; i < length; i++) {
          setValue(wasmArray, wasmArrayOffset + i, jsArray[jsArrayOffset + i]);
        }
      },
      _1446: (jsArray, jsArrayOffset, wasmArray, wasmArrayOffset, length) => {
        const getValue = dartInstance.exports.$wasmF64ArrayGet;
        for (let i = 0; i < length; i++) {
          jsArray[jsArrayOffset + i] = getValue(wasmArray, wasmArrayOffset + i);
        }
      },
      _1447: (jsArray, jsArrayOffset, wasmArray, wasmArrayOffset, length) => {
        const setValue = dartInstance.exports.$wasmF64ArraySet;
        for (let i = 0; i < length; i++) {
          setValue(wasmArray, wasmArrayOffset + i, jsArray[jsArrayOffset + i]);
        }
      },
      _1448: x0 => new ArrayBuffer(x0),
      _1449: s => {
        if (/[[\]{}()*+?.\\^$|]/.test(s)) {
            s = s.replace(/[[\]{}()*+?.\\^$|]/g, '\\$&');
        }
        return s;
      },
      _1451: x0 => x0.index,
      _1453: x0 => x0.flags,
      _1454: x0 => x0.multiline,
      _1455: x0 => x0.ignoreCase,
      _1456: x0 => x0.unicode,
      _1457: x0 => x0.dotAll,
      _1458: (x0,x1) => { x0.lastIndex = x1 },
      _1459: (o, p) => p in o,
      _1460: (o, p) => o[p],
      _1463: x0 => x0.random(),
      _1466: () => globalThis.Math,
      _1467: Function.prototype.call.bind(Number.prototype.toString),
      _1468: Function.prototype.call.bind(BigInt.prototype.toString),
      _1469: Function.prototype.call.bind(Number.prototype.toString),
      _1470: (d, digits) => d.toFixed(digits),

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
