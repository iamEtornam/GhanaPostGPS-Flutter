import 'package:flutter/material.dart';

class NewAddressPage extends StatefulWidget {
  @override
  _NewAddressPageState createState() => _NewAddressPageState();
}

class _NewAddressPageState extends State<NewAddressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get Digital address'),
      ),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
Container(
  decoration: BoxDecoration(
    borderRadius: BorderRadius.vertical(
      top: Radius.circular(8)
    )
  ),
  child: Column(
    children: <Widget>[
      Text('GPS Coordinates'),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Divider(),
      ),
    ],
  ),
)
          ],
        ),
      ),
    );
  }
}