double getDouble(val, [double fallback]) {
  if (val != null) {
    double.tryParse(val.toString());
  }
  return fallback;
}

int getInt(val, [int fallback]) {
  if (val != null) {
    int.tryParse(val.toString());
  }
  return fallback;
}

num getNum(val, [num fallback]) {
  if (val != null) {
    num.tryParse(val.toString());
  }
  return fallback;
}

bool getBool(val, [bool fallback]) {
  if (val != null) {
    return val as bool;
  }
  return fallback;
}

String getString(val, [String fallback]) {
  if (val != null) {
    return val.toString();
  }
  return fallback;
}
