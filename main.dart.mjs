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

    if (WebAssembly.String === undefined) {
        WebAssembly.String = {
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
    }

    // Imports
    const dart2wasm = {

_1: (x0,x1,x2) => x0.set(x1,x2),
_2: (x0,x1,x2) => x0.set(x1,x2),
_6: f => finalizeWrapper(f,x0 => dartInstance.exports._6(f,x0)),
_7: (x0,x1,x2) => x0.slice(x1,x2),
_8: (x0,x1) => x0.decode(x1),
_9: (x0,x1) => x0.segment(x1),
_10: () => new TextDecoder(),
_11: x0 => x0.buffer,
_12: x0 => x0.wasmMemory,
_13: () => globalThis.window._flutter_skwasmInstance,
_14: x0 => x0.rasterStartMilliseconds,
_15: x0 => x0.rasterEndMilliseconds,
_16: x0 => x0.imageBitmaps,
_160: x0 => x0.focus(),
_161: x0 => x0.select(),
_162: (x0,x1) => x0.append(x1),
_163: x0 => x0.remove(),
_166: x0 => x0.unlock(),
_171: x0 => x0.getReader(),
_181: x0 => new MutationObserver(x0),
_200: (x0,x1,x2) => x0.addEventListener(x1,x2),
_201: (x0,x1,x2) => x0.removeEventListener(x1,x2),
_204: x0 => new ResizeObserver(x0),
_207: (x0,x1) => new Intl.Segmenter(x0,x1),
_208: x0 => x0.next(),
_209: (x0,x1) => new Intl.v8BreakIterator(x0,x1),
_285: x0 => x0.close(),
_286: (x0,x1,x2,x3,x4) => ({type: x0,data: x1,premultiplyAlpha: x2,colorSpaceConversion: x3,preferAnimation: x4}),
_287: x0 => new window.ImageDecoder(x0),
_288: x0 => x0.close(),
_289: x0 => ({frameIndex: x0}),
_290: (x0,x1) => x0.decode(x1),
_293: f => finalizeWrapper(f,x0 => dartInstance.exports._293(f,x0)),
_294: f => finalizeWrapper(f,x0 => dartInstance.exports._294(f,x0)),
_295: (x0,x1) => ({addView: x0,removeView: x1}),
_296: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._296(f,arguments.length,x0) }),
_297: f => finalizeWrapper(f,() => dartInstance.exports._297(f)),
_298: (x0,x1) => ({initializeEngine: x0,autoStart: x1}),
_299: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._299(f,arguments.length,x0) }),
_300: x0 => ({runApp: x0}),
_301: x0 => new Uint8Array(x0),
_303: x0 => x0.preventDefault(),
_304: x0 => x0.stopPropagation(),
_305: (x0,x1) => x0.addListener(x1),
_306: (x0,x1) => x0.removeListener(x1),
_307: (x0,x1) => x0.prepend(x1),
_308: x0 => x0.remove(),
_309: x0 => x0.disconnect(),
_310: (x0,x1) => x0.addListener(x1),
_311: (x0,x1) => x0.removeListener(x1),
_312: (x0,x1) => x0.append(x1),
_313: x0 => x0.remove(),
_314: x0 => x0.stopPropagation(),
_318: x0 => x0.preventDefault(),
_319: (x0,x1) => x0.append(x1),
_320: x0 => x0.remove(),
_325: (x0,x1) => x0.appendChild(x1),
_326: (x0,x1,x2) => x0.insertBefore(x1,x2),
_327: (x0,x1) => x0.removeChild(x1),
_328: (x0,x1) => x0.appendChild(x1),
_329: (x0,x1) => x0.transferFromImageBitmap(x1),
_330: (x0,x1) => x0.append(x1),
_331: (x0,x1) => x0.append(x1),
_332: (x0,x1) => x0.append(x1),
_333: x0 => x0.remove(),
_334: x0 => x0.focus(),
_335: x0 => x0.focus(),
_336: x0 => x0.remove(),
_337: x0 => x0.focus(),
_338: x0 => x0.remove(),
_339: (x0,x1) => x0.append(x1),
_340: x0 => x0.focus(),
_341: (x0,x1) => x0.append(x1),
_342: x0 => x0.remove(),
_343: (x0,x1) => x0.append(x1),
_344: (x0,x1) => x0.append(x1),
_345: (x0,x1,x2) => x0.insertBefore(x1,x2),
_346: (x0,x1) => x0.append(x1),
_347: (x0,x1,x2) => x0.insertBefore(x1,x2),
_348: x0 => x0.remove(),
_349: x0 => x0.remove(),
_350: x0 => x0.remove(),
_351: (x0,x1) => x0.append(x1),
_352: x0 => x0.remove(),
_353: x0 => x0.remove(),
_354: x0 => x0.getBoundingClientRect(),
_355: x0 => x0.remove(),
_356: x0 => x0.blur(),
_358: x0 => x0.focus(),
_359: x0 => x0.focus(),
_360: x0 => x0.remove(),
_361: x0 => x0.focus(),
_362: x0 => x0.focus(),
_363: x0 => x0.blur(),
_364: x0 => x0.remove(),
_377: (x0,x1) => x0.append(x1),
_378: x0 => x0.remove(),
_379: (x0,x1) => x0.append(x1),
_380: (x0,x1,x2) => x0.insertBefore(x1,x2),
_381: (x0,x1) => x0.append(x1),
_382: x0 => x0.focus(),
_383: x0 => x0.focus(),
_384: x0 => x0.focus(),
_385: x0 => x0.focus(),
_386: x0 => x0.focus(),
_387: (x0,x1) => x0.append(x1),
_388: x0 => x0.focus(),
_389: x0 => x0.blur(),
_390: x0 => x0.remove(),
_392: x0 => x0.preventDefault(),
_393: x0 => x0.focus(),
_394: x0 => x0.preventDefault(),
_395: x0 => x0.preventDefault(),
_396: x0 => x0.preventDefault(),
_397: x0 => x0.focus(),
_398: x0 => x0.focus(),
_399: (x0,x1) => x0.append(x1),
_400: x0 => x0.focus(),
_401: x0 => x0.focus(),
_402: x0 => x0.focus(),
_403: x0 => x0.focus(),
_404: (x0,x1) => x0.observe(x1),
_405: x0 => x0.disconnect(),
_406: (x0,x1) => x0.appendChild(x1),
_407: (x0,x1) => x0.appendChild(x1),
_408: (x0,x1) => x0.appendChild(x1),
_409: (x0,x1) => x0.append(x1),
_410: (x0,x1) => x0.append(x1),
_411: x0 => x0.remove(),
_412: (x0,x1) => x0.append(x1),
_414: (x0,x1) => x0.appendChild(x1),
_415: (x0,x1) => x0.append(x1),
_416: x0 => x0.remove(),
_417: (x0,x1) => x0.append(x1),
_421: (x0,x1) => x0.appendChild(x1),
_422: x0 => x0.remove(),
_977: () => globalThis.window.flutterConfiguration,
_978: x0 => x0.assetBase,
_982: x0 => x0.debugShowSemanticsNodes,
_983: x0 => x0.hostElement,
_984: x0 => x0.multiViewEnabled,
_985: x0 => x0.nonce,
_987: x0 => x0.useColorEmoji,
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
_1001: (x0,x1) => x0.fetch(x1),
_1006: (x0,x1) => x0.dispatchEvent(x1),
_1007: (x0,x1) => x0.matchMedia(x1),
_1008: (x0,x1) => x0.getComputedStyle(x1),
_1010: x0 => x0.screen,
_1011: (x0,x1) => x0.requestAnimationFrame(x1),
_1012: f => finalizeWrapper(f,x0 => dartInstance.exports._1012(f,x0)),
_1016: (x0,x1) => x0.warn(x1),
_1019: () => globalThis.window,
_1020: () => globalThis.Intl,
_1021: () => globalThis.Symbol,
_1024: x0 => x0.clipboard,
_1025: x0 => x0.maxTouchPoints,
_1026: x0 => x0.vendor,
_1027: x0 => x0.language,
_1028: x0 => x0.platform,
_1029: x0 => x0.userAgent,
_1030: x0 => x0.languages,
_1031: x0 => x0.documentElement,
_1032: (x0,x1) => x0.querySelector(x1),
_1035: (x0,x1) => x0.createElement(x1),
_1037: (x0,x1) => x0.execCommand(x1),
_1041: (x0,x1) => x0.createTextNode(x1),
_1042: (x0,x1) => x0.createEvent(x1),
_1046: x0 => x0.head,
_1047: x0 => x0.body,
_1048: (x0,x1) => x0.title = x1,
_1051: x0 => x0.activeElement,
_1053: x0 => x0.visibilityState,
_1054: () => globalThis.document,
_1055: (x0,x1,x2) => x0.addEventListener(x1,x2),
_1056: (x0,x1,x2,x3) => x0.addEventListener(x1,x2,x3),
_1057: (x0,x1,x2,x3) => x0.addEventListener(x1,x2,x3),
_1058: (x0,x1,x2) => x0.removeEventListener(x1,x2),
_1061: f => finalizeWrapper(f,x0 => dartInstance.exports._1061(f,x0)),
_1062: x0 => x0.target,
_1064: x0 => x0.timeStamp,
_1065: x0 => x0.type,
_1066: x0 => x0.preventDefault(),
_1070: (x0,x1,x2,x3) => x0.initEvent(x1,x2,x3),
_1075: x0 => x0.firstChild,
_1080: x0 => x0.parentElement,
_1086: (x0,x1) => x0.removeChild(x1),
_1088: (x0,x1) => x0.textContent = x1,
_1090: (x0,x1) => x0.contains(x1),
_1095: x0 => x0.firstElementChild,
_1097: x0 => x0.nextElementSibling,
_1098: x0 => x0.clientHeight,
_1099: x0 => x0.clientWidth,
_1100: x0 => x0.id,
_1101: (x0,x1) => x0.id = x1,
_1104: (x0,x1) => x0.spellcheck = x1,
_1105: x0 => x0.tagName,
_1106: x0 => x0.style,
_1107: (x0,x1) => x0.append(x1),
_1109: x0 => x0.getBoundingClientRect(),
_1114: (x0,x1) => x0.closest(x1),
_1118: (x0,x1) => x0.querySelectorAll(x1),
_1119: x0 => x0.remove(),
_1120: (x0,x1,x2) => x0.setAttribute(x1,x2),
_1121: (x0,x1) => x0.removeAttribute(x1),
_1122: (x0,x1) => x0.tabIndex = x1,
_1126: x0 => x0.scrollTop,
_1127: (x0,x1) => x0.scrollTop = x1,
_1128: x0 => x0.scrollLeft,
_1129: (x0,x1) => x0.scrollLeft = x1,
_1130: x0 => x0.classList,
_1131: (x0,x1) => x0.className = x1,
_1135: (x0,x1) => x0.getElementsByClassName(x1),
_1136: x0 => x0.click(),
_1137: (x0,x1) => x0.hasAttribute(x1),
_1140: (x0,x1) => x0.attachShadow(x1),
_1143: (x0,x1) => x0.getPropertyValue(x1),
_1145: (x0,x1,x2,x3) => x0.setProperty(x1,x2,x3),
_1147: (x0,x1) => x0.removeProperty(x1),
_1149: x0 => x0.offsetLeft,
_1150: x0 => x0.offsetTop,
_1151: x0 => x0.offsetParent,
_1153: (x0,x1) => x0.name = x1,
_1154: x0 => x0.content,
_1155: (x0,x1) => x0.content = x1,
_1168: (x0,x1) => x0.nonce = x1,
_1173: x0 => x0.now(),
_1175: (x0,x1) => x0.width = x1,
_1177: (x0,x1) => x0.height = x1,
_1181: (x0,x1) => x0.getContext(x1),
_1259: x0 => x0.status,
_1261: x0 => x0.body,
_1262: x0 => x0.arrayBuffer(),
_1267: x0 => x0.read(),
_1268: x0 => x0.value,
_1269: x0 => x0.done,
_1271: x0 => x0.name,
_1272: x0 => x0.x,
_1273: x0 => x0.y,
_1276: x0 => x0.top,
_1277: x0 => x0.right,
_1278: x0 => x0.bottom,
_1279: x0 => x0.left,
_1289: x0 => x0.height,
_1290: x0 => x0.width,
_1291: (x0,x1) => x0.value = x1,
_1294: (x0,x1) => x0.placeholder = x1,
_1295: (x0,x1) => x0.name = x1,
_1296: x0 => x0.selectionDirection,
_1297: x0 => x0.selectionStart,
_1298: x0 => x0.selectionEnd,
_1301: x0 => x0.value,
_1302: (x0,x1,x2) => x0.setSelectionRange(x1,x2),
_1306: x0 => x0.readText(),
_1307: (x0,x1) => x0.writeText(x1),
_1308: x0 => x0.altKey,
_1309: x0 => x0.code,
_1310: x0 => x0.ctrlKey,
_1311: x0 => x0.key,
_1312: x0 => x0.keyCode,
_1313: x0 => x0.location,
_1314: x0 => x0.metaKey,
_1315: x0 => x0.repeat,
_1316: x0 => x0.shiftKey,
_1317: x0 => x0.isComposing,
_1318: (x0,x1) => x0.getModifierState(x1),
_1319: x0 => x0.state,
_1321: (x0,x1) => x0.go(x1),
_1323: (x0,x1,x2,x3) => x0.pushState(x1,x2,x3),
_1324: (x0,x1,x2,x3) => x0.replaceState(x1,x2,x3),
_1325: x0 => x0.pathname,
_1326: x0 => x0.search,
_1327: x0 => x0.hash,
_1330: x0 => x0.state,
_1334: f => finalizeWrapper(f,(x0,x1) => dartInstance.exports._1334(f,x0,x1)),
_1337: (x0,x1,x2) => x0.observe(x1,x2),
_1340: x0 => x0.attributeName,
_1341: x0 => x0.type,
_1342: x0 => x0.matches,
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
_1392: (x0,x1,x2) => x0.setSelectionRange(x1,x2),
_1398: (x0,x1) => x0.add(x1),
_1402: (x0,x1) => x0.noValidate = x1,
_1403: (x0,x1) => x0.method = x1,
_1404: (x0,x1) => x0.action = x1,
_1433: x0 => x0.orientation,
_1434: x0 => x0.width,
_1435: x0 => x0.height,
_1436: (x0,x1) => x0.lock(x1),
_1452: f => finalizeWrapper(f,(x0,x1) => dartInstance.exports._1452(f,x0,x1)),
_1461: x0 => x0.length,
_1462: (x0,x1) => x0.item(x1),
_1463: x0 => x0.length,
_1464: (x0,x1) => x0.item(x1),
_1465: x0 => x0.iterator,
_1466: x0 => x0.Segmenter,
_1467: x0 => x0.v8BreakIterator,
_1471: x0 => x0.done,
_1472: x0 => x0.value,
_1473: x0 => x0.index,
_1477: (x0,x1) => x0.adoptText(x1),
_1478: x0 => x0.first(),
_1479: x0 => x0.next(),
_1480: x0 => x0.current(),
_1484: () => globalThis.window.FinalizationRegistry,
_1486: (x0,x1,x2,x3) => x0.register(x1,x2,x3),
_1487: (x0,x1) => x0.unregister(x1),
_1493: x0 => x0.hostElement,
_1494: x0 => x0.viewConstraints,
_1496: x0 => x0.maxHeight,
_1497: x0 => x0.maxWidth,
_1498: x0 => x0.minHeight,
_1499: x0 => x0.minWidth,
_1500: x0 => x0.loader,
_1501: () => globalThis._flutter,
_1502: (x0,x1) => x0.didCreateEngineInitializer(x1),
_1503: (x0,x1,x2) => x0.call(x1,x2),
_1504: () => globalThis.Promise,
_1505: f => finalizeWrapper(f,(x0,x1) => dartInstance.exports._1505(f,x0,x1)),
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
_1594: (x0,x1) => x0.matchMedia(x1),
_1605: x0 => new Array(x0),
_1639: (decoder, codeUnits) => decoder.decode(codeUnits),
_1640: () => new TextDecoder("utf-8", {fatal: true}),
_1641: () => new TextDecoder("utf-8", {fatal: false}),
_1642: v => stringToDartString(v.toString()),
_1643: (d, digits) => stringToDartString(d.toFixed(digits)),
_1647: o => new WeakRef(o),
_1648: r => r.deref(),
_1653: Date.now,
_1655: s => new Date(s * 1000).getTimezoneOffset() * 60 ,
_1656: s => {
      const jsSource = stringFromDartString(s);
      if (!/^\s*[+-]?(?:Infinity|NaN|(?:\.\d+|\d+(?:\.\d*)?)(?:[eE][+-]?\d+)?)\s*$/.test(jsSource)) {
        return NaN;
      }
      return parseFloat(jsSource);
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
_1666: s => stringToDartString(JSON.stringify(stringFromDartString(s))),
_1667: s => printToConsole(stringFromDartString(s)),
_1668: (o, t) => o instanceof t,
_1670: f => finalizeWrapper(f,x0 => dartInstance.exports._1670(f,x0)),
_1671: f => finalizeWrapper(f,x0 => dartInstance.exports._1671(f,x0)),
_1672: o => Object.keys(o),
_1681: (ms, c) =>
              setTimeout(() => dartInstance.exports.$invokeCallback(c),ms),
_1682: (handle) => clearTimeout(handle),
_1683: (ms, c) =>
          setInterval(() => dartInstance.exports.$invokeCallback(c), ms),
_1684: (handle) => clearInterval(handle),
_1685: (c) =>
              queueMicrotask(() => dartInstance.exports.$invokeCallback(c)),
_1686: () => Date.now(),
_1687: (a, i) => a.push(i),
_1691: a => a.pop(),
_1692: (a, i) => a.splice(i, 1),
_1694: (a, s) => a.join(s),
_1698: a => a.length,
_1700: (a, i) => a[i],
_1701: (a, i, v) => a[i] = v,
_1703: a => a.join(''),
_1706: (s, t) => s.split(t),
_1707: s => s.toLowerCase(),
_1708: s => s.toUpperCase(),
_1709: s => s.trim(),
_1710: s => s.trimLeft(),
_1711: s => s.trimRight(),
_1713: (s, p, i) => s.indexOf(p, i),
_1714: (s, p, i) => s.lastIndexOf(p, i),
_1716: (o, start, length) => new Uint8Array(o.buffer, o.byteOffset + start, length),
_1717: (o, start, length) => new Int8Array(o.buffer, o.byteOffset + start, length),
_1718: (o, start, length) => new Uint8ClampedArray(o.buffer, o.byteOffset + start, length),
_1719: (o, start, length) => new Uint16Array(o.buffer, o.byteOffset + start, length),
_1720: (o, start, length) => new Int16Array(o.buffer, o.byteOffset + start, length),
_1721: (o, start, length) => new Uint32Array(o.buffer, o.byteOffset + start, length),
_1722: (o, start, length) => new Int32Array(o.buffer, o.byteOffset + start, length),
_1724: (o, start, length) => new BigInt64Array(o.buffer, o.byteOffset + start, length),
_1725: (o, start, length) => new Float32Array(o.buffer, o.byteOffset + start, length),
_1726: (o, start, length) => new Float64Array(o.buffer, o.byteOffset + start, length),
_1727: Object.is,
_1728: WebAssembly.String.charCodeAt,
_1729: WebAssembly.String.concat,
_1730: WebAssembly.String.substring,
_1731: WebAssembly.String.length,
_1732: WebAssembly.String.equals,
_1733: WebAssembly.String.compare,
_1734: WebAssembly.String.fromCharCode,
_1735: (t, s) => t.set(s),
_1737: (o) => new DataView(o.buffer, o.byteOffset, o.byteLength),
_1739: o => o.buffer,
_1740: o => o.byteOffset,
_1741: Function.prototype.call.bind(Object.getOwnPropertyDescriptor(DataView.prototype, 'byteLength').get),
_1742: (b, o) => new DataView(b, o),
_1743: (b, o, l) => new DataView(b, o, l),
_1744: Function.prototype.call.bind(DataView.prototype.getUint8),
_1745: Function.prototype.call.bind(DataView.prototype.setUint8),
_1746: Function.prototype.call.bind(DataView.prototype.getInt8),
_1747: Function.prototype.call.bind(DataView.prototype.setInt8),
_1748: Function.prototype.call.bind(DataView.prototype.getUint16),
_1749: Function.prototype.call.bind(DataView.prototype.setUint16),
_1750: Function.prototype.call.bind(DataView.prototype.getInt16),
_1751: Function.prototype.call.bind(DataView.prototype.setInt16),
_1752: Function.prototype.call.bind(DataView.prototype.getUint32),
_1753: Function.prototype.call.bind(DataView.prototype.setUint32),
_1754: Function.prototype.call.bind(DataView.prototype.getInt32),
_1755: Function.prototype.call.bind(DataView.prototype.setInt32),
_1758: Function.prototype.call.bind(DataView.prototype.getBigInt64),
_1759: Function.prototype.call.bind(DataView.prototype.setBigInt64),
_1760: Function.prototype.call.bind(DataView.prototype.getFloat32),
_1761: Function.prototype.call.bind(DataView.prototype.setFloat32),
_1762: Function.prototype.call.bind(DataView.prototype.getFloat64),
_1763: Function.prototype.call.bind(DataView.prototype.setFloat64),
_1764: s => stringToDartString(stringFromDartString(s).toUpperCase()),
_1765: s => stringToDartString(stringFromDartString(s).toLowerCase()),
_1767: (s, m) => {
          try {
            return new RegExp(s, m);
          } catch (e) {
            return String(e);
          }
        },
_1768: (x0,x1) => x0.exec(x1),
_1769: (x0,x1) => x0.test(x1),
_1770: (x0,x1) => x0.exec(x1),
_1771: (x0,x1) => x0.exec(x1),
_1772: x0 => x0.pop(),
_1776: (x0,x1,x2) => x0[x1] = x2,
_1778: o => o === undefined,
_1779: o => typeof o === 'boolean',
_1780: o => typeof o === 'number',
_1782: o => typeof o === 'string',
_1785: o => o instanceof Int8Array,
_1786: o => o instanceof Uint8Array,
_1787: o => o instanceof Uint8ClampedArray,
_1788: o => o instanceof Int16Array,
_1789: o => o instanceof Uint16Array,
_1790: o => o instanceof Int32Array,
_1791: o => o instanceof Uint32Array,
_1792: o => o instanceof Float32Array,
_1793: o => o instanceof Float64Array,
_1794: o => o instanceof ArrayBuffer,
_1795: o => o instanceof DataView,
_1796: o => o instanceof Array,
_1797: o => typeof o === 'function' && o[jsWrappedDartFunctionSymbol] === true,
_1799: o => {
            const proto = Object.getPrototypeOf(o);
            return proto === Object.prototype || proto === null;
          },
_1800: o => o instanceof RegExp,
_1801: (l, r) => l === r,
_1802: o => o,
_1803: o => o,
_1804: o => o,
_1805: b => !!b,
_1806: o => o.length,
_1809: (o, i) => o[i],
_1810: f => f.dartFunction,
_1811: l => arrayFromDartList(Int8Array, l),
_1812: l => arrayFromDartList(Uint8Array, l),
_1813: l => arrayFromDartList(Uint8ClampedArray, l),
_1814: l => arrayFromDartList(Int16Array, l),
_1815: l => arrayFromDartList(Uint16Array, l),
_1816: l => arrayFromDartList(Int32Array, l),
_1817: l => arrayFromDartList(Uint32Array, l),
_1818: l => arrayFromDartList(Float32Array, l),
_1819: l => arrayFromDartList(Float64Array, l),
_1820: (data, length) => {
          const view = new DataView(new ArrayBuffer(length));
          for (let i = 0; i < length; i++) {
              view.setUint8(i, dartInstance.exports.$byteDataGetUint8(data, i));
          }
          return view;
        },
_1821: l => arrayFromDartList(Array, l),
_1822: stringFromDartString,
_1823: stringToDartString,
_1824: () => ({}),
_1825: () => [],
_1826: l => new Array(l),
_1827: () => globalThis,
_1828: (constructor, args) => {
      const factoryFunction = constructor.bind.apply(
          constructor, [null, ...args]);
      return new factoryFunction();
    },
_1829: (o, p) => p in o,
_1830: (o, p) => o[p],
_1831: (o, p, v) => o[p] = v,
_1832: (o, m, a) => o[m].apply(o, a),
_1834: o => String(o),
_1835: (p, s, f) => p.then(s, f),
_1836: s => {
      let jsString = stringFromDartString(s);
      if (/[[\]{}()*+?.\\^$|]/.test(jsString)) {
          jsString = jsString.replace(/[[\]{}()*+?.\\^$|]/g, '\\$&');
      }
      return stringToDartString(jsString);
    },
_1839: x0 => x0.index,
_1841: x0 => x0.length,
_1843: (x0,x1) => x0[x1],
_1847: x0 => x0.flags,
_1848: x0 => x0.multiline,
_1849: x0 => x0.ignoreCase,
_1850: x0 => x0.unicode,
_1851: x0 => x0.dotAll,
_1852: (x0,x1) => x0.lastIndex = x1,
_1858: () => globalThis.window,
_1879: x0 => x0.matches,
_1883: x0 => x0.platform,
_1888: x0 => x0.navigator
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

