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
      _8: f => finalizeWrapper(f, function(x0,x1) { return dartInstance.exports._8(f,arguments.length,x0,x1) }),
      _37: x0 => new Array(x0),
      _39: x0 => x0.length,
      _41: (x0,x1) => x0[x1],
      _42: (x0,x1,x2) => { x0[x1] = x2 },
      _44: x0 => new Promise(x0),
      _46: (x0,x1,x2) => new DataView(x0,x1,x2),
      _48: x0 => new Int8Array(x0),
      _49: (x0,x1,x2) => new Uint8Array(x0,x1,x2),
      _50: x0 => new Uint8Array(x0),
      _52: x0 => new Uint8ClampedArray(x0),
      _54: x0 => new Int16Array(x0),
      _56: x0 => new Uint16Array(x0),
      _58: x0 => new Int32Array(x0),
      _60: x0 => new Uint32Array(x0),
      _62: x0 => new Float32Array(x0),
      _64: x0 => new Float64Array(x0),
      _66: (x0,x1,x2) => x0.call(x1,x2),
      _71: (decoder, codeUnits) => decoder.decode(codeUnits),
      _72: () => new TextDecoder("utf-8", {fatal: true}),
      _73: () => new TextDecoder("utf-8", {fatal: false}),
      _74: (s) => +s,
      _75: x0 => new Uint8Array(x0),
      _76: (x0,x1,x2) => x0.set(x1,x2),
      _77: (x0,x1) => x0.transferFromImageBitmap(x1),
      _79: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._79(f,arguments.length,x0) }),
      _80: x0 => new window.FinalizationRegistry(x0),
      _81: (x0,x1,x2,x3) => x0.register(x1,x2,x3),
      _82: (x0,x1) => x0.unregister(x1),
      _83: (x0,x1,x2) => x0.slice(x1,x2),
      _84: (x0,x1) => x0.decode(x1),
      _85: (x0,x1) => x0.segment(x1),
      _86: () => new TextDecoder(),
      _88: x0 => x0.click(),
      _89: x0 => x0.buffer,
      _90: x0 => x0.wasmMemory,
      _91: () => globalThis.window._flutter_skwasmInstance,
      _92: x0 => x0.rasterStartMilliseconds,
      _93: x0 => x0.rasterEndMilliseconds,
      _94: x0 => x0.imageBitmaps,
      _198: x0 => x0.stopPropagation(),
      _199: x0 => x0.preventDefault(),
      _201: x0 => x0.remove(),
      _202: (x0,x1) => x0.append(x1),
      _203: (x0,x1,x2,x3) => x0.addEventListener(x1,x2,x3),
      _248: x0 => x0.unlock(),
      _249: x0 => x0.getReader(),
      _250: (x0,x1,x2) => x0.addEventListener(x1,x2),
      _251: (x0,x1,x2) => x0.removeEventListener(x1,x2),
      _252: (x0,x1) => x0.item(x1),
      _253: x0 => x0.next(),
      _254: x0 => x0.now(),
      _255: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._255(f,arguments.length,x0) }),
      _256: (x0,x1) => x0.addListener(x1),
      _257: (x0,x1) => x0.removeListener(x1),
      _258: (x0,x1) => x0.matchMedia(x1),
      _259: (x0,x1) => x0.revokeObjectURL(x1),
      _260: x0 => x0.close(),
      _261: (x0,x1,x2,x3,x4) => ({type: x0,data: x1,premultiplyAlpha: x2,colorSpaceConversion: x3,preferAnimation: x4}),
      _262: x0 => new window.ImageDecoder(x0),
      _263: x0 => ({frameIndex: x0}),
      _264: (x0,x1) => x0.decode(x1),
      _265: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._265(f,arguments.length,x0) }),
      _266: (x0,x1) => x0.getModifierState(x1),
      _267: (x0,x1) => x0.removeProperty(x1),
      _268: (x0,x1) => x0.prepend(x1),
      _269: x0 => new Intl.Locale(x0),
      _270: x0 => x0.disconnect(),
      _271: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._271(f,arguments.length,x0) }),
      _272: (x0,x1) => x0.getAttribute(x1),
      _273: (x0,x1) => x0.contains(x1),
      _274: (x0,x1) => x0.querySelector(x1),
      _275: x0 => x0.blur(),
      _276: x0 => x0.hasFocus(),
      _277: (x0,x1,x2) => x0.insertBefore(x1,x2),
      _278: (x0,x1) => x0.hasAttribute(x1),
      _279: (x0,x1) => x0.getModifierState(x1),
      _280: (x0,x1) => x0.removeChild(x1),
      _281: (x0,x1) => x0.appendChild(x1),
      _282: (x0,x1) => x0.createTextNode(x1),
      _283: (x0,x1) => x0.removeAttribute(x1),
      _284: x0 => x0.getBoundingClientRect(),
      _285: (x0,x1) => x0.observe(x1),
      _286: x0 => x0.disconnect(),
      _287: (x0,x1) => x0.closest(x1),
      _710: () => globalThis.window.flutterConfiguration,
      _712: x0 => x0.assetBase,
      _718: x0 => x0.debugShowSemanticsNodes,
      _719: x0 => x0.hostElement,
      _720: x0 => x0.multiViewEnabled,
      _721: x0 => x0.nonce,
      _723: x0 => x0.fontFallbackBaseUrl,
      _733: x0 => x0.console,
      _734: x0 => x0.devicePixelRatio,
      _735: x0 => x0.document,
      _736: x0 => x0.history,
      _737: x0 => x0.innerHeight,
      _738: x0 => x0.innerWidth,
      _739: x0 => x0.location,
      _740: x0 => x0.navigator,
      _741: x0 => x0.visualViewport,
      _742: x0 => x0.performance,
      _744: x0 => x0.URL,
      _746: (x0,x1) => x0.getComputedStyle(x1),
      _747: x0 => x0.screen,
      _748: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._748(f,arguments.length,x0) }),
      _749: (x0,x1) => x0.requestAnimationFrame(x1),
      _754: (x0,x1) => x0.warn(x1),
      _757: x0 => globalThis.parseFloat(x0),
      _758: () => globalThis.window,
      _759: () => globalThis.Intl,
      _760: () => globalThis.Symbol,
      _761: (x0,x1,x2,x3,x4) => globalThis.createImageBitmap(x0,x1,x2,x3,x4),
      _763: x0 => x0.clipboard,
      _764: x0 => x0.maxTouchPoints,
      _765: x0 => x0.vendor,
      _766: x0 => x0.language,
      _767: x0 => x0.platform,
      _768: x0 => x0.userAgent,
      _769: (x0,x1) => x0.vibrate(x1),
      _770: x0 => x0.languages,
      _771: x0 => x0.documentElement,
      _772: (x0,x1) => x0.querySelector(x1),
      _775: (x0,x1) => x0.createElement(x1),
      _778: (x0,x1) => x0.createEvent(x1),
      _779: x0 => x0.activeElement,
      _782: x0 => x0.head,
      _783: x0 => x0.body,
      _785: (x0,x1) => { x0.title = x1 },
      _788: x0 => x0.visibilityState,
      _789: () => globalThis.document,
      _790: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._790(f,arguments.length,x0) }),
      _791: (x0,x1) => x0.dispatchEvent(x1),
      _799: x0 => x0.target,
      _801: x0 => x0.timeStamp,
      _802: x0 => x0.type,
      _804: (x0,x1,x2,x3) => x0.initEvent(x1,x2,x3),
      _811: x0 => x0.firstChild,
      _815: x0 => x0.parentElement,
      _817: (x0,x1) => { x0.textContent = x1 },
      _818: x0 => x0.parentNode,
      _820: x0 => x0.isConnected,
      _825: x0 => x0.firstElementChild,
      _827: x0 => x0.nextElementSibling,
      _828: x0 => x0.clientHeight,
      _829: x0 => x0.clientWidth,
      _830: x0 => x0.offsetHeight,
      _831: x0 => x0.offsetWidth,
      _832: x0 => x0.id,
      _833: (x0,x1) => { x0.id = x1 },
      _836: (x0,x1) => { x0.spellcheck = x1 },
      _837: x0 => x0.tagName,
      _838: x0 => x0.style,
      _840: (x0,x1) => x0.querySelectorAll(x1),
      _841: (x0,x1,x2) => x0.setAttribute(x1,x2),
      _842: (x0,x1) => { x0.tabIndex = x1 },
      _843: x0 => x0.tabIndex,
      _844: (x0,x1) => x0.focus(x1),
      _845: x0 => x0.scrollTop,
      _846: (x0,x1) => { x0.scrollTop = x1 },
      _847: x0 => x0.scrollLeft,
      _848: (x0,x1) => { x0.scrollLeft = x1 },
      _849: x0 => x0.classList,
      _851: (x0,x1) => { x0.className = x1 },
      _853: (x0,x1) => x0.getElementsByClassName(x1),
      _854: (x0,x1) => x0.attachShadow(x1),
      _857: x0 => x0.computedStyleMap(),
      _858: (x0,x1) => x0.get(x1),
      _864: (x0,x1) => x0.getPropertyValue(x1),
      _865: (x0,x1,x2,x3) => x0.setProperty(x1,x2,x3),
      _866: x0 => x0.offsetLeft,
      _867: x0 => x0.offsetTop,
      _868: x0 => x0.offsetParent,
      _870: (x0,x1) => { x0.name = x1 },
      _871: x0 => x0.content,
      _872: (x0,x1) => { x0.content = x1 },
      _876: (x0,x1) => { x0.src = x1 },
      _877: x0 => x0.naturalWidth,
      _878: x0 => x0.naturalHeight,
      _882: (x0,x1) => { x0.crossOrigin = x1 },
      _884: (x0,x1) => { x0.decoding = x1 },
      _885: x0 => x0.decode(),
      _890: (x0,x1) => { x0.nonce = x1 },
      _895: (x0,x1) => { x0.width = x1 },
      _897: (x0,x1) => { x0.height = x1 },
      _900: (x0,x1) => x0.getContext(x1),
      _964: (x0,x1) => x0.fetch(x1),
      _965: x0 => x0.status,
      _967: x0 => x0.body,
      _968: x0 => x0.arrayBuffer(),
      _971: x0 => x0.read(),
      _972: x0 => x0.value,
      _973: x0 => x0.done,
      _980: x0 => x0.name,
      _981: x0 => x0.x,
      _982: x0 => x0.y,
      _985: x0 => x0.top,
      _986: x0 => x0.right,
      _987: x0 => x0.bottom,
      _988: x0 => x0.left,
      _998: x0 => x0.height,
      _999: x0 => x0.width,
      _1000: x0 => x0.scale,
      _1001: (x0,x1) => { x0.value = x1 },
      _1004: (x0,x1) => { x0.placeholder = x1 },
      _1006: (x0,x1) => { x0.name = x1 },
      _1007: x0 => x0.selectionDirection,
      _1008: x0 => x0.selectionStart,
      _1009: x0 => x0.selectionEnd,
      _1012: x0 => x0.value,
      _1014: (x0,x1,x2) => x0.setSelectionRange(x1,x2),
      _1015: x0 => x0.readText(),
      _1016: (x0,x1) => x0.writeText(x1),
      _1018: x0 => x0.altKey,
      _1019: x0 => x0.code,
      _1020: x0 => x0.ctrlKey,
      _1021: x0 => x0.key,
      _1022: x0 => x0.keyCode,
      _1023: x0 => x0.location,
      _1024: x0 => x0.metaKey,
      _1025: x0 => x0.repeat,
      _1026: x0 => x0.shiftKey,
      _1027: x0 => x0.isComposing,
      _1029: x0 => x0.state,
      _1030: (x0,x1) => x0.go(x1),
      _1032: (x0,x1,x2,x3) => x0.pushState(x1,x2,x3),
      _1033: (x0,x1,x2,x3) => x0.replaceState(x1,x2,x3),
      _1034: x0 => x0.pathname,
      _1035: x0 => x0.search,
      _1036: x0 => x0.hash,
      _1040: x0 => x0.state,
      _1043: (x0,x1) => x0.createObjectURL(x1),
      _1045: x0 => new Blob(x0),
      _1047: x0 => new MutationObserver(x0),
      _1048: (x0,x1,x2) => x0.observe(x1,x2),
      _1049: f => finalizeWrapper(f, function(x0,x1) { return dartInstance.exports._1049(f,arguments.length,x0,x1) }),
      _1052: x0 => x0.attributeName,
      _1053: x0 => x0.type,
      _1054: x0 => x0.matches,
      _1055: x0 => x0.matches,
      _1059: x0 => x0.relatedTarget,
      _1061: x0 => x0.clientX,
      _1062: x0 => x0.clientY,
      _1063: x0 => x0.offsetX,
      _1064: x0 => x0.offsetY,
      _1067: x0 => x0.button,
      _1068: x0 => x0.buttons,
      _1069: x0 => x0.ctrlKey,
      _1073: x0 => x0.pointerId,
      _1074: x0 => x0.pointerType,
      _1075: x0 => x0.pressure,
      _1076: x0 => x0.tiltX,
      _1077: x0 => x0.tiltY,
      _1078: x0 => x0.getCoalescedEvents(),
      _1081: x0 => x0.deltaX,
      _1082: x0 => x0.deltaY,
      _1083: x0 => x0.wheelDeltaX,
      _1084: x0 => x0.wheelDeltaY,
      _1085: x0 => x0.deltaMode,
      _1092: x0 => x0.changedTouches,
      _1095: x0 => x0.clientX,
      _1096: x0 => x0.clientY,
      _1099: x0 => x0.data,
      _1102: (x0,x1) => { x0.disabled = x1 },
      _1104: (x0,x1) => { x0.type = x1 },
      _1105: (x0,x1) => { x0.max = x1 },
      _1106: (x0,x1) => { x0.min = x1 },
      _1107: x0 => x0.value,
      _1108: (x0,x1) => { x0.value = x1 },
      _1109: x0 => x0.disabled,
      _1110: (x0,x1) => { x0.disabled = x1 },
      _1112: (x0,x1) => { x0.placeholder = x1 },
      _1113: (x0,x1) => { x0.name = x1 },
      _1116: (x0,x1) => { x0.autocomplete = x1 },
      _1117: x0 => x0.selectionDirection,
      _1118: x0 => x0.selectionStart,
      _1120: x0 => x0.selectionEnd,
      _1123: (x0,x1,x2) => x0.setSelectionRange(x1,x2),
      _1124: (x0,x1) => x0.add(x1),
      _1127: (x0,x1) => { x0.noValidate = x1 },
      _1128: (x0,x1) => { x0.method = x1 },
      _1129: (x0,x1) => { x0.action = x1 },
      _1155: x0 => x0.orientation,
      _1156: x0 => x0.width,
      _1157: x0 => x0.height,
      _1158: (x0,x1) => x0.lock(x1),
      _1177: x0 => new ResizeObserver(x0),
      _1180: f => finalizeWrapper(f, function(x0,x1) { return dartInstance.exports._1180(f,arguments.length,x0,x1) }),
      _1188: x0 => x0.length,
      _1189: x0 => x0.iterator,
      _1190: x0 => x0.Segmenter,
      _1191: x0 => x0.v8BreakIterator,
      _1192: (x0,x1) => new Intl.Segmenter(x0,x1),
      _1195: x0 => x0.language,
      _1196: x0 => x0.script,
      _1197: x0 => x0.region,
      _1215: x0 => x0.done,
      _1216: x0 => x0.value,
      _1217: x0 => x0.index,
      _1221: (x0,x1) => new Intl.v8BreakIterator(x0,x1),
      _1222: (x0,x1) => x0.adoptText(x1),
      _1223: x0 => x0.first(),
      _1224: x0 => x0.next(),
      _1225: x0 => x0.current(),
      _1239: x0 => x0.hostElement,
      _1240: x0 => x0.viewConstraints,
      _1243: x0 => x0.maxHeight,
      _1244: x0 => x0.maxWidth,
      _1245: x0 => x0.minHeight,
      _1246: x0 => x0.minWidth,
      _1247: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._1247(f,arguments.length,x0) }),
      _1248: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._1248(f,arguments.length,x0) }),
      _1249: (x0,x1) => ({addView: x0,removeView: x1}),
      _1252: x0 => x0.loader,
      _1253: () => globalThis._flutter,
      _1254: (x0,x1) => x0.didCreateEngineInitializer(x1),
      _1255: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._1255(f,arguments.length,x0) }),
      _1256: f => finalizeWrapper(f, function() { return dartInstance.exports._1256(f,arguments.length) }),
      _1257: (x0,x1) => ({initializeEngine: x0,autoStart: x1}),
      _1260: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._1260(f,arguments.length,x0) }),
      _1261: x0 => ({runApp: x0}),
      _1263: f => finalizeWrapper(f, function(x0,x1) { return dartInstance.exports._1263(f,arguments.length,x0,x1) }),
      _1264: x0 => x0.length,
      _1265: () => globalThis.window.ImageDecoder,
      _1266: x0 => x0.tracks,
      _1268: x0 => x0.completed,
      _1270: x0 => x0.image,
      _1276: x0 => x0.displayWidth,
      _1277: x0 => x0.displayHeight,
      _1278: x0 => x0.duration,
      _1281: x0 => x0.ready,
      _1282: x0 => x0.selectedTrack,
      _1283: x0 => x0.repetitionCount,
      _1284: x0 => x0.frameCount,
      _1346: Date.now,
      _1348: s => new Date(s * 1000).getTimezoneOffset() * 60,
      _1349: s => {
        if (!/^\s*[+-]?(?:Infinity|NaN|(?:\.\d+|\d+(?:\.\d*)?)(?:[eE][+-]?\d+)?)\s*$/.test(s)) {
          return NaN;
        }
        return parseFloat(s);
      },
      _1350: () => {
        let stackString = new Error().stack.toString();
        let frames = stackString.split('\n');
        let drop = 2;
        if (frames[0] === 'Error') {
            drop += 1;
        }
        return frames.slice(drop).join('\n');
      },
      _1351: () => typeof dartUseDateNowForTicks !== "undefined",
      _1352: () => 1000 * performance.now(),
      _1353: () => Date.now(),
      _1356: () => new WeakMap(),
      _1357: (map, o) => map.get(o),
      _1358: (map, o, v) => map.set(o, v),
      _1359: x0 => new WeakRef(x0),
      _1360: x0 => x0.deref(),
      _1367: () => globalThis.WeakRef,
      _1371: s => JSON.stringify(s),
      _1372: s => printToConsole(s),
      _1373: (o, p, r) => o.replaceAll(p, () => r),
      _1375: Function.prototype.call.bind(String.prototype.toLowerCase),
      _1376: s => s.toUpperCase(),
      _1377: s => s.trim(),
      _1378: s => s.trimLeft(),
      _1379: s => s.trimRight(),
      _1380: (string, times) => string.repeat(times),
      _1381: Function.prototype.call.bind(String.prototype.indexOf),
      _1382: (s, p, i) => s.lastIndexOf(p, i),
      _1383: (string, token) => string.split(token),
      _1384: Object.is,
      _1385: o => o instanceof Array,
      _1386: (a, i) => a.push(i),
      _1390: a => a.pop(),
      _1391: (a, i) => a.splice(i, 1),
      _1392: (a, s) => a.join(s),
      _1396: a => a.length,
      _1398: (a, i) => a[i],
      _1399: (a, i, v) => a[i] = v,
      _1401: o => {
        if (o instanceof ArrayBuffer) return 0;
        if (globalThis.SharedArrayBuffer !== undefined &&
            o instanceof SharedArrayBuffer) {
          return 1;
        }
        return 2;
      },
      _1404: o => o instanceof Uint8Array,
      _1405: (o, start, length) => new Uint8Array(o.buffer, o.byteOffset + start, length),
      _1406: o => o instanceof Int8Array,
      _1407: (o, start, length) => new Int8Array(o.buffer, o.byteOffset + start, length),
      _1408: o => o instanceof Uint8ClampedArray,
      _1409: (o, start, length) => new Uint8ClampedArray(o.buffer, o.byteOffset + start, length),
      _1410: o => o instanceof Uint16Array,
      _1411: (o, start, length) => new Uint16Array(o.buffer, o.byteOffset + start, length),
      _1412: o => o instanceof Int16Array,
      _1413: (o, start, length) => new Int16Array(o.buffer, o.byteOffset + start, length),
      _1414: o => o instanceof Uint32Array,
      _1415: (o, start, length) => new Uint32Array(o.buffer, o.byteOffset + start, length),
      _1416: o => o instanceof Int32Array,
      _1417: (o, start, length) => new Int32Array(o.buffer, o.byteOffset + start, length),
      _1419: (o, start, length) => new BigInt64Array(o.buffer, o.byteOffset + start, length),
      _1420: o => o instanceof Float32Array,
      _1421: (o, start, length) => new Float32Array(o.buffer, o.byteOffset + start, length),
      _1422: o => o instanceof Float64Array,
      _1423: (o, start, length) => new Float64Array(o.buffer, o.byteOffset + start, length),
      _1424: (t, s) => t.set(s),
      _1426: (o) => new DataView(o.buffer, o.byteOffset, o.byteLength),
      _1428: o => o.buffer,
      _1429: o => o.byteOffset,
      _1430: Function.prototype.call.bind(Object.getOwnPropertyDescriptor(DataView.prototype, 'byteLength').get),
      _1431: (b, o) => new DataView(b, o),
      _1432: (b, o, l) => new DataView(b, o, l),
      _1433: Function.prototype.call.bind(DataView.prototype.getUint8),
      _1434: Function.prototype.call.bind(DataView.prototype.setUint8),
      _1435: Function.prototype.call.bind(DataView.prototype.getInt8),
      _1436: Function.prototype.call.bind(DataView.prototype.setInt8),
      _1437: Function.prototype.call.bind(DataView.prototype.getUint16),
      _1438: Function.prototype.call.bind(DataView.prototype.setUint16),
      _1439: Function.prototype.call.bind(DataView.prototype.getInt16),
      _1440: Function.prototype.call.bind(DataView.prototype.setInt16),
      _1441: Function.prototype.call.bind(DataView.prototype.getUint32),
      _1442: Function.prototype.call.bind(DataView.prototype.setUint32),
      _1443: Function.prototype.call.bind(DataView.prototype.getInt32),
      _1444: Function.prototype.call.bind(DataView.prototype.setInt32),
      _1447: Function.prototype.call.bind(DataView.prototype.getBigInt64),
      _1448: Function.prototype.call.bind(DataView.prototype.setBigInt64),
      _1449: Function.prototype.call.bind(DataView.prototype.getFloat32),
      _1450: Function.prototype.call.bind(DataView.prototype.setFloat32),
      _1451: Function.prototype.call.bind(DataView.prototype.getFloat64),
      _1452: Function.prototype.call.bind(DataView.prototype.setFloat64),
      _1465: (ms, c) =>
      setTimeout(() => dartInstance.exports.$invokeCallback(c),ms),
      _1466: (handle) => clearTimeout(handle),
      _1467: (ms, c) =>
      setInterval(() => dartInstance.exports.$invokeCallback(c), ms),
      _1468: (handle) => clearInterval(handle),
      _1469: (c) =>
      queueMicrotask(() => dartInstance.exports.$invokeCallback(c)),
      _1470: () => Date.now(),
      _1475: o => Object.keys(o),
      _1476: (s, m) => {
        try {
          return new RegExp(s, m);
        } catch (e) {
          return String(e);
        }
      },
      _1477: (x0,x1) => x0.exec(x1),
      _1478: (x0,x1) => x0.test(x1),
      _1479: x0 => x0.pop(),
      _1481: o => o === undefined,
      _1483: o => typeof o === 'function' && o[jsWrappedDartFunctionSymbol] === true,
      _1485: o => {
        const proto = Object.getPrototypeOf(o);
        return proto === Object.prototype || proto === null;
      },
      _1486: o => o instanceof RegExp,
      _1487: (l, r) => l === r,
      _1488: o => o,
      _1489: o => o,
      _1490: o => o,
      _1491: b => !!b,
      _1492: o => o.length,
      _1494: (o, i) => o[i],
      _1495: f => f.dartFunction,
      _1496: () => ({}),
      _1497: () => [],
      _1499: () => globalThis,
      _1500: (constructor, args) => {
        const factoryFunction = constructor.bind.apply(
            constructor, [null, ...args]);
        return new factoryFunction();
      },
      _1502: (o, p) => o[p],
      _1503: (o, p, v) => o[p] = v,
      _1504: (o, m, a) => o[m].apply(o, a),
      _1506: o => String(o),
      _1507: (p, s, f) => p.then(s, (e) => f(e, e === undefined)),
      _1508: o => {
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
        // Feature check for `SharedArrayBuffer` before doing a type-check.
        if (globalThis.SharedArrayBuffer !== undefined &&
            o instanceof SharedArrayBuffer) {
            return 17;
        }
        return 18;
      },
      _1509: o => [o],
      _1510: (o0, o1) => [o0, o1],
      _1511: (o0, o1, o2) => [o0, o1, o2],
      _1512: (o0, o1, o2, o3) => [o0, o1, o2, o3],
      _1513: (jsArray, jsArrayOffset, wasmArray, wasmArrayOffset, length) => {
        const getValue = dartInstance.exports.$wasmI8ArrayGet;
        for (let i = 0; i < length; i++) {
          jsArray[jsArrayOffset + i] = getValue(wasmArray, wasmArrayOffset + i);
        }
      },
      _1514: (jsArray, jsArrayOffset, wasmArray, wasmArrayOffset, length) => {
        const setValue = dartInstance.exports.$wasmI8ArraySet;
        for (let i = 0; i < length; i++) {
          setValue(wasmArray, wasmArrayOffset + i, jsArray[jsArrayOffset + i]);
        }
      },
      _1517: (jsArray, jsArrayOffset, wasmArray, wasmArrayOffset, length) => {
        const getValue = dartInstance.exports.$wasmI32ArrayGet;
        for (let i = 0; i < length; i++) {
          jsArray[jsArrayOffset + i] = getValue(wasmArray, wasmArrayOffset + i);
        }
      },
      _1518: (jsArray, jsArrayOffset, wasmArray, wasmArrayOffset, length) => {
        const setValue = dartInstance.exports.$wasmI32ArraySet;
        for (let i = 0; i < length; i++) {
          setValue(wasmArray, wasmArrayOffset + i, jsArray[jsArrayOffset + i]);
        }
      },
      _1519: (jsArray, jsArrayOffset, wasmArray, wasmArrayOffset, length) => {
        const getValue = dartInstance.exports.$wasmF32ArrayGet;
        for (let i = 0; i < length; i++) {
          jsArray[jsArrayOffset + i] = getValue(wasmArray, wasmArrayOffset + i);
        }
      },
      _1520: (jsArray, jsArrayOffset, wasmArray, wasmArrayOffset, length) => {
        const setValue = dartInstance.exports.$wasmF32ArraySet;
        for (let i = 0; i < length; i++) {
          setValue(wasmArray, wasmArrayOffset + i, jsArray[jsArrayOffset + i]);
        }
      },
      _1521: (jsArray, jsArrayOffset, wasmArray, wasmArrayOffset, length) => {
        const getValue = dartInstance.exports.$wasmF64ArrayGet;
        for (let i = 0; i < length; i++) {
          jsArray[jsArrayOffset + i] = getValue(wasmArray, wasmArrayOffset + i);
        }
      },
      _1522: (jsArray, jsArrayOffset, wasmArray, wasmArrayOffset, length) => {
        const setValue = dartInstance.exports.$wasmF64ArraySet;
        for (let i = 0; i < length; i++) {
          setValue(wasmArray, wasmArrayOffset + i, jsArray[jsArrayOffset + i]);
        }
      },
      _1523: x0 => new ArrayBuffer(x0),
      _1524: s => {
        if (/[[\]{}()*+?.\\^$|]/.test(s)) {
            s = s.replace(/[[\]{}()*+?.\\^$|]/g, '\\$&');
        }
        return s;
      },
      _1526: x0 => x0.index,
      _1528: x0 => x0.flags,
      _1529: x0 => x0.multiline,
      _1530: x0 => x0.ignoreCase,
      _1531: x0 => x0.unicode,
      _1532: x0 => x0.dotAll,
      _1533: (x0,x1) => { x0.lastIndex = x1 },
      _1534: (o, p) => p in o,
      _1535: (o, p) => o[p],
      _1538: x0 => x0.random(),
      _1541: () => globalThis.Math,
      _1542: Function.prototype.call.bind(Number.prototype.toString),
      _1543: Function.prototype.call.bind(BigInt.prototype.toString),
      _1544: Function.prototype.call.bind(Number.prototype.toString),
      _1545: (d, digits) => d.toFixed(digits),

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
