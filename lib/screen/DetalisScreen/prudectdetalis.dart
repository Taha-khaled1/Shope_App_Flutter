import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopeapp/Controller/HomeController.dart';
import 'package:shopeapp/Infowidget/ui_components/info_widget.dart';
import 'package:shopeapp/widget/appbarforhomescreen.dart';
import '../../models/fuchnalty.dart';
import 'widget/Cart_and_Buy_nom_Button.dart';
import 'widget/Count_and_favo.dart';
import 'widget/Descrbtion.dart';
import 'widget/MultycircleColores.dart';
import 'widget/Price_and_Image_Prudect.dart';
import 'widget/Sizeprudect.dart';
import 'widget/TextTopsection.dart';

// ignore: must_be_immutable
class prudectdetalis extends StatefulWidget {
  int index;
  functiontlty providerData;
  prudectdetalis({required this.index, required this.providerData});

  @override
  State<prudectdetalis> createState() => _prudectdetalisState();
}

class _prudectdetalisState extends State<prudectdetalis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.providerData.products[widget.index].color,
      appBar: appbar()
          .appbarhomescreen(widget.providerData.products[widget.index].color),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: InfoWidget(
          builder: (context, deviceInfo) {
            return Container(
              height: deviceInfo.localHeight,
              width: deviceInfo.localWidth,
              child: SingleChildScrollView(
                child: Stack(
                  children: [
                    TextTopsection(
                      text1: widget.providerData.products[widget.index].title,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          )),
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.38),
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.10),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                MultycircleColores(),
                                Sizeprudect(
                                    size: widget.providerData
                                        .products[widget.index].size
                                        .toString()),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: Descrbtion(
                                text: widget.providerData.products[widget.index]
                                    .description,
                              ),
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: Count_and_Favo(),
                            ),
                            SizedBox(
                                width: double.infinity,
                                child:
                                    Cart_and_Buy_nom_Button(devic: deviceInfo)),
                          ],
                        ),
                      ),
                    ),
                    Price_and_Image_Prudect(
                      devic: deviceInfo,
                      id: widget.providerData.products[widget.index].id
                          .toString(),
                      image: widget.providerData.products[widget.index].image,
                      textprice: widget
                          .providerData.products[widget.index].price
                          .toString(),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
