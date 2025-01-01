'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"icons/loader.gif": "9ab36d160d601853a6542af1e9551ac3",
"icons/Icon-maskable-192.png": "24a0c8216a36f61a22ff4217337aa70d",
"icons/Icon-maskable-512.png": "548f175a02af6192d06e779311f69edc",
"icons/Icon-512.png": "548f175a02af6192d06e779311f69edc",
"icons/Icon-192.png": "24a0c8216a36f61a22ff4217337aa70d",
"assets/assets/images/background.webp": "da5b92379854a3c0d7bdcc59409f5f3a",
"assets/assets/images/ATTRIBUTION.md": "67a45bf24b37ddca7e6fdbd98d0af71d",
"assets/assets/fonts/OpenMoji/OpenMoji-color-glyf_colr_0.ttf": "e913629f5ab2ab95c71ba49db4fe9b74",
"assets/assets/fonts/OpenMoji/OpenMoji-color-colr1_svg.ttf": "03542b080f1056f9b24643e1f57d13ad",
"assets/AssetManifest.bin": "d6bac48df266e20684d5433a6c0065e2",
"assets/NOTICES": "002fe063f9b847206183a54aadef8790",
"assets/web/icons/Icon-192.png": "24a0c8216a36f61a22ff4217337aa70d",
"assets/AssetManifest.json": "72c4058714f239eca97ab7d495144454",
"assets/fonts/MaterialIcons-Regular.otf": "1f4fc9d6485c76598d9f61dba9aa6964",
"assets/FontManifest.json": "0930732780a3eceff9905a51e62d682f",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin.json": "10bc6eed7e40706e56fae2f6ffa7974d",
"version.json": "d021e22ad25a2bbecaf87158c30562b2",
"manifest.json": "24b2e0a9a72d35861fd6f5b5a7553094",
"canvaskit/chromium/canvaskit.js.symbols": "a1fea26b10a418991dc0fdd670d0a105",
"canvaskit/chromium/canvaskit.wasm": "4bed638ac5457a6ee18834aeaab3deb0",
"canvaskit/chromium/canvaskit.js": "417c635e514296a337033bbd95ba8332",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm_st.wasm": "809674c831d83f7f9c71d9dd93771403",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm.js.symbols": "bd0e768fef31e76b4c56f7caa4efdd90",
"canvaskit/canvaskit.js.symbols": "7e9893036c3fa7843429f59531f3b942",
"canvaskit/skwasm.wasm": "f65759a23ad54e185d6a3f17817b16ca",
"canvaskit/canvaskit.wasm": "5ddabdaf5ff10d64d4f06fbd522f4ff1",
"canvaskit/skwasm_st.js.symbols": "327a3060925e525407f4f2747a4712d6",
"canvaskit/canvaskit.js": "d9252a0c6a6498261f19267314e95a47",
"index.html": "6b6f1a8be485d1db922db262381e0af0",
"/": "6b6f1a8be485d1db922db262381e0af0",
"main.dart.wasm": "3e1fedd1b38d35da3140947877aa40a1",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"favicon.png": "669cca707ffec3e26252b0197e2b847c",
"main.dart.mjs": "9610e1d34399d13e993bda1ad647e365",
"flutter_bootstrap.js": "7e084429d99db03e4767a1d2efb789ee",
"main.dart.js": "6235aa94af94f1481ba42619bab851a9"};
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
