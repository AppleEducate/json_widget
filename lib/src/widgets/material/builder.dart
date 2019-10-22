import 'package:flutter/material.dart';

import 'container.dart' as container;
import 'text.dart' as text;

class MaterialJsonWidget extends StatelessWidget {
// {
//     "name": "Container",
//     "params": {
//         "color": "#Color(0xFF22DD11)",
//         "child": {
//             "name": "Text",
//             "params": {
//                 "0": "Hello, World"
//             }
//         }
//     }
// }

  const MaterialJsonWidget({
    Key key,
    @required this.data,
  }) : super(key: key);

  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    Widget _child;
    if (data['name'] == 'Container') _child = container.fromJson(data);
    if (data['name'] == 'Text') _child = text.textFromJson(data);
    return _child ?? Container();
  }
}
