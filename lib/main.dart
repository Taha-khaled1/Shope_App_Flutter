import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopeapp/Controller/HomeController.dart';
import 'models/fuchnalty.dart';

import 'screen/HomeScreen/prudectpage.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => functiontlty(),
        ),
        ChangeNotifierProvider(
          create: (context) => Homecontroller(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
            appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
        )),
        home: Homepage(),
      ),
    );
  }
}
