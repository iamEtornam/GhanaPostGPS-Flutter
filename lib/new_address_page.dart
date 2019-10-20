import 'package:flutter/material.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

class NewAddressPage extends StatefulWidget {
  @override
  _NewAddressPageState createState() => _NewAddressPageState();
}

class _NewAddressPageState extends State<NewAddressPage> {
  static final CameraPosition _kInitialPosition = const CameraPosition(
    target: LatLng(-33.852, 151.211),
    zoom: 11.0,
  );

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
                height: 250,
                width: MediaQuery.of(context).size.width,
                child: MapboxMap(initialCameraPosition: _kInitialPosition)),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(8))),
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
