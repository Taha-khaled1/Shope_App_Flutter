import 'package:flutter/material.dart';

class appbar {
  PreferredSizeWidget appbarhomescreen(
    Color color,
  ) {
    return AppBar(
      elevation: 0,
      backgroundColor: color,
      leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        IconButton(
            onPressed: () {}, icon: Icon(Icons.shopping_basket_outlined)),
      ],
    );
  }
}
