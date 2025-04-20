'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"canvaskit/skwasm.js": "ea559890a088fe28b4ddf70e17e60052",
"canvaskit/skwasm.wasm": "cf328d948b2ad37c2b72299e2aae01dc",
"canvaskit/skwasm.js.symbols": "a99d765be71c7837cf40573fa898d64a",
"canvaskit/canvaskit.wasm": "1a241d35d0fabb57a4efa3d9bd0a3a9e",
"canvaskit/canvaskit.js": "ec7670f92479836f1ca9b8c542a50a4c",
"canvaskit/canvaskit.js.symbols": "3b001d9aae92e10e8fd0eac8d591d13b",
"canvaskit/chromium/canvaskit.wasm": "0c811952974becbe957a6e905cc7fe1a",
"canvaskit/chromium/canvaskit.js": "8d54bc7a7006f7b24c2ef2543881397a",
"canvaskit/chromium/canvaskit.js.symbols": "d7bb052fd7930f6d4be5e976f3dfa60b",
"splash/img/light-1x.gif": "3696f072f44c30597efcd23e47f531ad",
"splash/img/dark-1x.gif": "3696f072f44c30597efcd23e47f531ad",
"splash/img/light-4x.gif": "55b5eed2671548dc3d0ea7da9dd90136",
"splash/img/dark-2x.gif": "ef30407880c7a91aaa9fb3809ea77c1e",
"splash/img/dark-4x.gif": "55b5eed2671548dc3d0ea7da9dd90136",
"splash/img/dark-3x.gif": "dada097e26e335f63049267423a3a050",
"splash/img/light-3x.gif": "dada097e26e335f63049267423a3a050",
"splash/img/light-2x.gif": "ef30407880c7a91aaa9fb3809ea77c1e",
"main.dart.mjs": "1b545ea7c0caac51e612cebba41207a7",
"index.html": "508a292b677bbe11d9165b2e6016dd23",
"/": "508a292b677bbe11d9165b2e6016dd23",
"assets/NOTICES": "786b1caf8a3df533fcfbf8839ff46e66",
"assets/assets/images/background.webp": "da5b92379854a3c0d7bdcc59409f5f3a",
"assets/assets/images/ATTRIBUTION.md": "67a45bf24b37ddca7e6fdbd98d0af71d",
"assets/assets/fonts/OpenMoji/OpenMoji-color-colr1_svg.ttf": "03542b080f1056f9b24643e1f57d13ad",
"assets/assets/fonts/OpenMoji/OpenMoji-color-glyf_colr_0.ttf": "e913629f5ab2ab95c71ba49db4fe9b74",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "f30c1698f0817c3d3e20eddf7fceb92f",
"assets/fonts/MaterialIcons-Regular.otf": "1f4fc9d6485c76598d9f61dba9aa6964",
"assets/FontManifest.json": "e6cf89247272683b06325736e4502d1d",
"assets/AssetManifest.bin.json": "c57bf6be31be88d7dc4e36a0c0b64b55",
"assets/web/icons/Icon-192.png": "5e5c6f2d664857527da6ab23aff54f09",
"assets/packages/golden_toolkit/fonts/Roboto-Regular.ttf": "ac3f799d5bbaf5196fab15ab8de8431c",
"assets/AssetManifest.json": "b4b453dc1d6d6aa64f66c04736bea207",
"version.json": "129f1aead653591fc43c10b347d348a6",
"flutter.js": "83d881c1dbb6d6bcd6b42e274605b69c",
"main.dart.js": "830cc980901da8c4d34a01b949ec45ee",
"icons/Icon-maskable-512.png": "e4af7613790eb4d646757ba0bec29407",
"icons/Icon-192.png": "5e5c6f2d664857527da6ab23aff54f09",
"icons/loader.gif": "9ab36d160d601853a6542af1e9551ac3",
"icons/Icon-512.png": "e4af7613790eb4d646757ba0bec29407",
"icons/Icon-maskable-192.png": "5e5c6f2d664857527da6ab23aff54f09",
"manifest.json": "24b2e0a9a72d35861fd6f5b5a7553094",
"favicon.png": "7cc2fdb38604950a8535a0b7bbb6cba0",
"main.dart.wasm": "0ce99ff49a3591a4e7115f8fa2b9c5a5",
"flutter_bootstrap.js": "3ea1d95bf3872c297f5d8bcab8ce4a86"};
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
