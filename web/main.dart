// Copyright (c) 2017, filiph. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/di.dart';
import 'package:angular2/platform/browser.dart';
import 'package:io_2017_components_codelab/app_component.dart';
import 'package:pwa/client.dart';

void main() {
  bootstrap(AppComponent, [
    new Provider(PwaClient, useValue: new PwaClient(scriptUrl: 'pwa.g.dart.js'))
  ]);
}
