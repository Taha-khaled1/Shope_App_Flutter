import 'package:flutter/material.dart';
import 'package:shopeapp/Infowidget/ui_components/info_widget.dart';
import '../../widget/appbarforhomescreen.dart';
import 'Widget/GradviewItems.dart';
import 'Widget/Menuecatogerys.dart';
import 'Widget/Namecatogery.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar().appbarhomescreen(Colors.white),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: InfoWidget(
          builder: (context, deviceInfo) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //
                children: [
                  SizedBox(height: 40, child: Namecatogery()),
                  SizedBox(height: 50, child: Menuecatogerys()),
                  SizedBox(
                    height: deviceInfo.localHeight * 0.89,
                    child: GradviewItems(),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
