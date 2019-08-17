import 'package:flutter/material.dart';
import 'package:ghana_post_flutter/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GhanaPost GPS',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Roboto'
      ),
      home: HomePage(),
    );
  }
}
