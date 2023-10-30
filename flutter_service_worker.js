'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"main.dart.js": "b1077ac802b7f547c647fb8c31ede050",
"assets/AssetManifest.json": "f5ea86b853979a3446ff19044a5cc688",
"assets/assets/fonts/EmojiOne/EmojiOneMozilla.ttf": "b0a43a838944f6a95ed1682328134667",
"assets/assets/fonts/EmojiOne/EmojiOneColor.otf": "6013b0ee3f8f9c0a77f77b2a775d058c",
"assets/assets/fonts/EmojiOne/emojione-android.ttf": "53206ce915546f7d0dc453707fca221c",
"assets/assets/images/ATTRIBUTION.md": "67a45bf24b37ddca7e6fdbd98d0af71d",
"assets/assets/images/background.webp": "da5b92379854a3c0d7bdcc59409f5f3a",
"assets/AssetManifest.bin": "ffe5b217fd278a9217dc80117408a6b9",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/AssetManifest.bin.json": "c9255845536c5a2ce4818c7468cea220",
"assets/packages/world_countries/assets/fonts/NotoEmoji/noto_flags-picosvgz.ttf": "49e390de79186fe9757cac051ce7cbbe",
"assets/packages/world_countries/assets/fonts/NotoEmoji/NotoColorEmoji.ttf": "37dde61042462d84903185e64cbff0fc",
"assets/packages/world_countries/assets/fonts/Twemoji/Twemoji.Mozilla.woff2": "afcbe87e2d91707c7a5ba6d88f7e8d1e",
"assets/packages/world_countries/assets/fonts/Twemoji/Twemoji.Mozilla.ttf": "e0fedf2da5be577870b80c4ea0ad6800",
"assets/packages/world_countries/assets/fonts/OpenMoji/OpenMoji-color-colr1_svg.ttf": "03542b080f1056f9b24643e1f57d13ad",
"assets/packages/world_countries/assets/fonts/OpenMoji/OpenMoji-color-glyf_colr_0.ttf": "e913629f5ab2ab95c71ba49db4fe9b74",
"assets/FontManifest.json": "f648cc6de440ca7cb4295c180eea8fab",
"assets/NOTICES": "cbf956d30354cb209208f7ecbc87d23e",
"assets/shaders/ink_sparkle.frag": "4096b5150bac93c41cbc9b45276bd90f",
"manifest.json": "24b2e0a9a72d35861fd6f5b5a7553094",
"main.dart.wasm": "28b1f25565071e5cf67969218716185e",
"index.html": "74cd94623dd70e0ce9435fb982cfb9e9",
"/": "74cd94623dd70e0ce9435fb982cfb9e9",
"icons/Icon-maskable-512.png": "548f175a02af6192d06e779311f69edc",
"icons/Icon-512.png": "548f175a02af6192d06e779311f69edc",
"icons/Icon-192.png": "24a0c8216a36f61a22ff4217337aa70d",
"icons/loader.gif": "9ab36d160d601853a6542af1e9551ac3",
"icons/Icon-maskable-192.png": "24a0c8216a36f61a22ff4217337aa70d",
"favicon.png": "669cca707ffec3e26252b0197e2b847c",
"main.dart.mjs": "0cd57d5dbbcafa6cac5af076a7e91cdf",
"version.json": "d7ac9ec88c4f4127338a3f7b14f88f49",
"canvaskit/canvaskit.wasm": "8461fc6a596323f2502287e254d2d4b2",
"canvaskit/skwasm.js.symbols": "1688ef160c22443677bba8945cd683a2",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"canvaskit/canvaskit.js.symbols": "76f70f32f4c39e1941aa15cd1ea94d03",
"canvaskit/chromium/canvaskit.wasm": "3713632cdac9285b8a2ad894df7564d2",
"canvaskit/chromium/canvaskit.js.symbols": "dfe5b7d6912ec0b72d47ef6ce0228dc4",
"canvaskit/chromium/canvaskit.js": "ee5174694d4a451c41b16dc39ef73808",
"canvaskit/skwasm.wasm": "9e8c133145f469d72fe6d2f64f2144e9",
"canvaskit/canvaskit.js": "93a63b18433d5c16dd17b5d9ab497edb",
"canvaskit/skwasm.js": "87063acf45c5e1ab9565dcf06b0c18b8",
"flutter.js": "7d69e653079438abfbb24b82a655b0a4"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
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
