// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:ada_tugas/src/app.dart';
import 'package:ada_tugas/src/config/config.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    AppConfig(
      env: DevConfig(),
      child: const App(),
    ),
  );
}
