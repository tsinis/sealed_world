'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"main.dart.wasm": "fa6e731bb04e374608e8de9a5bf0a84b",
"icons/loader.gif": "9ab36d160d601853a6542af1e9551ac3",
"icons/Icon-maskable-192.png": "5e5c6f2d664857527da6ab23aff54f09",
"icons/Icon-192.png": "5e5c6f2d664857527da6ab23aff54f09",
"icons/Icon-maskable-512.png": "e4af7613790eb4d646757ba0bec29407",
"icons/Icon-512.png": "e4af7613790eb4d646757ba0bec29407",
"assets/web/icons/Icon-192.png": "5e5c6f2d664857527da6ab23aff54f09",
"assets/fonts/MaterialIcons-Regular.otf": "1f4fc9d6485c76598d9f61dba9aa6964",
"assets/AssetManifest.bin.json": "c57bf6be31be88d7dc4e36a0c0b64b55",
"assets/AssetManifest.bin": "f30c1698f0817c3d3e20eddf7fceb92f",
"assets/AssetManifest.json": "b4b453dc1d6d6aa64f66c04736bea207",
"assets/assets/fonts/OpenMoji/OpenMoji-color-glyf_colr_0.ttf": "e913629f5ab2ab95c71ba49db4fe9b74",
"assets/assets/fonts/OpenMoji/OpenMoji-color-colr1_svg.ttf": "03542b080f1056f9b24643e1f57d13ad",
"assets/assets/images/background.webp": "da5b92379854a3c0d7bdcc59409f5f3a",
"assets/assets/images/ATTRIBUTION.md": "67a45bf24b37ddca7e6fdbd98d0af71d",
"assets/packages/golden_toolkit/fonts/Roboto-Regular.ttf": "ac3f799d5bbaf5196fab15ab8de8431c",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/FontManifest.json": "e6cf89247272683b06325736e4502d1d",
"assets/NOTICES": "c505294b5ed164120f262db9a427f243",
"main.dart.js": "7077a6d5d5eb7ac4d6b8a41dc1855180",
"manifest.json": "24b2e0a9a72d35861fd6f5b5a7553094",
"version.json": "4046b52f03232ed824414c326817b3ad",
"canvaskit/skwasm.js.symbols": "ef9a23ed8fe5eef11c20046dfd016a82",
"canvaskit/canvaskit.js": "140ccb7d34d0a55065fbd422b843add6",
"canvaskit/skwasm_heavy.js.symbols": "6ae4efe855f2e013a9a2cff593e308b5",
"canvaskit/skwasm.wasm": "f4917aac0185407fce847d8b6f1e50e9",
"canvaskit/canvaskit.wasm": "dfd8c2ccd4a55ef5eb15ea5526ce88c7",
"canvaskit/canvaskit.js.symbols": "05e7032ed1a877f972cbcf13b3ae2a83",
"canvaskit/skwasm_heavy.wasm": "f71a9ad26b85589ff851c2642ff43889",
"canvaskit/skwasm.js": "37fdb662bbaa915adeee8461576d69d7",
"canvaskit/chromium/canvaskit.js": "5e27aae346eee469027c80af0751d53d",
"canvaskit/chromium/canvaskit.wasm": "79edcb1b72306f512e90f3e5e4063b40",
"canvaskit/chromium/canvaskit.js.symbols": "8fce22f4d72ad11f225a4999cd247660",
"canvaskit/skwasm_heavy.js": "f5c1413d222bc68856296fc97ac9fec0",
"flutter_bootstrap.js": "6478cbe88ed25b67b67b297594f7446c",
"splash/img/light-2x.gif": "ef30407880c7a91aaa9fb3809ea77c1e",
"splash/img/dark-2x.gif": "ef30407880c7a91aaa9fb3809ea77c1e",
"splash/img/dark-1x.gif": "3696f072f44c30597efcd23e47f531ad",
"splash/img/dark-4x.gif": "55b5eed2671548dc3d0ea7da9dd90136",
"splash/img/light-3x.gif": "dada097e26e335f63049267423a3a050",
"splash/img/light-1x.gif": "3696f072f44c30597efcd23e47f531ad",
"splash/img/dark-3x.gif": "dada097e26e335f63049267423a3a050",
"splash/img/light-4x.gif": "55b5eed2671548dc3d0ea7da9dd90136",
"main.dart.mjs": "647e5a7585520772f6419ab8a483c36d",
"favicon.png": "7cc2fdb38604950a8535a0b7bbb6cba0",
"index.html": "508a292b677bbe11d9165b2e6016dd23",
"/": "508a292b677bbe11d9165b2e6016dd23",
"flutter.js": "2a09505589bbbd07ac54b434883c2f03"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"main.dart.wasm",
"main.dart.mjs",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
