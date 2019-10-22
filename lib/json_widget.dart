// Copyright 2019 Jonah Williams. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:build/build.dart' as build;
import 'src/builder.dart';
export 'src/widgets/builder.dart';

/// Creates a [JsonWidgetBuilder]
build.Builder jsonWidgetBuilder(build.BuilderOptions builderOptions) =>
    const JsonWidgetBuilder();
