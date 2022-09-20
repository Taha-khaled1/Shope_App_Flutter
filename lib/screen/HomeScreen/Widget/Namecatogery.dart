import 'package:flutter/material.dart';

import '../../../constant.dart';

class Namecatogery extends StatelessWidget {
  const Namecatogery({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Text(
        "Women",
        style: Theme.of(context)
            .textTheme
            .headline5
            ?.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}
