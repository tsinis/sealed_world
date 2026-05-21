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
  // `loadDeferredModules` is a JS function that takes an array of module names
  //   matching wasm files produced by the dart2wasm compiler. It also takes a
  //   callback that should be invoked for each loaded module with 2 arugments:
  //   (1) the module name, (2) the loaded module in a format supported by
  //   `WebAssembly.compile` or `WebAssembly.compileStreaming`. The callback
  //   returns a Promise that resolves when the module is instantiated.
  //   loadDeferredModules should return a Promise that resolves when all the
  //   modules have been loaded and the callback promises have resolved.
  // `loadDeferredId` is a JS function that takes load ID produced by the
  //   compiler when the `use-load-ids` option is passed. Each load ID maps to
  //   one or more wasm files as specified in the emitted JSON file. It also
  //   takes a callback that should be invoked for each loaded module with 2
  //   arugments: (1) the module name, (2) the loaded module in a format
  //   supported by `WebAssembly.compile` or `WebAssembly.compileStreaming`.
  //   The callback returns a Promise that resolves when the module is
  //   instantiated.
  //   loadDeferredModules should return a Promise that resolves when all the
  //   modules have been loaded and the callback promises have resolved.
  async instantiate(additionalImports, {loadDeferredModules, loadDeferredId} = {}) {
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
            AB: Function.prototype.call.bind(DataView.prototype.getInt32),
      AC: Function.prototype.call.bind(DataView.prototype.setUint16),
      AD: (x0,x1) => x0.attachShadow(x1),
      AE: (o, p, r) => o.replaceAll(p, () => r),
      AF: x0 => x0.scrollTop,
      AG: (x0,x1,x2) => x0.set(x1,x2),
      AH: x0 => x0.value,
      AI: x0 => x0.done,
      AJ: (x0,x1,x2,x3,x4) => ({type: x0,data: x1,premultiplyAlpha: x2,colorSpaceConversion: x3,preferAnimation: x4}),
      B: () => new Error().stack,
      BB: Function.prototype.call.bind(DataView.prototype.getUint16),
      BC: Function.prototype.call.bind(DataView.prototype.setUint8),
      BD: (x0,x1) => x0.createElement(x1),
      BE: (x0,x1) => x0[x1],
      BF: x0 => x0.offsetTop,
      BG: x0 => x0.length,
      BH: x0 => x0.selectionDirection,
      BI: (o, m, a) => o[m].apply(o, a),
      BJ: x0 => new window.ImageDecoder(x0),
      C: (exn) => {
        let stackString = exn.toString();
        let frames = stackString.split('\n');
        let drop = 4;
        if (frames[0].startsWith('Error')) {
            drop += 1;
        }
        return frames.slice(drop).join('\n');
      },
      CB: Function.prototype.call.bind(DataView.prototype.getInt16),
      CC: Function.prototype.call.bind(DataView.prototype.setInt8),
      CD: x0 => x0.scale,
      CE: x0 => x0.index,
      CF: x0 => x0.scrollLeft,
      CG: x0 => x0.buffer,
      CH: x0 => x0.selectionStart,
      CI: x0 => x0.iterator,
      CJ: x0 => x0.name,
      D: Function.prototype.call.bind(Number.prototype.toString),
      DB: Function.prototype.call.bind(DataView.prototype.getUint8),
      DC: o => {
        if (o === null || o === undefined) return 0;
        if (o instanceof Int8Array) return 1;
        return 2;
      },
      DD: x0 => x0.visualViewport,
      DE: x0 => x0.flags,
      DF: x0 => x0.offsetLeft,
      DG: x0 => x0.wasmMemory,
      DH: x0 => x0.selectionEnd,
      DI: () => globalThis.Symbol,
      DJ: x0 => x0.repetitionCount,
      E: Function.prototype.call.bind(BigInt.prototype.toString),
      EB: Function.prototype.call.bind(DataView.prototype.getInt8),
      EC: (o, start, length) => new Float64Array(o.buffer, o.byteOffset + start, length),
      ED: x0 => x0.devicePixelRatio,
      EE: s => s.trim(),
      EF: x0 => x0.offsetParent,
      EG: () => globalThis.window._flutter_skwasmInstance,
      EH: (x0,x1) => x0.scrollIntoView(x1),
      EI: (x0,x1) => new Intl.Segmenter(x0,x1),
      EJ: x0 => x0.frameCount,
      F: Function.prototype.call.bind(Number.prototype.toString),
      FB: o => o.length,
      FC: (o, start, length) => new Float32Array(o.buffer, o.byteOffset + start, length),
      FD: x0 => x0.height,
      FE: (a, s) => a.join(s),
      FF: x0 => x0.deltaMode,
      FG: x0 => x0.getReader(),
      FH: (x0,x1) => x0.replaceWith(x1),
      FI: x0 => x0.Segmenter,
      FJ: x0 => x0.selectedTrack,
      G: Function.prototype.call.bind(String.prototype.indexOf),
      GB: (o, i) => o[i],
      GC: (o, start, length) => new Uint32Array(o.buffer, o.byteOffset + start, length),
      GD: x0 => x0.width,
      GE: (x0,x1) => x0.error(x1),
      GF: x0 => x0.deltaY,
      GG: x0 => x0.value,
      GH: (x0,x1) => { x0.type = x1 },
      GI: () => new TextDecoder(),
      GJ: x0 => x0.completed,
      H: s => JSON.stringify(s),
      HB: o => {
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
        if (o instanceof Promise) return 18;
        return 19;
      },
      HC: (o, start, length) => new Int32Array(o.buffer, o.byteOffset + start, length),
      HD: x0 => x0.screen,
      HE: () => globalThis.console,
      HF: x0 => x0.deltaX,
      HG: x0 => x0.done,
      HH: (x0,x1) => { x0.className = x1 },
      HI: (map, o, v) => map.set(o, v),
      HJ: x0 => x0.ready,
      I: (s, p, i) => s.lastIndexOf(p, i),
      IB: (x0,x1) => x0.prepend(x1),
      IC: (o, start, length) => new Uint16Array(o.buffer, o.byteOffset + start, length),
      ID: x0 => x0.remove(),
      IE: s => s.trimRight(),
      IF: x0 => x0.wheelDeltaY,
      IG: x0 => x0.read(),
      IH: (x0,x1) => { x0.tabIndex = x1 },
      II: (handle) => clearInterval(handle),
      IJ: x0 => x0.tracks,
      J: o => o,
      JB: (x0,x1,x2,x3) => x0.addEventListener(x1,x2,x3),
      JC: (o, start, length) => new Int16Array(o.buffer, o.byteOffset + start, length),
      JD: o => {
        if (o === null || o === undefined) return 0;
        if (typeof(o) === 'string') return 1;
        return 2;
      },
      JE: x0 => x0.visibilityState,
      JF: x0 => x0.wheelDeltaX,
      JG: x0 => x0.body,
      JH: (x0,x1) => { x0.name = x1 },
      JI: (ms, c) =>
      setInterval(() => dartInstance.exports.$invokeCallback(c), ms),
      JJ: x0 => x0.close(),
      K: o => String(o),
      KB: b => !!b,
      KC: (o, start, length) => new Uint8ClampedArray(o.buffer, o.byteOffset + start, length),
      KD: x0 => x0.tabIndex,
      KE: (x0,x1,x2) => x0.removeEventListener(x1,x2),
      KF: x0 => x0.pressure,
      KG: x0 => x0.status,
      KH: (x0,x1) => { x0.placeholder = x1 },
      KI: () => Date.now(),
      KJ: (x0,x1) => ({frameIndex: x0,completeFramesOnly: x1}),
      L: (c) =>
      queueMicrotask(() => dartInstance.exports.$invokeCallback(c)),
      LB: (module,f) => finalizeWrapper(f, function(x0) { return module.exports.K(f,arguments.length,x0) }),
      LC: (o, start, length) => new Uint8Array(o.buffer, o.byteOffset + start, length),
      LD: (x0,x1) => x0.contains(x1),
      LE: x0 => x0.disconnect(),
      LF: x0 => x0.tiltY,
      LG: x0 => x0.content,
      LH: (x0,x1) => { x0.autocomplete = x1 },
      LI: x0 => x0.debugSkipFontRetryDelay,
      LJ: (x0,x1) => x0.decode(x1),
      M: s => printToConsole(s),
      MB: (x0,x1) => x0.focus(x1),
      MC: (o, start, length) => new Int8Array(o.buffer, o.byteOffset + start, length),
      MD: x0 => x0.activeElement,
      ME: x0 => new Intl.Locale(x0),
      MF: x0 => x0.tiltX,
      MG: x0 => x0.document,
      MH: (x0,x1) => { x0.name = x1 },
      MI: x0 => x0.pop(),
      MJ: x0 => x0.displayHeight,
      N: (exn) => {
        if (exn instanceof Error) {
          return exn.stack;
        } else {
          return null;
        }
      },
      NB: () => ({}),
      NC: (x0,x1) => x0.querySelector(x1),
      ND: x0 => x0.parentNode,
      NE: x0 => x0.region,
      NF: x0 => x0.pointerType,
      NG: (x0,x1) => x0.fetch(x1),
      NH: (x0,x1) => { x0.placeholder = x1 },
      NI: x0 => new WeakRef(x0),
      NJ: x0 => x0.displayWidth,
      O: o => o === undefined,
      OB: (o, p, v) => o[p] = v,
      OC: (x0,x1) => x0.item(x1),
      OD: x0 => x0.tagName,
      OE: x0 => x0.script,
      OF: x0 => x0.pointerId,
      OG: x0 => x0.assetBase,
      OH: (x0,x1) => { x0.action = x1 },
      OI: x0 => x0.deref(),
      OJ: x0 => x0.duration,
      P: (l, r) => l === r,
      PB: () => [],
      PC: x0 => x0.length,
      PD: x0 => x0.target,
      PE: x0 => x0.language,
      PF: x0 => x0.getCoalescedEvents(),
      PG: (x0,x1) => new OffscreenCanvas(x0,x1),
      PH: (x0,x1) => { x0.method = x1 },
      PI: () => globalThis.WeakRef,
      PJ: x0 => x0.image,
      Q: x0 => x0.random(),
      QB: (a, i) => a.push(i),
      QC: (x0,x1) => x0.querySelectorAll(x1),
      QD: x0 => x0.clientY,
      QE: x0 => x0.languages,
      QF: x0 => x0.blur(),
      QG: Function.prototype.call.bind(DataView.prototype.getBigInt64),
      QH: (x0,x1) => { x0.noValidate = x1 },
      QI: (a, i) => a.splice(i, 1),
      QJ: () => globalThis.window.ImageDecoder,
      R: o => o,
      RB: x0 => new Int8Array(x0),
      RC: (x0,x1) => x0.getAttribute(x1),
      RD: x0 => x0.clientX,
      RE: (x0,x1) => x0.observe(x1),
      RF: x0 => x0.button,
      RG: Function.prototype.call.bind(DataView.prototype.setBigInt64),
      RH: (x0,x1) => x0.removeAttribute(x1),
      RI: a => a.pop(),
      S: o => {
        if (o === undefined || o === null) return 0;
        if (typeof o === 'number') return 1;
        return 2;
      },
      SB: (jsArray, jsArrayOffset, wasmArray, wasmArrayOffset, length) => {
        const getValue = dartInstance.exports.$wasmI8ArrayGet;
        for (let i = 0; i < length; i++) {
          jsArray[jsArrayOffset + i] = getValue(wasmArray, wasmArrayOffset + i);
        }
      },
      SC: (x0,x1) => x0.appendChild(x1),
      SD: (x0,x1,x2) => x0.setAttribute(x1,x2),
      SE: (module,f) => finalizeWrapper(f, function(x0,x1) { return module.exports.L(f,arguments.length,x0,x1) }),
      SF: x0 => x0.innerHeight,
      SG: (o, start, length) => new BigInt64Array(o.buffer, o.byteOffset + start, length),
      SH: x0 => x0.isConnected,
      SI: (map, o) => map.get(o),
      T: () => globalThis.Math,
      TB: x0 => new Uint8Array(x0),
      TC: (x0,x1) => x0.append(x1),
      TD: x0 => x0.getBoundingClientRect(),
      TE: x0 => new ResizeObserver(x0),
      TF: x0 => x0.innerWidth,
      TG: (x0,x1,x2,x3) => x0.pushState(x1,x2,x3),
      TH: x0 => x0.click(),
      TI: () => new WeakMap(),
      U: (x0,x1) => x0.didCreateEngineInitializer(x1),
      UB: x0 => new Uint8ClampedArray(x0),
      UC: (x0,x1,x2,x3) => x0.setProperty(x1,x2,x3),
      UD: (ms, c) =>
      setTimeout(() => dartInstance.exports.$invokeCallback(c),ms),
      UE: x0 => x0.computedStyleMap(),
      UF: x0 => x0.height,
      UG: x0 => x0.history,
      UH: (x0,x1) => x0.getElementsByClassName(x1),
      UI: (x0,x1,x2) => x0.insertBefore(x1,x2),
      V: (module,f) => finalizeWrapper(f, function(x0) { return module.exports.C(f,arguments.length,x0) }),
      VB: x0 => new Int16Array(x0),
      VC: x0 => x0.style,
      VD: x0 => x0.bottom,
      VE: (x0,x1) => x0.get(x1),
      VF: x0 => x0.width,
      VG: x0 => x0.search,
      VH: (jsArray, jsArrayOffset, wasmArray, wasmArrayOffset, length) => {
        const setValue = dartInstance.exports.$wasmF32ArraySet;
        for (let i = 0; i < length; i++) {
          setValue(wasmArray, wasmArrayOffset + i, jsArray[jsArrayOffset + i]);
        }
      },
      VI: x0 => x0.id,
      W: (module,f) => finalizeWrapper(f, function() { return module.exports.D(f,arguments.length) }),
      WB: x0 => new Uint16Array(x0),
      WC: x0 => x0.debugShowSemanticsNodes,
      WD: x0 => x0.top,
      WE: (x0,x1) => x0.getPropertyValue(x1),
      WF: x0 => x0.clientHeight,
      WG: x0 => x0.location,
      WH: (jsArray, jsArrayOffset, wasmArray, wasmArrayOffset, length) => {
        const setValue = dartInstance.exports.$wasmF64ArraySet;
        for (let i = 0; i < length; i++) {
          setValue(wasmArray, wasmArrayOffset + i, jsArray[jsArrayOffset + i]);
        }
      },
      WI: x0 => x0.offsetHeight,
      X: (x0,x1) => ({initializeEngine: x0,autoStart: x1}),
      XB: x0 => new Int32Array(x0),
      XC: o => {
        if (o === undefined || o === null) return 0;
        if (typeof o === 'boolean') return 1;
        return 2;
      },
      XD: x0 => x0.right,
      XE: x0 => globalThis.parseFloat(x0),
      XF: x0 => x0.clientWidth,
      XG: x0 => x0.pathname,
      XH: (x0,x1) => x0.dispatchEvent(x1),
      XI: x0 => x0.offsetWidth,
      Y: (module,f) => finalizeWrapper(f, function(x0,x1) { return module.exports.E(f,arguments.length,x0,x1) }),
      YB: (jsArray, jsArrayOffset, wasmArray, wasmArrayOffset, length) => {
        const getValue = dartInstance.exports.$wasmI32ArrayGet;
        for (let i = 0; i < length; i++) {
          jsArray[jsArrayOffset + i] = getValue(wasmArray, wasmArrayOffset + i);
        }
      },
      YC: (x0,x1) => x0.warn(x1),
      YD: x0 => x0.left,
      YE: (x0,x1) => x0.getComputedStyle(x1),
      YF: (x0,x1) => { x0.content = x1 },
      YG: (x0,x1,x2,x3) => x0.replaceState(x1,x2,x3),
      YH: (x0,x1) => x0.createEvent(x1),
      YI: (x0,x1) => { x0.disabled = x1 },
      Z: x0 => new Promise(x0),
      ZB: x0 => new Uint32Array(x0),
      ZC: x0 => x0.console,
      ZD: x0 => x0.clientY,
      ZE: (o, p) => p in o,
      ZF: (x0,x1) => { x0.name = x1 },
      ZG: x0 => x0.state,
      ZH: (x0,x1,x2,x3) => x0.initEvent(x1,x2,x3),
      ZI: x0 => x0.disabled,
      a: (x0,x1,x2) => x0.call(x1,x2),
      aB: x0 => new Float32Array(x0),
      aC: () => globalThis.window,
      aD: x0 => x0.clientX,
      aE: (x0,x1) => { x0.textContent = x1 },
      aF: x0 => x0.head,
      aG: x0 => x0.hash,
      aH: x0 => x0.readText(),
      aI: (x0,x1) => { x0.min = x1 },
      b: (constructor, args) => {
        const factoryFunction = constructor.bind.apply(
            constructor, [null, ...args]);
        return new factoryFunction();
      },
      bB: (jsArray, jsArrayOffset, wasmArray, wasmArrayOffset, length) => {
        const getValue = dartInstance.exports.$wasmF32ArrayGet;
        for (let i = 0; i < length; i++) {
          jsArray[jsArrayOffset + i] = getValue(wasmArray, wasmArrayOffset + i);
        }
      },
      bC: (o, c) => o instanceof c,
      bD: x0 => x0.changedTouches,
      bE: x0 => x0.documentElement,
      bF: (x0,x1) => x0.removeChild(x1),
      bG: (x0,x1) => x0.go(x1),
      bH: x0 => x0.clipboard,
      bI: (x0,x1) => { x0.max = x1 },
      c: x0 => new Array(x0),
      cB: x0 => new Float64Array(x0),
      cC: (x0,x1) => x0.exec(x1),
      cD: x0 => x0.offsetY,
      cE: (module,f) => finalizeWrapper(f, function(x0) { return module.exports.M(f,arguments.length,x0) }),
      cF: x0 => x0.firstChild,
      cG: x0 => x0.parentElement,
      cH: (x0,x1) => x0.writeText(x1),
      cI: (x0,x1) => { x0.scrollLeft = x1 },
      d: o => [o],
      dB: (jsArray, jsArrayOffset, wasmArray, wasmArrayOffset, length) => {
        const getValue = dartInstance.exports.$wasmF64ArrayGet;
        for (let i = 0; i < length; i++) {
          jsArray[jsArrayOffset + i] = getValue(wasmArray, wasmArrayOffset + i);
        }
      },
      dC: x0 => x0.length,
      dD: x0 => x0.offsetX,
      dE: x0 => x0.matches,
      dF: x0 => x0.viewConstraints,
      dG: (x0,x1) => x0.querySelectorAll(x1),
      dH: x0 => x0.unlock(),
      dI: (x0,x1) => { x0.spellcheck = x1 },
      e: (o0, o1) => [o0, o1],
      eB: x0 => new ArrayBuffer(x0),
      eC: (x0,x1) => { x0.lastIndex = x1 },
      eD: x0 => x0.type,
      eE: (x0,x1) => x0.matchMedia(x1),
      eF: x0 => x0.hostElement,
      eG: (x0,x1) => x0.requestAnimationFrame(x1),
      eH: (x0,x1) => x0.lock(x1),
      eI: (x0,x1) => { x0.disabled = x1 },
      f: (o0, o1, o2) => [o0, o1, o2],
      fB: (x0,x1,x2) => new Uint8Array(x0,x1,x2),
      fC: (s, m) => {
        try {
          return new RegExp(s, m);
        } catch (e) {
          return String(e);
        }
      },
      fD: (handle) => clearTimeout(handle),
      fE: x0 => x0.matches,
      fF: x0 => x0.loader,
      fG: (module,f) => finalizeWrapper(f, function(x0) { return module.exports.P(f,arguments.length,x0) }),
      fH: x0 => x0.orientation,
      fI: (x0,x1) => x0.transferFromImageBitmap(x1),
      g: (o0, o1, o2, o3) => [o0, o1, o2, o3],
      gB: (x0,x1,x2) => new DataView(x0,x1,x2),
      gC: o => o instanceof RegExp,
      gD: (x0,x1) => x0.closest(x1),
      gE: x0 => x0.language,
      gF: () => globalThis._flutter,
      gG: x0 => x0.now(),
      gH: (x0,x1) => { x0.title = x1 },
      gI: (x0,x1) => x0.getContext(x1),
      h: (x0,x1,x2) => { x0[x1] = x2 },
      hB: (o, p) => o[p],
      hC: (string, times) => string.repeat(times),
      hD: x0 => x0.maxTouchPoints,
      hE: (x0,x1,x2,x3) => x0.register(x1,x2,x3),
      hF: o => {
        const proto = Object.getPrototypeOf(o);
        return proto === Object.prototype || proto === null;
      },
      hG: x0 => x0.performance,
      hH: (x0,x1) => x0.vibrate(x1),
      hI: (x0,x1) => { x0.height = x1 },
      i: (o, p) => o[p],
      iB: (b, o) => new DataView(b, o),
      iC: x0 => x0.dotAll,
      iD: x0 => x0.platform,
      iE: () => globalThis.window.FinalizationRegistry,
      iF: o => Object.keys(o),
      iG: (d, digits) => d.toFixed(digits),
      iH: x0 => x0.arrayBuffer(),
      iI: (x0,x1) => { x0.width = x1 },
      j: () => globalThis,
      jB: (b, o, l) => new DataView(b, o, l),
      jC: x0 => x0.unicode,
      jD: s => new Date(s * 1000).getTimezoneOffset() * 60,
      jE: (module,f) => finalizeWrapper(f, function(x0) { return module.exports.N(f,arguments.length,x0) }),
      jF: x0 => x0.state,
      jG: x0 => x0.maxHeight,
      jH: o => {
        if (o === null || o === undefined) return 0;
        if (o instanceof ArrayBuffer) return 1;
        if (globalThis.SharedArrayBuffer !== undefined &&
            o instanceof SharedArrayBuffer) {
          return 2;
        }
        return 3;
      },
      jI: x0 => x0.height,
      k: (module,f) => finalizeWrapper(f, function(x0) { return module.exports.F(f,arguments.length,x0) }),
      kB: o => o.buffer,
      kC: x0 => x0.ignoreCase,
      kD: Date.now,
      kE: x0 => new window.FinalizationRegistry(x0),
      kF: x0 => x0.hostElement,
      kG: x0 => x0.maxWidth,
      kH: () => typeof dartUseDateNowForTicks !== "undefined",
      kI: x0 => x0.width,
      l: x0 => ({runApp: x0}),
      lB: o => o.byteOffset,
      lC: x0 => x0.multiline,
      lD: x0 => x0.body,
      lE: (x0,x1) => x0.unregister(x1),
      lF: x0 => x0.multiViewEnabled,
      lG: x0 => x0.minHeight,
      lH: () => Date.now(),
      lI: x0 => x0.rasterEndMilliseconds,
      m: (module,f) => finalizeWrapper(f, function(x0) { return module.exports.G(f,arguments.length,x0) }),
      mB: o => {
        if (o === null || o === undefined) return 0;
        if (o instanceof Float64Array) return 1;
        return 2;
      },
      mC: (string, token) => string.split(token),
      mD: () => globalThis.document,
      mE: (x0,x1) => x0.contains(x1),
      mF: (x0,x1) => x0.querySelector(x1),
      mG: x0 => x0.minWidth,
      mH: () => 1000 * performance.now(),
      mI: x0 => x0.rasterStartMilliseconds,
      n: (module,f) => finalizeWrapper(f, function(x0) { return module.exports.H(f,arguments.length,x0) }),
      nB: Function.prototype.call.bind(DataView.prototype.setFloat64),
      nC: o => o instanceof Array,
      nD: (x0,x1,x2) => x0.addEventListener(x1,x2),
      nE: (s) => +s,
      nF: (module,f) => finalizeWrapper(f, function(x0) { return module.exports.O(f,arguments.length,x0) }),
      nG: (x0,x1) => x0.removeProperty(x1),
      nH: (x0,x1,x2) => x0.slice(x1,x2),
      nI: x0 => x0.imageBitmaps,
      o: (x0,x1) => ({addView: x0,removeView: x1}),
      oB: Function.prototype.call.bind(DataView.prototype.setFloat32),
      oC: (a, i) => a[i],
      oD: x0 => x0.hasFocus(),
      oE: s => {
        if (!/^\s*[+-]?(?:Infinity|NaN|(?:\.\d+|\d+(?:\.\d*)?)(?:[eE][+-]?\d+)?)\s*$/.test(s)) {
          return NaN;
        }
        return parseFloat(s);
      },
      oF: x0 => x0.keyCode,
      oG: (x0,x1) => x0.add(x1),
      oH: (x0,x1) => x0.decode(x1),
      oI: x0 => x0.canvasKitMaximumSurfaces,
      p: o => o,
      pB: (t, s) => t.set(s),
      pC: a => a.length,
      pD: x0 => x0.relatedTarget,
      pE: x0 => x0.classList,
      pF: x0 => x0.location,
      pG: x0 => x0.data,
      pH: (x0,x1) => x0.adoptText(x1),
      pI: (x0,x1) => x0.revokeObjectURL(x1),
      q: o => typeof o === 'function' && o[jsWrappedDartFunctionSymbol] === true,
      qB: o => {
        if (o === null || o === undefined) return 0;
        if (o instanceof Float32Array) return 1;
        return 2;
      },
      qC: x0 => x0.userAgent,
      qD: x0 => x0.shiftKey,
      qE: x0 => x0.key,
      qF: (x0,x1) => x0.getModifierState(x1),
      qG: (x0,x1) => { x0.scrollTop = x1 },
      qH: x0 => x0.first(),
      qI: (x0,x1,x2,x3,x4) => globalThis.createImageBitmap(x0,x1,x2,x3,x4),
      r: f => f.dartFunction,
      rB: o => {
        if (o === null || o === undefined) return 0;
        if (o instanceof Uint32Array) return 1;
        return 2;
      },
      rC: x0 => x0.navigator,
      rD: s => s.trimLeft(),
      rE: (x0,x1) => x0.getModifierState(x1),
      rF: x0 => x0.metaKey,
      rG: (x0,x1,x2) => x0.setSelectionRange(x1,x2),
      rH: x0 => x0.next(),
      rI: x0 => x0.naturalHeight,
      s: (module,f) => finalizeWrapper(f, function(x0) { return module.exports.I(f,arguments.length,x0) }),
      sB: o => {
        if (o === null || o === undefined) return 0;
        if (o instanceof Int32Array) return 1;
        return 2;
      },
      sC: Function.prototype.call.bind(String.prototype.toLowerCase),
      sD: (decoder, codeUnits) => decoder.decode(codeUnits),
      sE: x0 => x0.timeStamp,
      sF: x0 => x0.altKey,
      sG: (x0,x1) => { x0.value = x1 },
      sH: x0 => x0.current(),
      sI: x0 => x0.naturalWidth,
      t: (module,f) => finalizeWrapper(f, function(x0,x1) { return module.exports.J(f,arguments.length,x0,x1) }),
      tB: o => o instanceof Uint16Array,
      tC: Object.is,
      tD: () => new TextDecoder("utf-8", {fatal: true}),
      tE: x0 => x0.preventDefault(),
      tF: x0 => x0.ctrlKey,
      tG: (x0,x1,x2) => x0.setSelectionRange(x1,x2),
      tH: (x0,x1) => new Intl.v8BreakIterator(x0,x1),
      tI: x0 => x0.decode(),
      u: (p, s, f) => p.then(s, (e) => f(e, e === undefined)),
      uB: o => o instanceof Int16Array,
      uC: x0 => x0.vendor,
      uD: () => new TextDecoder("utf-8", {fatal: false}),
      uE: x0 => x0.parent,
      uF: x0 => x0.isComposing,
      uG: (x0,x1) => { x0.value = x1 },
      uH: x0 => x0.v8BreakIterator,
      uI: (x0,x1) => { x0.src = x1 },
      v: Function.prototype.call.bind(Object.getOwnPropertyDescriptor(DataView.prototype, 'byteLength').get),
      vB: o => o instanceof Uint8ClampedArray,
      vC: (x0,x1) => x0.createTextNode(x1),
      vD: s => s.toUpperCase(),
      vE: (x0,x1) => x0.hasAttribute(x1),
      vF: x0 => x0.code,
      vG: s => {
        if (/[[\]{}()*+?.\\^$|]/.test(s)) {
            s = s.replace(/[[\]{}()*+?.\\^$|]/g, '\\$&');
        }
        return s;
      },
      vH: () => globalThis.Intl,
      vI: (x0,x1) => { x0.decoding = x1 },
      w: (o) => new DataView(o.buffer, o.byteOffset, o.byteLength),
      wB: o => {
        if (o === null || o === undefined) return 0;
        if (o instanceof Uint8Array) return 1;
        return 2;
      },
      wC: (x0,x1) => { x0.id = x1 },
      wD: (a, i, v) => a[i] = v,
      wE: x0 => x0.buttons,
      wF: x0 => x0.stopPropagation(),
      wG: x0 => x0.value,
      wH: (x0,x1) => x0.segment(x1),
      wI: (x0,x1) => { x0.crossOrigin = x1 },
      x: Function.prototype.call.bind(DataView.prototype.getFloat64),
      xB: Function.prototype.call.bind(DataView.prototype.setInt32),
      xC: (x0,x1) => { x0.nonce = x1 },
      xD: (jsArray, jsArrayOffset, wasmArray, wasmArrayOffset, length) => {
        const setValue = dartInstance.exports.$wasmI8ArraySet;
        for (let i = 0; i < length; i++) {
          setValue(wasmArray, wasmArrayOffset + i, jsArray[jsArrayOffset + i]);
        }
      },
      xE: x0 => x0.ctrlKey,
      xF: x0 => x0.repeat,
      xG: x0 => x0.selectionDirection,
      xH: x0 => x0.index,
      xI: (x0,x1) => x0.createObjectURL(x1),
      y: Function.prototype.call.bind(DataView.prototype.getFloat32),
      yB: Function.prototype.call.bind(DataView.prototype.setUint32),
      yC: x0 => x0.nonce,
      yD: (jsArray, jsArrayOffset, wasmArray, wasmArrayOffset, length) => {
        const setValue = dartInstance.exports.$wasmI32ArraySet;
        for (let i = 0; i < length; i++) {
          setValue(wasmArray, wasmArrayOffset + i, jsArray[jsArrayOffset + i]);
        }
      },
      yE: x0 => x0.y,
      yF: x0 => x0.fontFallbackBaseUrl,
      yG: x0 => x0.selectionStart,
      yH: x0 => x0.next(),
      yI: x0 => x0.URL,
      z: Function.prototype.call.bind(DataView.prototype.getUint32),
      zB: Function.prototype.call.bind(DataView.prototype.setInt16),
      zC: () => globalThis.window.flutterConfiguration,
      zD: (x0,x1) => x0.test(x1),
      zE: x0 => x0.x,
      zF: x0 => new Uint8Array(x0),
      zG: x0 => x0.selectionEnd,
      zH: x0 => x0.value,
      zI: x0 => new Blob(x0),

    };

    const baseImports = {
      _: dart2wasm,
      Math: Math,
      Date: Date,
      Object: Object,
      Array: Array,
      Reflect: Reflect,
      WebAssembly: {
        JSTag: WebAssembly.JSTag,
      },
      "": new Proxy({}, { get(_, prop) { return prop; } }),

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
    dartInstance.exports.B(dartInstance);

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
