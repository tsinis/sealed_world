'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"main.dart.wasm": "76dbf2c96639ae5a78a126c8eba37d77",
"icons/Icon-maskable-512.png": "548f175a02af6192d06e779311f69edc",
"icons/Icon-maskable-192.png": "24a0c8216a36f61a22ff4217337aa70d",
"icons/Icon-512.png": "548f175a02af6192d06e779311f69edc",
"icons/Icon-192.png": "24a0c8216a36f61a22ff4217337aa70d",
"icons/loader.gif": "9ab36d160d601853a6542af1e9551ac3",
"manifest.json": "24b2e0a9a72d35861fd6f5b5a7553094",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/canvaskit.js.symbols": "86adaf0ee76b38c64c2f32d39b5d00b9",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/chromium/canvaskit.js.symbols": "6b739af532e7c5145fe2071e49b3fc7c",
"canvaskit/chromium/canvaskit.wasm": "90cceb31465ef80f9eeffcbaadca52e0",
"canvaskit/canvaskit.wasm": "057d6a0d8cb24ecce6981abf2b49dac6",
"canvaskit/skwasm.wasm": "5775b8dbdc60bf3485b8a80cdb2d7fe9",
"canvaskit/skwasm.js.symbols": "27515cd3bb94774fb91f2704a09ac97c",
"canvaskit/skwasm.js": "694fda5704053957c2594de355805228",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"flutter.js": "f393d3c16b631f36852323de8e583132",
"flutter_bootstrap.js": "48e25a1be226ca463a9f6478d37c7d75",
"version.json": "706e6b207dcb10738a49becae32a1cd6",
"favicon.png": "669cca707ffec3e26252b0197e2b847c",
"assets/packages/world_countries/assets/fonts/NotoEmoji/noto_flags-picosvgz.ttf": "49e390de79186fe9757cac051ce7cbbe",
"assets/packages/world_countries/assets/fonts/NotoEmoji/NotoColorEmoji.ttf": "37dde61042462d84903185e64cbff0fc",
"assets/packages/world_countries/assets/fonts/OpenMoji/OpenMoji-color-colr1_svg.ttf": "03542b080f1056f9b24643e1f57d13ad",
"assets/packages/world_countries/assets/fonts/OpenMoji/OpenMoji-color-glyf_colr_0.ttf": "e913629f5ab2ab95c71ba49db4fe9b74",
"assets/packages/world_countries/assets/fonts/Twemoji/Twemoji.Mozilla.ttf": "e0fedf2da5be577870b80c4ea0ad6800",
"assets/packages/world_countries/assets/fonts/Twemoji/Twemoji.Mozilla.woff2": "afcbe87e2d91707c7a5ba6d88f7e8d1e",
"assets/NOTICES": "b63269519db70e114c420bc39b3a28d5",
"assets/AssetManifest.bin": "ffe5b217fd278a9217dc80117408a6b9",
"assets/FontManifest.json": "f648cc6de440ca7cb4295c180eea8fab",
"assets/AssetManifest.bin.json": "c9255845536c5a2ce4818c7468cea220",
"assets/assets/fonts/EmojiOne/EmojiOneMozilla.ttf": "b0a43a838944f6a95ed1682328134667",
"assets/assets/fonts/EmojiOne/emojione-android.ttf": "53206ce915546f7d0dc453707fca221c",
"assets/assets/fonts/EmojiOne/EmojiOneColor.otf": "6013b0ee3f8f9c0a77f77b2a775d058c",
"assets/assets/images/background.webp": "da5b92379854a3c0d7bdcc59409f5f3a",
"assets/assets/images/ATTRIBUTION.md": "67a45bf24b37ddca7e6fdbd98d0af71d",
"assets/fonts/MaterialIcons-Regular.otf": "33dd4ca10a746109f682b7dce3de6c88",
"assets/AssetManifest.json": "f5ea86b853979a3446ff19044a5cc688",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"index.html": "43b781f05530bd64db8d8607bc431e67",
"/": "43b781f05530bd64db8d8607bc431e67",
"main.dart.mjs": "bd6c335321cd2f1ccab4079516613fca",
"main.dart.js": "31a06d0345ae71f1c74a5c618ed2d5c1"};
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
