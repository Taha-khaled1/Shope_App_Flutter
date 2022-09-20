import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:shopeapp/Infowidget/models/device_info.dart';

class Cart_and_Buy_nom_Button extends StatelessWidget {
  const Cart_and_Buy_nom_Button({
    Key? key,
    required this.devic,
  }) : super(key: key);
  final DeviceInfo devic;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.center,
            width: devic.localWidth * 0.13,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1, color: Colors.blueAccent),
            ),
            child: IconButton(
                icon: Icon(
                  EvaIcons.shoppingCart,
                  color: Colors.blue,
                ),
                onPressed: () {}),
          ),
          Container(
            width: devic.localWidth * 0.7,
            height: 50,
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Color.fromRGBO(143, 148, 251, 1),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ))),
              onPressed: () {},
              child: Text(
                'Buy Now',
                style: TextStyle(
                  fontSize: 21,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
