import 'package:flutter/material.dart';

class MultycircleColores extends StatelessWidget {
  const MultycircleColores({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Color',
          style: TextStyle(fontSize: 21),
        ),
        SizedBox(
          width: 7,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircleAvatar(
              radius: 10,
              backgroundColor: Colors.red,
            ),
            SizedBox(
              width: 7,
            ),
            CircleAvatar(
              radius: 10,
              backgroundColor: Colors.grey,
            ),
            SizedBox(
              width: 7,
            ),
            CircleAvatar(
              radius: 10,
              backgroundColor: Colors.black,
            ),
          ],
        )
      ],
    );
  }
}
