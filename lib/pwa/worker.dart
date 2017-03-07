import 'package:pwa/worker.dart';
import 'offline_urls.g.dart';

/// Creates the PWA worker.
PwaWorker createWorker() {
  DynamicCache fonts = new DynamicCache('fonts', noNetworkCaching: true);

  PwaWorker worker = new PwaWorker()..offlineUrls = offlineUrls;

  worker.router.get('https://fonts.googleapis.com/', fonts.cacheFirst);
  worker.router.get('https://fonts.gstatic.com/', fonts.cacheFirst);
  return worker;
}
