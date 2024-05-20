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

    // Imports
    const dart2wasm = {

_1: (x0,x1,x2) => x0.set(x1,x2),
_2: (x0,x1,x2) => x0.set(x1,x2),
_6: f => finalizeWrapper(f,x0 => dartInstance.exports._6(f,x0)),
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
_164: x0 => x0.focus(),
_165: x0 => x0.select(),
_166: (x0,x1) => x0.append(x1),
_167: x0 => x0.remove(),
_170: x0 => x0.unlock(),
_175: x0 => x0.getReader(),
_185: x0 => new MutationObserver(x0),
_204: (x0,x1,x2) => x0.addEventListener(x1,x2),
_205: (x0,x1,x2) => x0.removeEventListener(x1,x2),
_208: x0 => new ResizeObserver(x0),
_211: (x0,x1) => new Intl.Segmenter(x0,x1),
_212: x0 => x0.next(),
_213: (x0,x1) => new Intl.v8BreakIterator(x0,x1),
_290: x0 => x0.close(),
_291: (x0,x1,x2,x3,x4) => ({type: x0,data: x1,premultiplyAlpha: x2,colorSpaceConversion: x3,preferAnimation: x4}),
_292: x0 => new window.ImageDecoder(x0),
_293: x0 => x0.close(),
_294: x0 => ({frameIndex: x0}),
_295: (x0,x1) => x0.decode(x1),
_298: f => finalizeWrapper(f,x0 => dartInstance.exports._298(f,x0)),
_299: f => finalizeWrapper(f,x0 => dartInstance.exports._299(f,x0)),
_300: (x0,x1) => ({addView: x0,removeView: x1}),
_301: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._301(f,arguments.length,x0) }),
_302: f => finalizeWrapper(f,() => dartInstance.exports._302(f)),
_303: (x0,x1) => ({initializeEngine: x0,autoStart: x1}),
_304: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._304(f,arguments.length,x0) }),
_305: x0 => ({runApp: x0}),
_306: x0 => new Uint8Array(x0),
_308: x0 => x0.preventDefault(),
_309: x0 => x0.stopPropagation(),
_310: (x0,x1) => x0.addListener(x1),
_311: (x0,x1) => x0.removeListener(x1),
_312: (x0,x1) => x0.prepend(x1),
_313: x0 => x0.remove(),
_314: x0 => x0.disconnect(),
_315: (x0,x1) => x0.addListener(x1),
_316: (x0,x1) => x0.removeListener(x1),
_319: (x0,x1) => x0.append(x1),
_320: x0 => x0.remove(),
_321: x0 => x0.stopPropagation(),
_325: x0 => x0.preventDefault(),
_326: (x0,x1) => x0.append(x1),
_327: x0 => x0.remove(),
_332: (x0,x1) => x0.appendChild(x1),
_333: (x0,x1,x2) => x0.insertBefore(x1,x2),
_334: (x0,x1) => x0.removeChild(x1),
_335: (x0,x1) => x0.appendChild(x1),
_336: (x0,x1) => x0.transferFromImageBitmap(x1),
_337: (x0,x1) => x0.append(x1),
_338: (x0,x1) => x0.append(x1),
_339: (x0,x1) => x0.append(x1),
_340: x0 => x0.remove(),
_341: x0 => x0.focus(),
_342: x0 => x0.focus(),
_343: x0 => x0.remove(),
_344: x0 => x0.focus(),
_345: x0 => x0.remove(),
_346: x0 => x0.focus(),
_347: (x0,x1) => x0.appendChild(x1),
_348: (x0,x1) => x0.appendChild(x1),
_349: x0 => x0.remove(),
_350: (x0,x1) => x0.append(x1),
_351: (x0,x1) => x0.append(x1),
_352: x0 => x0.remove(),
_353: (x0,x1) => x0.append(x1),
_354: (x0,x1) => x0.append(x1),
_355: (x0,x1,x2) => x0.insertBefore(x1,x2),
_356: (x0,x1) => x0.append(x1),
_357: (x0,x1,x2) => x0.insertBefore(x1,x2),
_358: x0 => x0.remove(),
_359: x0 => x0.remove(),
_360: (x0,x1) => x0.append(x1),
_361: x0 => x0.remove(),
_362: (x0,x1) => x0.append(x1),
_363: x0 => x0.remove(),
_364: x0 => x0.remove(),
_365: x0 => x0.getBoundingClientRect(),
_366: x0 => x0.remove(),
_367: x0 => x0.blur(),
_369: x0 => x0.focus(),
_370: x0 => x0.focus(),
_371: x0 => x0.remove(),
_372: x0 => x0.focus(),
_373: x0 => x0.focus(),
_374: x0 => x0.blur(),
_375: x0 => x0.remove(),
_388: (x0,x1) => x0.append(x1),
_389: x0 => x0.remove(),
_390: (x0,x1) => x0.append(x1),
_391: (x0,x1,x2) => x0.insertBefore(x1,x2),
_392: x0 => x0.focus(),
_393: x0 => x0.focus(),
_394: x0 => x0.focus(),
_395: x0 => x0.focus(),
_396: x0 => x0.focus(),
_397: x0 => x0.focus(),
_398: x0 => x0.blur(),
_399: x0 => x0.remove(),
_401: x0 => x0.preventDefault(),
_402: x0 => x0.focus(),
_403: x0 => x0.preventDefault(),
_404: x0 => x0.preventDefault(),
_405: x0 => x0.preventDefault(),
_406: x0 => x0.focus(),
_407: x0 => x0.focus(),
_408: x0 => x0.focus(),
_409: x0 => x0.focus(),
_410: x0 => x0.focus(),
_411: x0 => x0.focus(),
_412: (x0,x1) => x0.observe(x1),
_413: x0 => x0.disconnect(),
_414: (x0,x1) => x0.appendChild(x1),
_415: (x0,x1) => x0.appendChild(x1),
_416: (x0,x1) => x0.appendChild(x1),
_417: (x0,x1) => x0.append(x1),
_418: x0 => x0.remove(),
_419: (x0,x1) => x0.append(x1),
_421: (x0,x1) => x0.appendChild(x1),
_422: (x0,x1) => x0.append(x1),
_423: x0 => x0.remove(),
_424: (x0,x1) => x0.append(x1),
_428: (x0,x1) => x0.appendChild(x1),
_429: x0 => x0.remove(),
_987: () => globalThis.window.flutterConfiguration,
_988: x0 => x0.assetBase,
_993: x0 => x0.debugShowSemanticsNodes,
_994: x0 => x0.hostElement,
_995: x0 => x0.multiViewEnabled,
_996: x0 => x0.nonce,
_998: x0 => x0.fontFallbackBaseUrl,
_999: x0 => x0.useColorEmoji,
_1003: x0 => x0.console,
_1004: x0 => x0.devicePixelRatio,
_1005: x0 => x0.document,
_1006: x0 => x0.history,
_1007: x0 => x0.innerHeight,
_1008: x0 => x0.innerWidth,
_1009: x0 => x0.location,
_1010: x0 => x0.navigator,
_1011: x0 => x0.visualViewport,
_1012: x0 => x0.performance,
_1013: (x0,x1) => x0.fetch(x1),
_1016: (x0,x1) => x0.dispatchEvent(x1),
_1017: (x0,x1) => x0.matchMedia(x1),
_1018: (x0,x1) => x0.getComputedStyle(x1),
_1020: x0 => x0.screen,
_1021: (x0,x1) => x0.requestAnimationFrame(x1),
_1022: f => finalizeWrapper(f,x0 => dartInstance.exports._1022(f,x0)),
_1027: (x0,x1) => x0.warn(x1),
_1030: () => globalThis.window,
_1031: () => globalThis.Intl,
_1032: () => globalThis.Symbol,
_1035: x0 => x0.clipboard,
_1036: x0 => x0.maxTouchPoints,
_1037: x0 => x0.vendor,
_1038: x0 => x0.language,
_1039: x0 => x0.platform,
_1040: x0 => x0.userAgent,
_1041: x0 => x0.languages,
_1042: x0 => x0.documentElement,
_1043: (x0,x1) => x0.querySelector(x1),
_1046: (x0,x1) => x0.createElement(x1),
_1048: (x0,x1) => x0.execCommand(x1),
_1051: (x0,x1) => x0.createTextNode(x1),
_1052: (x0,x1) => x0.createEvent(x1),
_1056: x0 => x0.head,
_1057: x0 => x0.body,
_1058: (x0,x1) => x0.title = x1,
_1061: x0 => x0.activeElement,
_1063: x0 => x0.visibilityState,
_1064: () => globalThis.document,
_1065: (x0,x1,x2) => x0.addEventListener(x1,x2),
_1066: (x0,x1,x2,x3) => x0.addEventListener(x1,x2,x3),
_1067: (x0,x1,x2,x3) => x0.addEventListener(x1,x2,x3),
_1068: (x0,x1,x2) => x0.removeEventListener(x1,x2),
_1071: f => finalizeWrapper(f,x0 => dartInstance.exports._1071(f,x0)),
_1072: x0 => x0.target,
_1074: x0 => x0.timeStamp,
_1075: x0 => x0.type,
_1076: x0 => x0.preventDefault(),
_1080: (x0,x1,x2,x3) => x0.initEvent(x1,x2,x3),
_1085: x0 => x0.firstChild,
_1090: x0 => x0.parentElement,
_1092: x0 => x0.parentNode,
_1095: (x0,x1) => x0.removeChild(x1),
_1096: (x0,x1) => x0.removeChild(x1),
_1097: x0 => x0.isConnected,
_1098: (x0,x1) => x0.textContent = x1,
_1102: (x0,x1) => x0.contains(x1),
_1107: x0 => x0.firstElementChild,
_1109: x0 => x0.nextElementSibling,
_1110: x0 => x0.clientHeight,
_1111: x0 => x0.clientWidth,
_1112: x0 => x0.offsetHeight,
_1113: x0 => x0.offsetWidth,
_1114: x0 => x0.id,
_1115: (x0,x1) => x0.id = x1,
_1118: (x0,x1) => x0.spellcheck = x1,
_1119: x0 => x0.tagName,
_1120: x0 => x0.style,
_1121: (x0,x1) => x0.append(x1),
_1122: (x0,x1) => x0.getAttribute(x1),
_1123: x0 => x0.getBoundingClientRect(),
_1126: (x0,x1) => x0.closest(x1),
_1128: (x0,x1) => x0.querySelectorAll(x1),
_1129: x0 => x0.remove(),
_1130: (x0,x1,x2) => x0.setAttribute(x1,x2),
_1132: (x0,x1) => x0.removeAttribute(x1),
_1133: (x0,x1) => x0.tabIndex = x1,
_1137: x0 => x0.scrollTop,
_1138: (x0,x1) => x0.scrollTop = x1,
_1139: x0 => x0.scrollLeft,
_1140: (x0,x1) => x0.scrollLeft = x1,
_1141: x0 => x0.classList,
_1142: (x0,x1) => x0.className = x1,
_1146: (x0,x1) => x0.getElementsByClassName(x1),
_1147: x0 => x0.click(),
_1148: (x0,x1) => x0.hasAttribute(x1),
_1151: (x0,x1) => x0.attachShadow(x1),
_1154: (x0,x1) => x0.getPropertyValue(x1),
_1156: (x0,x1,x2,x3) => x0.setProperty(x1,x2,x3),
_1158: (x0,x1) => x0.removeProperty(x1),
_1160: x0 => x0.offsetLeft,
_1161: x0 => x0.offsetTop,
_1162: x0 => x0.offsetParent,
_1164: (x0,x1) => x0.name = x1,
_1165: x0 => x0.content,
_1166: (x0,x1) => x0.content = x1,
_1179: (x0,x1) => x0.nonce = x1,
_1184: x0 => x0.now(),
_1186: (x0,x1) => x0.width = x1,
_1188: (x0,x1) => x0.height = x1,
_1191: (x0,x1) => x0.getContext(x1),
_1266: x0 => x0.status,
_1268: x0 => x0.body,
_1270: x0 => x0.arrayBuffer(),
_1275: x0 => x0.read(),
_1276: x0 => x0.value,
_1277: x0 => x0.done,
_1279: x0 => x0.name,
_1280: x0 => x0.x,
_1281: x0 => x0.y,
_1284: x0 => x0.top,
_1285: x0 => x0.right,
_1286: x0 => x0.bottom,
_1287: x0 => x0.left,
_1296: x0 => x0.height,
_1297: x0 => x0.width,
_1298: (x0,x1) => x0.value = x1,
_1300: (x0,x1) => x0.placeholder = x1,
_1301: (x0,x1) => x0.name = x1,
_1302: x0 => x0.selectionDirection,
_1303: x0 => x0.selectionStart,
_1304: x0 => x0.selectionEnd,
_1307: x0 => x0.value,
_1309: (x0,x1,x2) => x0.setSelectionRange(x1,x2),
_1314: x0 => x0.readText(),
_1315: (x0,x1) => x0.writeText(x1),
_1316: x0 => x0.altKey,
_1317: x0 => x0.code,
_1318: x0 => x0.ctrlKey,
_1319: x0 => x0.key,
_1320: x0 => x0.keyCode,
_1321: x0 => x0.location,
_1322: x0 => x0.metaKey,
_1323: x0 => x0.repeat,
_1324: x0 => x0.shiftKey,
_1325: x0 => x0.isComposing,
_1326: (x0,x1) => x0.getModifierState(x1),
_1327: x0 => x0.state,
_1331: (x0,x1) => x0.go(x1),
_1332: (x0,x1,x2,x3) => x0.pushState(x1,x2,x3),
_1333: (x0,x1,x2,x3) => x0.replaceState(x1,x2,x3),
_1334: x0 => x0.pathname,
_1335: x0 => x0.search,
_1336: x0 => x0.hash,
_1339: x0 => x0.state,
_1344: f => finalizeWrapper(f,(x0,x1) => dartInstance.exports._1344(f,x0,x1)),
_1346: (x0,x1,x2) => x0.observe(x1,x2),
_1349: x0 => x0.attributeName,
_1350: x0 => x0.type,
_1351: x0 => x0.matches,
_1354: x0 => x0.matches,
_1355: x0 => x0.relatedTarget,
_1356: x0 => x0.clientX,
_1357: x0 => x0.clientY,
_1358: x0 => x0.offsetX,
_1359: x0 => x0.offsetY,
_1362: x0 => x0.button,
_1363: x0 => x0.buttons,
_1364: x0 => x0.ctrlKey,
_1365: (x0,x1) => x0.getModifierState(x1),
_1366: x0 => x0.pointerId,
_1367: x0 => x0.pointerType,
_1368: x0 => x0.pressure,
_1369: x0 => x0.tiltX,
_1370: x0 => x0.tiltY,
_1371: x0 => x0.getCoalescedEvents(),
_1372: x0 => x0.deltaX,
_1373: x0 => x0.deltaY,
_1374: x0 => x0.wheelDeltaX,
_1375: x0 => x0.wheelDeltaY,
_1376: x0 => x0.deltaMode,
_1381: x0 => x0.changedTouches,
_1383: x0 => x0.clientX,
_1384: x0 => x0.clientY,
_1385: x0 => x0.data,
_1386: (x0,x1) => x0.type = x1,
_1387: (x0,x1) => x0.max = x1,
_1388: (x0,x1) => x0.min = x1,
_1389: (x0,x1) => x0.value = x1,
_1390: x0 => x0.value,
_1391: x0 => x0.disabled,
_1392: (x0,x1) => x0.disabled = x1,
_1393: (x0,x1) => x0.placeholder = x1,
_1394: (x0,x1) => x0.name = x1,
_1395: (x0,x1) => x0.autocomplete = x1,
_1396: x0 => x0.selectionDirection,
_1397: x0 => x0.selectionStart,
_1398: x0 => x0.selectionEnd,
_1401: (x0,x1,x2) => x0.setSelectionRange(x1,x2),
_1407: (x0,x1) => x0.add(x1),
_1411: (x0,x1) => x0.noValidate = x1,
_1412: (x0,x1) => x0.method = x1,
_1413: (x0,x1) => x0.action = x1,
_1440: x0 => x0.orientation,
_1441: x0 => x0.width,
_1442: x0 => x0.height,
_1443: (x0,x1) => x0.lock(x1),
_1460: f => finalizeWrapper(f,(x0,x1) => dartInstance.exports._1460(f,x0,x1)),
_1470: x0 => x0.length,
_1472: (x0,x1) => x0.item(x1),
_1473: x0 => x0.length,
_1474: (x0,x1) => x0.item(x1),
_1475: x0 => x0.iterator,
_1476: x0 => x0.Segmenter,
_1477: x0 => x0.v8BreakIterator,
_1480: x0 => x0.done,
_1481: x0 => x0.value,
_1482: x0 => x0.index,
_1486: (x0,x1) => x0.adoptText(x1),
_1487: x0 => x0.first(),
_1489: x0 => x0.next(),
_1490: x0 => x0.current(),
_1502: x0 => x0.hostElement,
_1503: x0 => x0.viewConstraints,
_1505: x0 => x0.maxHeight,
_1506: x0 => x0.maxWidth,
_1507: x0 => x0.minHeight,
_1508: x0 => x0.minWidth,
_1509: x0 => x0.loader,
_1510: () => globalThis._flutter,
_1511: (x0,x1) => x0.didCreateEngineInitializer(x1),
_1512: (x0,x1,x2) => x0.call(x1,x2),
_1513: () => globalThis.Promise,
_1514: f => finalizeWrapper(f,(x0,x1) => dartInstance.exports._1514(f,x0,x1)),
_1519: x0 => x0.length,
_1522: x0 => x0.tracks,
_1526: x0 => x0.image,
_1531: x0 => x0.codedWidth,
_1532: x0 => x0.codedHeight,
_1535: x0 => x0.duration,
_1538: x0 => x0.ready,
_1539: x0 => x0.selectedTrack,
_1540: x0 => x0.repetitionCount,
_1541: x0 => x0.frameCount,
_1612: x0 => new Array(x0),
_1646: (decoder, codeUnits) => decoder.decode(codeUnits),
_1647: () => new TextDecoder("utf-8", {fatal: true}),
_1648: () => new TextDecoder("utf-8", {fatal: false}),
_1649: v => stringToDartString(v.toString()),
_1650: (d, digits) => stringToDartString(d.toFixed(digits)),
_1654: x0 => new WeakRef(x0),
_1655: x0 => x0.deref(),
_1661: Date.now,
_1663: s => new Date(s * 1000).getTimezoneOffset() * 60 ,
_1664: s => {
      const jsSource = stringFromDartString(s);
      if (!/^\s*[+-]?(?:Infinity|NaN|(?:\.\d+|\d+(?:\.\d*)?)(?:[eE][+-]?\d+)?)\s*$/.test(jsSource)) {
        return NaN;
      }
      return parseFloat(jsSource);
    },
_1665: () => {
          let stackString = new Error().stack.toString();
          let frames = stackString.split('\n');
          let drop = 2;
          if (frames[0] === 'Error') {
              drop += 1;
          }
          return frames.slice(drop).join('\n');
        },
_1666: () => typeof dartUseDateNowForTicks !== "undefined",
_1667: () => 1000 * performance.now(),
_1668: () => Date.now(),
_1671: () => new WeakMap(),
_1672: (map, o) => map.get(o),
_1673: (map, o, v) => map.set(o, v),
_1674: () => globalThis.WeakRef,
_1684: s => stringToDartString(JSON.stringify(stringFromDartString(s))),
_1685: s => printToConsole(stringFromDartString(s)),
_1694: (o, t) => o instanceof t,
_1696: f => finalizeWrapper(f,x0 => dartInstance.exports._1696(f,x0)),
_1697: f => finalizeWrapper(f,x0 => dartInstance.exports._1697(f,x0)),
_1698: o => Object.keys(o),
_1699: (ms, c) =>
              setTimeout(() => dartInstance.exports.$invokeCallback(c),ms),
_1700: (handle) => clearTimeout(handle),
_1701: (ms, c) =>
          setInterval(() => dartInstance.exports.$invokeCallback(c), ms),
_1702: (handle) => clearInterval(handle),
_1703: (c) =>
              queueMicrotask(() => dartInstance.exports.$invokeCallback(c)),
_1704: () => Date.now(),
_1705: (a, i) => a.push(i),
_1709: a => a.pop(),
_1710: (a, i) => a.splice(i, 1),
_1712: (a, s) => a.join(s),
_1716: a => a.length,
_1718: (a, i) => a[i],
_1719: (a, i, v) => a[i] = v,
_1721: a => a.join(''),
_1724: (s, t) => s.split(t),
_1725: s => s.toLowerCase(),
_1726: s => s.toUpperCase(),
_1727: s => s.trim(),
_1728: s => s.trimLeft(),
_1729: s => s.trimRight(),
_1731: (s, p, i) => s.indexOf(p, i),
_1732: (s, p, i) => s.lastIndexOf(p, i),
_1734: (o, start, length) => new Uint8Array(o.buffer, o.byteOffset + start, length),
_1735: (o, start, length) => new Int8Array(o.buffer, o.byteOffset + start, length),
_1736: (o, start, length) => new Uint8ClampedArray(o.buffer, o.byteOffset + start, length),
_1737: (o, start, length) => new Uint16Array(o.buffer, o.byteOffset + start, length),
_1738: (o, start, length) => new Int16Array(o.buffer, o.byteOffset + start, length),
_1739: (o, start, length) => new Uint32Array(o.buffer, o.byteOffset + start, length),
_1740: (o, start, length) => new Int32Array(o.buffer, o.byteOffset + start, length),
_1742: (o, start, length) => new BigInt64Array(o.buffer, o.byteOffset + start, length),
_1743: (o, start, length) => new Float32Array(o.buffer, o.byteOffset + start, length),
_1744: (o, start, length) => new Float64Array(o.buffer, o.byteOffset + start, length),
_1746: Object.is,
_1747: (t, s) => t.set(s),
_1749: (o) => new DataView(o.buffer, o.byteOffset, o.byteLength),
_1751: o => o.buffer,
_1752: o => o.byteOffset,
_1753: Function.prototype.call.bind(Object.getOwnPropertyDescriptor(DataView.prototype, 'byteLength').get),
_1754: (b, o) => new DataView(b, o),
_1755: (b, o, l) => new DataView(b, o, l),
_1756: Function.prototype.call.bind(DataView.prototype.getUint8),
_1757: Function.prototype.call.bind(DataView.prototype.setUint8),
_1758: Function.prototype.call.bind(DataView.prototype.getInt8),
_1759: Function.prototype.call.bind(DataView.prototype.setInt8),
_1760: Function.prototype.call.bind(DataView.prototype.getUint16),
_1761: Function.prototype.call.bind(DataView.prototype.setUint16),
_1762: Function.prototype.call.bind(DataView.prototype.getInt16),
_1763: Function.prototype.call.bind(DataView.prototype.setInt16),
_1764: Function.prototype.call.bind(DataView.prototype.getUint32),
_1765: Function.prototype.call.bind(DataView.prototype.setUint32),
_1766: Function.prototype.call.bind(DataView.prototype.getInt32),
_1767: Function.prototype.call.bind(DataView.prototype.setInt32),
_1770: Function.prototype.call.bind(DataView.prototype.getBigInt64),
_1771: Function.prototype.call.bind(DataView.prototype.setBigInt64),
_1772: Function.prototype.call.bind(DataView.prototype.getFloat32),
_1773: Function.prototype.call.bind(DataView.prototype.setFloat32),
_1774: Function.prototype.call.bind(DataView.prototype.getFloat64),
_1775: Function.prototype.call.bind(DataView.prototype.setFloat64),
_1781: s => stringToDartString(stringFromDartString(s).toUpperCase()),
_1782: s => stringToDartString(stringFromDartString(s).toLowerCase()),
_1784: (s, m) => {
          try {
            return new RegExp(s, m);
          } catch (e) {
            return String(e);
          }
        },
_1785: (x0,x1) => x0.exec(x1),
_1786: (x0,x1) => x0.test(x1),
_1787: (x0,x1) => x0.exec(x1),
_1788: (x0,x1) => x0.exec(x1),
_1789: x0 => x0.pop(),
_1793: (x0,x1,x2) => x0[x1] = x2,
_1795: o => o === undefined,
_1796: o => typeof o === 'boolean',
_1797: o => typeof o === 'number',
_1799: o => typeof o === 'string',
_1802: o => o instanceof Int8Array,
_1803: o => o instanceof Uint8Array,
_1804: o => o instanceof Uint8ClampedArray,
_1805: o => o instanceof Int16Array,
_1806: o => o instanceof Uint16Array,
_1807: o => o instanceof Int32Array,
_1808: o => o instanceof Uint32Array,
_1809: o => o instanceof Float32Array,
_1810: o => o instanceof Float64Array,
_1811: o => o instanceof ArrayBuffer,
_1812: o => o instanceof DataView,
_1813: o => o instanceof Array,
_1814: o => typeof o === 'function' && o[jsWrappedDartFunctionSymbol] === true,
_1816: o => {
            const proto = Object.getPrototypeOf(o);
            return proto === Object.prototype || proto === null;
          },
_1817: o => o instanceof RegExp,
_1818: (l, r) => l === r,
_1819: o => o,
_1820: o => o,
_1821: o => o,
_1822: b => !!b,
_1823: o => o.length,
_1826: (o, i) => o[i],
_1827: f => f.dartFunction,
_1828: l => arrayFromDartList(Int8Array, l),
_1829: l => arrayFromDartList(Uint8Array, l),
_1830: l => arrayFromDartList(Uint8ClampedArray, l),
_1831: l => arrayFromDartList(Int16Array, l),
_1832: l => arrayFromDartList(Uint16Array, l),
_1833: l => arrayFromDartList(Int32Array, l),
_1834: l => arrayFromDartList(Uint32Array, l),
_1835: l => arrayFromDartList(Float32Array, l),
_1836: l => arrayFromDartList(Float64Array, l),
_1837: (data, length) => {
          const view = new DataView(new ArrayBuffer(length));
          for (let i = 0; i < length; i++) {
              view.setUint8(i, dartInstance.exports.$byteDataGetUint8(data, i));
          }
          return view;
        },
_1838: l => arrayFromDartList(Array, l),
_1839: stringFromDartString,
_1840: stringToDartString,
_1841: () => ({}),
_1842: () => [],
_1843: l => new Array(l),
_1844: () => globalThis,
_1845: (constructor, args) => {
      const factoryFunction = constructor.bind.apply(
          constructor, [null, ...args]);
      return new factoryFunction();
    },
_1846: (o, p) => p in o,
_1847: (o, p) => o[p],
_1848: (o, p, v) => o[p] = v,
_1849: (o, m, a) => o[m].apply(o, a),
_1851: o => String(o),
_1852: (p, s, f) => p.then(s, f),
_1853: s => {
      let jsString = stringFromDartString(s);
      if (/[[\]{}()*+?.\\^$|]/.test(jsString)) {
          jsString = jsString.replace(/[[\]{}()*+?.\\^$|]/g, '\\$&');
      }
      return stringToDartString(jsString);
    },
_1856: x0 => x0.index,
_1858: x0 => x0.length,
_1860: (x0,x1) => x0[x1],
_1864: x0 => x0.flags,
_1865: x0 => x0.multiline,
_1866: x0 => x0.ignoreCase,
_1867: x0 => x0.unicode,
_1868: x0 => x0.dotAll,
_1869: (x0,x1) => x0.lastIndex = x1
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
    const dartMain = moduleInstance.exports.$getMain();
    const dartArgs = buildArgsList(args);
    moduleInstance.exports.$invokeMain(dartMain, dartArgs);
}

