import 'package:flutter/material.dart';

import '../../utils/color.dart' as color;
import '../../utils/type.dart' as type;

Text textFromJson(Map<String, dynamic> data) {
  if (data['name'] != 'Text') return null;
  final Map<String, dynamic> _params = data['params'];
  return Text(
    type.getString(['0'], 'Text Required!'),
    maxLines: type.getInt(_params['maxLines']),
    textScaleFactor: type.getDouble(_params['textScaleFactor']),
    softWrap: type.getBool(_params['softWrap']),
    style: styleFromJson(_params['style']),
  );
}

TextStyle styleFromJson(Map<String, dynamic> data) {
  if (data['name'] != 'TextStyle') return null;
  final Map<String, dynamic> _params = data['params'];
  return TextStyle(
    inherit: type.getBool(_params['inherit'], true),
    fontSize: type.getDouble(_params['fontSize']),
    color: color.colorFromString(_params['color']),
  );
}
