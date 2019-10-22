// Copyright 2019 Jonah Williams. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:build/build.dart' as build;
import 'package:flutter/material.dart';
import 'package:json_widget/src/widgets/builder.dart';

import 'src/builder.dart';
export 'src/widgets/builder.dart';

/// Creates a [JsonWidgetBuilder]
build.Builder jsonWidgetBuilder(build.BuilderOptions builderOptions) {
  return const JsonWidgetBuilder();
}

Widget jsonRuntimeWidget(Map<String, dynamic> data) => JsonWidget(data: data);
