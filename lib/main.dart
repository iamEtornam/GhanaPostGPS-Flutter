import 'dart:io';

import 'package:flutter/material.dart';
import 'package:ghana_post_flutter/address_details_page.dart';
import 'package:ghana_post_flutter/home_page.dart';
import 'package:ghana_post_flutter/new_address_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final _mainColor = Color(0xff0677BD);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GhanaPost GPS',
      darkTheme: ThemeData.dark(),
      theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.white,
          scaffoldBackgroundColor: Colors.white,
          fontFamily: 'Roboto',
          appBarTheme: AppBarTheme(
              textTheme: TextTheme(
                  title: TextStyle(
                      color: _mainColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18)),
              iconTheme: IconThemeData(color: _mainColor),
              elevation: Platform.isIOS ? 0 : 4)),
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        '/homePage': (BuildContext context) => HomePage(),
        '/addressDetilsPage': (BuildContext context) => AddressDetailsPage(),
        '/newAddressPage': (BuildContext context) => NewAddressPage(),
      },
    );
  }
}
