import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopeapp/Controller/HomeController.dart';

import '../../../constant.dart';
import 'Buildoutline.dart';

class Count_and_Favo extends StatelessWidget {
  const Count_and_Favo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Homecontroller prov = Provider.of<Homecontroller>(context);

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: [
              BuildOutlineButton(
                icon: Icons.remove,
                onPressed: () {
                  prov.supCount();
                },
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
                child: Text(
                  prov.numOfItems.toString().padLeft(2, "0"),
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              BuildOutlineButton(
                icon: Icons.add,
                onPressed: () {
                  prov.sumCount();
                },
              ),
            ],
          ),
          IconButton(
            onPressed: () {
              prov.Favorite();
            },
            icon: Icon(
              EvaIcons.heart,
              color: prov.favo ? Colors.red : Colors.grey,
              size: 40,
            ),
          )
        ],
      ),
    );
  }
}
