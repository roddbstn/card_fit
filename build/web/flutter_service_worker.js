'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "09fbf9e2c2234385e5dd0c640e16e69c",
"version.json": "9e5501acdc8680523416d0f0773c4ff1",
"index.html": "19f4bb320b9b9fbe58720f771bc32c77",
"/": "19f4bb320b9b9fbe58720f771bc32c77",
"main.dart.js": "a9d464a5456e82a96487ec2d4ecf8875",
"flutter.js": "888483df48293866f9f41d3d9274a779",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "1346a2adf4cd8e33e4ae1506ea454226",
"assets/AssetManifest.json": "0748e0f1e8543d34fdc03fd312cd04d1",
"assets/NOTICES": "fa423491ed76d5c5f9669672f606e5bd",
"assets/FontManifest.json": "08a07e5b52ab002e59ecf0431c3cf0cd",
"assets/AssetManifest.bin.json": "ee8602cd3dee8c3bced59ae8dfc63703",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "45d6adcca1cba5cbc8ecac16daa5e531",
"assets/fonts/MaterialIcons-Regular.otf": "c0ad29d56cfe3890223c02da3c6e0448",
"assets/assets/images/card_taptap_o.svg": "8357d416db216e01f0444ac10340d668",
"assets/assets/images/card_taptap_main.png": "a862d895bd0fee282da66d60d7d6227a",
"assets/assets/images/category_coffee.png": "de00b9979988cbe603779e53845eac28",
"assets/assets/images/emoji_happy.png": "b67b53033827697e405eaa54795bc617",
"assets/assets/images/card_taptap.png": "a862d895bd0fee282da66d60d7d6227a",
"assets/assets/images/category_globe.png": "a4c6b78c59d6972d3a2dbaf462b0415f",
"assets/assets/images/category_transport.svg": "71f6f9a444e53fa768a62ef113f1c04b",
"assets/assets/images/card_taptap_shadow.png": "24b486a26500a4df666ee49f2d2a22ae",
"assets/assets/images/category_cafe.svg": "2fdcd142fb0a6379531db089e3aec658",
"assets/assets/images/category_bus.png": "8950cfbbcfd3d5107a0fd4ee8883b457",
"assets/assets/images/credit_card_coins.png": "37565670f39ba06626f775670f08238f",
"assets/assets/images/category_movie.svg": "2358a30de4846a479ec1eb617a104d60",
"assets/assets/images/category_overseas.svg": "ce9628b05e849c834389ea97914c32cc",
"assets/assets/images/category_movie.png": "7a2b99cf70f946d39d452cc6455783f7",
"assets/assets/images/receipt_card.png": "412ebe8d96d16d30a24bd972b43c065c",
"assets/assets/images/icon_card_benefits.png": "37565670f39ba06626f775670f08238f",
"assets/assets/images/icon_receipt_card.png": "412ebe8d96d16d30a24bd972b43c065c",
"assets/assets/icons/nav_profile.svg": "958edfa98b8384d3a5c503a54affef39",
"assets/assets/icons/settings_icon.svg": "60e1c8ab9db94f620ca550f0280bd77a",
"assets/assets/icons/three_dots_menu.svg": "c600028e66cac2f8a0fed8d366df76da",
"assets/assets/icons/back_arrow.png": "ecf1d1bac9381dc6b839d3f3165c8d29",
"assets/assets/icons/arrow_up.svg": "f71756e132415841a4f21ea4e836c765",
"assets/assets/icons/chevron_right.svg": "364c192913d8c2bc83d85020eac7b6ca",
"assets/assets/icons/nav_spending.svg": "e9ae391fe54aad6698edd0a6bf65b06a",
"assets/assets/icons/chevron_right_small.svg": "9e24ce1ccb0286ba11e5f726d6e9abc3",
"assets/assets/icons/pagination_dots.svg": "4d177b6adae00a9927eac2dcad4361e6",
"assets/assets/icons/nav_home.svg": "469bd5569977b3a6d7edacc867c54ce0",
"assets/assets/icons/dots_separator.svg": "1b2606b2c346480277045d4f3ea8ed62",
"assets/assets/icons/carousel_dots.svg": "e7d9dbc76c66e9b5a4afe7fa1c1202e6",
"assets/assets/icons/dropdown_arrow.svg": "a7ac8dfd58953df3b121123a3956988f",
"assets/assets/fonts/Pretendard-1.3.9/public/static/Pretendard-Regular.otf": "84c0ea9d65324c758c8bd9686207afea",
"assets/assets/fonts/Pretendard-1.3.9/public/static/Pretendard-Black.otf": "de507f665f6ea63a94678e529b2a4ff0",
"assets/assets/fonts/Pretendard-1.3.9/public/static/Pretendard-Medium.otf": "13a352bd44156de92cce335ce93cd02d",
"assets/assets/fonts/Pretendard-1.3.9/public/static/Pretendard-Light.otf": "de308b576c70af4871d436e89918fdf6",
"assets/assets/fonts/Pretendard-1.3.9/public/static/Pretendard-ExtraBold.otf": "67e8e4773c05f2988c52dfe6ea337f33",
"assets/assets/fonts/Pretendard-1.3.9/public/static/Pretendard-Bold.otf": "f8a9b84216af5155ffe0e8661203f36f",
"assets/assets/fonts/Pretendard-1.3.9/public/static/Pretendard-SemiBold.otf": "6fe301765c4f438e2034a0a47b609c61",
"canvaskit/skwasm.js": "1ef3ea3a0fec4569e5d531da25f34095",
"canvaskit/skwasm_heavy.js": "413f5b2b2d9345f37de148e2544f584f",
"canvaskit/skwasm.js.symbols": "0088242d10d7e7d6d2649d1fe1bda7c1",
"canvaskit/canvaskit.js.symbols": "58832fbed59e00d2190aa295c4d70360",
"canvaskit/skwasm_heavy.js.symbols": "3c01ec03b5de6d62c34e17014d1decd3",
"canvaskit/skwasm.wasm": "264db41426307cfc7fa44b95a7772109",
"canvaskit/chromium/canvaskit.js.symbols": "193deaca1a1424049326d4a91ad1d88d",
"canvaskit/chromium/canvaskit.js": "5e27aae346eee469027c80af0751d53d",
"canvaskit/chromium/canvaskit.wasm": "24c77e750a7fa6d474198905249ff506",
"canvaskit/canvaskit.js": "140ccb7d34d0a55065fbd422b843add6",
"canvaskit/canvaskit.wasm": "07b9f5853202304d3b0749d9306573cc",
"canvaskit/skwasm_heavy.wasm": "8034ad26ba2485dab2fd49bdd786837b"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
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
