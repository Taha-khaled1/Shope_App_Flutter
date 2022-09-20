import 'package:flutter/material.dart';

class Descrbtion extends StatelessWidget {
  const Descrbtion({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Text(
        text,
        style: TextStyle(height: 1.4, fontSize: 18),
      ),
    );
  }
}
