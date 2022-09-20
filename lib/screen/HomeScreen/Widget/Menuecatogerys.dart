import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopeapp/Controller/HomeController.dart';
import '../../../constant.dart';
import '../../../models/fuchnalty.dart';

class Menuecatogerys extends StatelessWidget {
  const Menuecatogerys({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Homecontroller prov = Provider.of<Homecontroller>(context);
    functiontlty providerData = Provider.of<functiontlty>(context);

    return Container(
      height: 45,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: providerData.categories.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              prov.selectcatogery(index);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    providerData.categories[index],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: kDefaultPaddin,
                      color: prov.selectedIndex == index
                          ? kTextColor
                          : kTextLightColor,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: kDefaultPaddin / 4),
                    height: 2,
                    width: 30,
                    color: prov.selectedIndex == index
                        ? Colors.black
                        : Colors.transparent,
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
