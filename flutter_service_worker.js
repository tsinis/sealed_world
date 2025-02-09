'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter.js": "76f08d47ff9f5715220992f993002504",
"main.dart.mjs": "de27825b7a09c9f0d460c23ba90ff807",
"icons/loader.gif": "9ab36d160d601853a6542af1e9551ac3",
"icons/Icon-maskable-192.png": "24a0c8216a36f61a22ff4217337aa70d",
"icons/Icon-512.png": "548f175a02af6192d06e779311f69edc",
"icons/Icon-192.png": "24a0c8216a36f61a22ff4217337aa70d",
"icons/Icon-maskable-512.png": "548f175a02af6192d06e779311f69edc",
"version.json": "a19429ce1c10e6d000e52af944b62117",
"flutter_bootstrap.js": "ab90b7c49cddc0934fdd3373a239b2b3",
"main.dart.wasm": "b8f7deb1d85177b464f742308d2692a4",
"manifest.json": "24b2e0a9a72d35861fd6f5b5a7553094",
"main.dart.js": "f5b779169309a4ca72fed2866a4f7e26",
"index.html": "a975ae998967fc89f8cfdd145eb71094",
"/": "a975ae998967fc89f8cfdd145eb71094",
"assets/AssetManifest.json": "b67649e2e19d61a87d1d2f45bd1741a9",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/fonts/MaterialIcons-Regular.otf": "1f4fc9d6485c76598d9f61dba9aa6964",
"assets/AssetManifest.bin": "caf437af5d6a14c26747dfcb6fd7b4be",
"assets/web/icons/Icon-192.png": "24a0c8216a36f61a22ff4217337aa70d",
"assets/packages/golden_toolkit/fonts/Roboto-Regular.ttf": "ac3f799d5bbaf5196fab15ab8de8431c",
"assets/packages/arabic_font/assets/fonts/El_Messiri/ElMessiri-Medium.ttf": "a88b6e918867744f5a28a5f4646c712f",
"assets/packages/arabic_font/assets/fonts/El_Messiri/ElMessiri-Regular.ttf": "f987603b0ad311424b5c64c55e10d10c",
"assets/packages/arabic_font/assets/fonts/El_Messiri/ElMessiri-Bold.ttf": "1a4d3ffd4a8a7017d2a57c22105dead4",
"assets/packages/arabic_font/assets/fonts/El_Messiri/ElMessiri-SemiBold.ttf": "a2fc08a54a46b0663a084ce4ba19cce2",
"assets/packages/arabic_font/assets/fonts/Mada/Mada-Regular.ttf": "9b3ddca6af7328102938afab0d55bc9d",
"assets/packages/arabic_font/assets/fonts/Mada/Mada-Bold.ttf": "6087ba6d5c2ac2ad094c8a545839775e",
"assets/packages/arabic_font/assets/fonts/Mada/Mada-SemiBold.ttf": "28191d02304034b2421f2bacb91b78aa",
"assets/packages/arabic_font/assets/fonts/Mada/Mada-ExtraLight.ttf": "b5043d5fc92c52c730e4faff41118815",
"assets/packages/arabic_font/assets/fonts/Mada/Mada-Black.ttf": "77e982cb003544f8c4832af58f5a8051",
"assets/packages/arabic_font/assets/fonts/Mada/Mada-Light.ttf": "7b3ad1c8f7d7dbc35890123434adae55",
"assets/packages/arabic_font/assets/fonts/Mada/Mada-Medium.ttf": "e3d9e7676a26eae957fad1e69c33d5a7",
"assets/packages/arabic_font/assets/fonts/Harmattan/Harmattan-Regular.ttf": "bcd87a685fc9fa2f88ae49bf9662649c",
"assets/packages/arabic_font/assets/fonts/Dubai/Dubai-Medium.ttf": "1b70cb9a589df286a5e4faf70e2a50d9",
"assets/packages/arabic_font/assets/fonts/Dubai/Dubai-Light.ttf": "2f7c5bb9cf55f5b0cb2d06c57d5a8ae7",
"assets/packages/arabic_font/assets/fonts/Dubai/Dubai-Bold.ttf": "8fbdda63d87a91c5600c512a12aec79a",
"assets/packages/arabic_font/assets/fonts/Dubai/Dubai-Regular.ttf": "24ab51f6ae1804c808f822d28b9be18a",
"assets/packages/arabic_font/assets/fonts/DinNextLTArabic/ArbFONTS-DINNextLTArabic-Black-3.ttf": "8929fabf224e33fc76110ff98651aa7b",
"assets/packages/arabic_font/assets/fonts/DinNextLTArabic/ArbFONTS-DINNextLTArabic-Medium-2.ttf": "8bb0cc139f4ae9080896b1bbf8b126ec",
"assets/packages/arabic_font/assets/fonts/DinNextLTArabic/ArbFONTS-DINNextLTArabic-Regular-2.ttf": "61b1e04ff205cd324350749648fe16fc",
"assets/packages/arabic_font/assets/fonts/DinNextLTArabic/ArbFONTS-DINNextLTArabic-Bold-2.ttf": "24421421e9210a40c31dda3d7d47995a",
"assets/packages/arabic_font/assets/fonts/DinNextLTArabic/ArbFONTS-DINNEXTLTARABIC-LIGHT-1.ttf": "d78f5d2c76185fa07aaf8dd729eef33e",
"assets/packages/arabic_font/assets/fonts/DinNextLTArabic/ArbFONTS-DINNextLTArabic-Heavy-1.ttf": "87b2169d28ef227898bfb5db66ef2ca8",
"assets/packages/arabic_font/assets/fonts/Katibeh/Katibeh-Regular.ttf": "b9a90c628ecd4066bc9a44f548b67ff9",
"assets/packages/arabic_font/assets/fonts/Mirza/Mirza-SemiBold.ttf": "27b1558b9550a3196031a61fc6e0687e",
"assets/packages/arabic_font/assets/fonts/Mirza/Mirza-Bold.ttf": "d3cc57b384c4ccfcab258d4ade64b7f5",
"assets/packages/arabic_font/assets/fonts/Mirza/Mirza-Medium.ttf": "3b667481a859085d1a27e221bf45f3a9",
"assets/packages/arabic_font/assets/fonts/Mirza/Mirza-Regular.ttf": "21fd4e3c1c6f103d8b00b8a30d211c49",
"assets/packages/arabic_font/assets/fonts/Aref_Ruqaa/ArefRuqaa-Regular.ttf": "8ff92bc4b7f51b61d2d628220a08d2d3",
"assets/packages/arabic_font/assets/fonts/Aref_Ruqaa/ArefRuqaa-Bold.ttf": "7b87d843f32f71e0cf71766945d712e4",
"assets/packages/arabic_font/assets/fonts/Scheherazade/Scheherazade-Bold.ttf": "b26c8ba6aae29ef98d54c0841398ef34",
"assets/packages/arabic_font/assets/fonts/Scheherazade/Scheherazade-Regular.ttf": "87ffd3a053cd6c09186452cb10d9a15a",
"assets/packages/arabic_font/assets/fonts/Lemonada/Lemonada-Regular.ttf": "659eae40390059a683cc91faf4df4ca9",
"assets/packages/arabic_font/assets/fonts/Lemonada/Lemonada-SemiBold.ttf": "91d517aec1170078f0b2eab23b4eef26",
"assets/packages/arabic_font/assets/fonts/Lemonada/Lemonada-Bold.ttf": "ec008f8a072ecd3d535f2cac97e9ba89",
"assets/packages/arabic_font/assets/fonts/Lemonada/Lemonada-Light.ttf": "f6dbfb6fa1cf1d1a3070c0f0ceb2d585",
"assets/packages/arabic_font/assets/fonts/Rakkas/Rakkas-Regular.ttf": "1197ba69414123d92777f819a43a7d27",
"assets/packages/arabic_font/assets/fonts/Amiri/Amiri-BoldItalic.ttf": "1f0cfd59bef4321ff35af3ea69415e55",
"assets/packages/arabic_font/assets/fonts/Amiri/Amiri-Italic.ttf": "ca54f2483d9429c0a47fba80249ceede",
"assets/packages/arabic_font/assets/fonts/Amiri/Amiri-Regular.ttf": "a61fbc4d3da365e17f68e1bba6415e47",
"assets/packages/arabic_font/assets/fonts/Amiri/Amiri-Bold.ttf": "2accfcd6b3faf83d349942a19b91e12b",
"assets/packages/arabic_font/assets/fonts/Cairo/Cairo-Regular.ttf": "8e62cfbb90ccadc00b59b977c93eb31a",
"assets/packages/arabic_font/assets/fonts/Cairo/Cairo-Bold.ttf": "ca9036ba6a756880f334d959b1b5f549",
"assets/packages/arabic_font/assets/fonts/Cairo/Cairo-Black.ttf": "41774c33b29f951d86110f0e8cd527bb",
"assets/packages/arabic_font/assets/fonts/Cairo/Cairo-ExtraLight.ttf": "118c56fd3f0773d43bdcd16deb8370d0",
"assets/packages/arabic_font/assets/fonts/Cairo/Cairo-Light.ttf": "532ee41c709ac28455bed88dd839ddb8",
"assets/packages/arabic_font/assets/fonts/Cairo/Cairo-SemiBold.ttf": "984ec9c232c5936cadb14e87cf1283db",
"assets/packages/arabic_font/assets/fonts/Jomhuria/Jomhuria-Regular.ttf": "7d6b466d0e08fd984705b6190e6554a6",
"assets/packages/arabic_font/assets/fonts/Markazi_Text/MarkaziText-Regular.ttf": "367d77a763df54f70c6ebe345598f2fb",
"assets/packages/arabic_font/assets/fonts/ibm/IBMPlexArabic-Text.ttf": "76b0d039397c1d22ed2e38e5d7af9ae7",
"assets/packages/arabic_font/assets/fonts/Avenir_Arabic/Avenir-Arabic-Heavy.ttf": "bae31091c8c902377f6459130fd3548e",
"assets/packages/arabic_font/assets/fonts/Avenir_Arabic/Avenir-Arabic-Regular.ttf": "7368b0c6d9169b637e27948df6ff72f0",
"assets/packages/arabic_font/assets/fonts/Avenir_Arabic/Avenir-Arabic-Medium.ttf": "9cfd6cd4923f712b864f4d891959d107",
"assets/packages/arabic_font/assets/fonts/Avenir_Arabic/Avenir-Arabic-Black.ttf": "8da1b8bbca4fc2b131d4fbe89401ead7",
"assets/packages/arabic_font/assets/fonts/Avenir_Arabic/Avenir-Arabic-Book.ttf": "3ea540836144a296c99076a69a5191b1",
"assets/packages/arabic_font/assets/fonts/Changa/Changa-Bold.ttf": "919bffaf44e0410995355e7441435370",
"assets/packages/arabic_font/assets/fonts/Changa/Changa-Medium.ttf": "c3af486a73a7461b1122665df86a7733",
"assets/packages/arabic_font/assets/fonts/Changa/Changa-SemiBold.ttf": "125489c0710514546290914ac822a720",
"assets/packages/arabic_font/assets/fonts/Changa/Changa-Light.ttf": "e2f7d3402c1c52456c09db40a80228f0",
"assets/packages/arabic_font/assets/fonts/Changa/Changa-ExtraLight.ttf": "0eccd5677b2ef5b0342169564e571a05",
"assets/packages/arabic_font/assets/fonts/Changa/Changa-ExtraBold.ttf": "73fcacc8fd46a0eed3037a20982d2cc7",
"assets/packages/arabic_font/assets/fonts/Changa/Changa-Regular.ttf": "7a53368c4704181a547f440c6273159b",
"assets/packages/arabic_font/assets/fonts/Tajawal/Tajawal-ExtraBold.ttf": "87a0f0773f0cdc28fd8dd3603bf34837",
"assets/packages/arabic_font/assets/fonts/Tajawal/Tajawal-Black.ttf": "d8e4db47417985783913a2d64ca6e8cf",
"assets/packages/arabic_font/assets/fonts/Tajawal/Tajawal-Light.ttf": "5c8f739351e568ec0c9fc0dc8a6994b4",
"assets/packages/arabic_font/assets/fonts/Tajawal/Tajawal-Medium.ttf": "1472d65abf09fa765956fd3d32dadf48",
"assets/packages/arabic_font/assets/fonts/Tajawal/Tajawal-ExtraLight.ttf": "4dba176f2d532f19d9c4c61502bca07b",
"assets/packages/arabic_font/assets/fonts/Tajawal/Tajawal-Bold.ttf": "73222b42f57d11db8ed71c1752e121c0",
"assets/packages/arabic_font/assets/fonts/Lateef/LateefRegOT.ttf": "f98cf82fba21f78b335a41f343c5f0c9",
"assets/packages/arabic_font/assets/fonts/Reem_Kufi/ReemKufi-Regular.ttf": "1cbfee67b7f1e63e1334e8800d5450b6",
"assets/packages/arabic_font/assets/fonts/Lalezar/Lalezar-Regular.ttf": "c07a18bb821945af6ec7de632e877731",
"assets/packages/arabic_font/assets/fonts/Baloo_Bhaijaan/BalooBhaijaan-Regular.ttf": "28190ae5cd54e8bf270404320d5e0821",
"assets/FontManifest.json": "8b07cb63ca5cda6f64e060b8b98ae4d4",
"assets/AssetManifest.bin.json": "27dafacecbcb1281dc7e27509ffcacbf",
"assets/NOTICES": "0b67af349a9cb2c9b088c735dff0bdc8",
"assets/assets/images/background.webp": "da5b92379854a3c0d7bdcc59409f5f3a",
"assets/assets/images/ATTRIBUTION.md": "67a45bf24b37ddca7e6fdbd98d0af71d",
"assets/assets/fonts/OpenMoji/OpenMoji-color-colr1_svg.ttf": "03542b080f1056f9b24643e1f57d13ad",
"assets/assets/fonts/OpenMoji/OpenMoji-color-glyf_colr_0.ttf": "e913629f5ab2ab95c71ba49db4fe9b74",
"canvaskit/canvaskit.wasm": "b2a74c6cc2faa917441dd9dfec0939e7",
"canvaskit/skwasm.wasm": "9c50a423d8dab5f044bdbea936a54cca",
"canvaskit/skwasm_st.js.symbols": "4b93edaa29433de7db3cd87495627434",
"canvaskit/chromium/canvaskit.wasm": "3354fb2b3434e14246fe3e1869b41c74",
"canvaskit/chromium/canvaskit.js": "9dc7a140b1f0755e6321e9c61b9bd4d9",
"canvaskit/chromium/canvaskit.js.symbols": "3bac65cb53234215721c611c897f21ed",
"canvaskit/canvaskit.js": "8cf6e87eff144e2453a9640bfa1a4ad0",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm_st.wasm": "338e7ec25a727c06c99365d8413a6540",
"canvaskit/canvaskit.js.symbols": "bffc8207a0a247423f46c0c36a92a510",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "124110b5f9ccdddbdc1bcfac332176ed",
"favicon.png": "669cca707ffec3e26252b0197e2b847c"};
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
