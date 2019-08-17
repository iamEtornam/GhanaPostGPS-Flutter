import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class AddressDetailsPage extends StatefulWidget {
  final addressInfo;

  const AddressDetailsPage({Key key, this.addressInfo}) : super(key: key);
  @override
  _AddressDetailsPageState createState() => _AddressDetailsPageState();
}

class _AddressDetailsPageState extends State<AddressDetailsPage> {
    Color _mainColor = Color(0xff0677BD);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.more_vert),
          )
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              height: 150,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: _mainColor,
                borderRadius: BorderRadius.circular(8)
              ),
              child: Column(
                children: <Widget>[
Align(
  alignment: Alignment.topRight,
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text('copy',style: TextStyle(
      color: Colors.white
    ),),
  ),
),
Container(
  height: 75,
  child: Center(
    child: Text('GM-50D1-18',style: TextStyle(
      fontSize: 40,
      color: Colors.white,
    fontWeight: FontWeight.bold
    ),),
  ),
)
                ],
              ),
            ),
            SizedBox(height: 10,),
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              alignment: WrapAlignment.spaceEvenly,
              children: <Widget>[
                InkWell(
            onTap: (){},
              child: Material(
            color: _mainColor,
            borderRadius: BorderRadius.circular(20.0),
            elevation: 3.0,
            child: Container(
                margin: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                height: 40.0,
                width: 80.0,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'View Map',
                    softWrap: true,
                    style: TextStyle(color: Colors.white),
                  ),
                )),
          )),
             InkWell(
            onTap: (){},
              child: Material(
            color: _mainColor,
            borderRadius: BorderRadius.circular(20.0),
            elevation: 3.0,
            child: Container(
                margin: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                height: 40.0,
                width: 80.0,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'View Route',
                    softWrap: true,
                    style: TextStyle(color: Colors.white),
                  ),
                )),
          )),
             InkWell(
            onTap: (){},
              child: Material(
            color: _mainColor,
            borderRadius: BorderRadius.circular(20.0),
            elevation: 3.0,
            child: Container(
                margin: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                height: 40.0,
                width: 80.0,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'View Street',
                    softWrap: true,
                    style: TextStyle(color: Colors.white),
                  ),
                )),
          )),
              ],
            ),
            SizedBox(height: 50),
            ListTile(
                  leading: Icon(Octicons.getIconData("globe"),size: 30,),
                  title: Text('Region',style: TextStyle(fontSize: 18),),
                  trailing: Text('Greater Accra',style: TextStyle(fontSize: 18,color: _mainColor),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Divider(),
                ),
                 ListTile(
                  leading: Icon(Octicons.getIconData("globe"),size: 30,),
                  title: Text('District',style: TextStyle(fontSize: 18),),
                  trailing: Text('Madina',style: TextStyle(fontSize: 18,color: _mainColor),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Divider(),
                ),
                 ListTile(
                  leading: Icon(Octicons.getIconData("globe"),size: 30,),
                  title: Text('Street',style: TextStyle(fontSize: 18),),
                  trailing: Text('Madina Street',style: TextStyle(fontSize: 18,color: _mainColor),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Divider(),
                ),
                 ListTile(
                  leading: Icon(Octicons.getIconData("globe"),size: 30,),
                  title: Text('Post Code',style: TextStyle(fontSize: 18),),
                  trailing: Text('GD890',style: TextStyle(fontSize: 18,color: _mainColor),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Divider(),
                ),
                 ListTile(
                  leading: Icon(Octicons.getIconData("globe"),size: 30,),
                  title: Text('Latitude,Longitude',style: TextStyle(fontSize: 18),),
                  trailing: Text('2.9089,-0.12345',style: TextStyle(fontSize: 18,color: _mainColor),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Divider(),
                )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        color: _mainColor,
        child: Center(
          child: Text('Share Address',style: TextStyle(color: Colors.white,fontSize: 16),),
        ),
      ),
    );
  }
}