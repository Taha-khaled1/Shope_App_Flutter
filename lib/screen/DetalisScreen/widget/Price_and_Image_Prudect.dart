import 'package:flutter/material.dart';
import 'package:shopeapp/Infowidget/models/device_info.dart';

class Price_and_Image_Prudect extends StatelessWidget {
  const Price_and_Image_Prudect({
    Key? key,
    required this.id,
    required this.image,
    required this.textprice,
    required this.devic,
  }) : super(key: key);

  final String image;
  final String id;
  final String textprice;
  final DeviceInfo devic;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 130,
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              left: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    ' Price',
                    style: TextStyle(color: Colors.white, fontSize: 21),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    ' \$ $textprice',
                    style: Theme.of(context).textTheme.headline3?.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Positioned(
              //right: 0,
              //  left: 0,
              child: Container(
                child: Hero(
                  tag: id,
                  child: Image.asset(
                    image,
                    fit: BoxFit.fill,
                    height: 260,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
