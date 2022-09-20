import 'package:flutter/material.dart';

class Sizeprudect extends StatelessWidget {
  Sizeprudect({
    Key? key,
    required this.size,
  }) : super(key: key);

  String size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Size',
          style: TextStyle(fontSize: 21),
        ),
        SizedBox(
          width: 7,
        ),
        Text(
          '$size Cm',
          style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
