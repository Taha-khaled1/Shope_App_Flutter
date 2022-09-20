import 'package:flutter/material.dart';

class TextTopsection extends StatelessWidget {
  const TextTopsection({
    Key? key,
    required this.text1,
  }) : super(key: key);

  final String text1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(25, 20, 0, 0),
      child: Container(
        child: Column(
          children: [
            Text(
              "Aristocratic Hand Bag",
              style: TextStyle(color: Colors.white),
            ),
            Text(
              text1,
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
