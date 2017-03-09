import 'package:pwa/worker.dart';
import 'package:io_2017_components_codelab/pwa/offline_urls.g.dart' as offline;

/// Starts the PWA in the worker scope.
void main() {
  PwaWorker worker = new PwaWorker()..offlineUrls = offline.offlineUrls;
  worker.run();
}
