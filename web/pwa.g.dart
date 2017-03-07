import 'package:pwa/worker.dart';
import 'package:io_2017_components_codelab/pwa/worker.dart' as custom;

/// Starts the PWA in the worker scope.
void main() {
  PwaWorker worker = custom.createWorker();
  worker.run();
}
