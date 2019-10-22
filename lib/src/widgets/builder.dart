import 'package:flutter/material.dart';

import 'material/builder.dart';

class JsonWidget extends StatelessWidget {
  final Map<String, dynamic> data;

  const JsonWidget({
    Key key,
    @required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialJsonWidget(data: data);
  }
}
