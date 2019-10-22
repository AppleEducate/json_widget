import 'package:flutter/material.dart';

Color colorFromString(String val) {
  if (val == null || val.isEmpty) return null;
  try {
    if (val.contains("#")) {
      // #Color(0xFF22DD11)
      final value = val.replaceAll('#Color(', '').replaceAll(')', '');
      return Color(int.tryParse(value));
    }
  } catch (e) {}
  return Colors.transparent;
}

String colorToString(int val, {bool singleLine = true}) {
  if (val == null) return null;
  return '#Color($val)';
}
