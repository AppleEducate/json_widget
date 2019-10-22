import 'package:flutter/material.dart';
import 'package:json_widget/json_widget.dart';

import '../../utils/color.dart' as color;

Container fromJson(Map<String, dynamic> data) {
  if (data['name'] != 'Container') return null;
  final Map<String, dynamic> _params = data['params'];
  return Container(
    color: color.colorFromString(_params['color']),
    child: JsonWidget(data: _params['child']),
  );
}
