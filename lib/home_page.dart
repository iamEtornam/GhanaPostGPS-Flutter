import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _controller = TextEditingController();
  Color _mainColor = Color(0xff0677BD);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: Text(
          'GhanaPost',
          style: TextStyle(color: _mainColor, fontWeight: FontWeight.bold),
        ),
        iconTheme: IconThemeData(color: _mainColor),
        bottom: PreferredSize(
            child: Container(
              margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  color: Colors.grey.shade100),
              height: 48.0,
              padding: EdgeInsets.only(left: 15.0),
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.search),
                    hintText: 'Search here...',
                    border: InputBorder.none),
              ),
            ),
            preferredSize: Size.fromHeight(60.0)),
      ),
      drawer: Drawer(
        child: ListView(),
      ),
      body: ListView.builder(
          scrollDirection: Axis.vertical,
          physics: ClampingScrollPhysics(),
          itemCount: 1,
          itemBuilder: (context, index) {
            return Column(
              children: <Widget>[
                Container(
                  height: 180.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        width: 150.0,
                        height: 150.0,
                        margin: EdgeInsets.fromLTRB(10.0, 15.0, 5.0, 15.0),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            color: Colors.white),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(45.0)),
                                  color: Colors.grey.shade200),
                              child: Image.network(""),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'Police Service',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Divider(
                              color: Colors.grey,
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            InkWell(
                                child: Material(
                              color: _mainColor,
                              borderRadius: BorderRadius.circular(20.0),
                              elevation: 3.0,
                              child: Container(
                                  margin:
                                      EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                                  height: 30.0,
                                  width: 100.0,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Send Location',
                                      softWrap: true,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  )),
                            )),
                          ],
                        ),
                      ),
                      Container(
                        width: 150.0,
                        height: 150.0,
                        margin: EdgeInsets.fromLTRB(10.0, 15.0, 5.0, 15.0),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            color: Colors.white),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(45.0)),
                                  color: Colors.grey.shade200),
                              child: Image.network(""),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'Fire Service',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Divider(
                              color: Colors.grey,
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            InkWell(
                                child: Material(
                              color: _mainColor,
                              borderRadius: BorderRadius.circular(20.0),
                              elevation: 3.0,
                              child: Container(
                                  margin:
                                      EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                                  height: 30.0,
                                  width: 100.0,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Send Location',
                                      softWrap: true,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  )),
                            )),
                          ],
                        ),
                      ),
                      Container(
                        width: 150.0,
                        height: 150.0,
                        margin: EdgeInsets.fromLTRB(10.0, 15.0, 5.0, 15.0),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            color: Colors.white),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(45.0)),
                                  color: Colors.grey.shade200),
                              child: Image.network(""),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'Ambulance Service',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Divider(
                              color: Colors.grey,
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            InkWell(
                                child: Material(
                              color: _mainColor,
                              borderRadius: BorderRadius.circular(20.0),
                              elevation: 3.0,
                              child: Container(
                                  margin:
                                      EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                                  height: 30.0,
                                  width: 100.0,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Send Location',
                                      softWrap: true,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  )),
                            )),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 15.0),
                    child: Text(
                      'All Addresses',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      color: Colors.white),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          'Home',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text('Madina Lane 5'),
                        trailing: InkWell(
                            child: Material(
                          color: _mainColor,
                          borderRadius: BorderRadius.circular(20.0),
                          elevation: 3.0,
                          child: Container(
                              margin: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                              height: 30.0,
                              width: 100.0,
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'GM-342-18',
                                  softWrap: true,
                                  style: TextStyle(color: Colors.white),
                                ),
                              )),
                        )),
                      ),
                      Divider(
                        height: 5.0,
                        color: Colors.grey.shade400,
                      ),
                      ListTile(
                        title: Text(
                          'Office',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text('Osu Oxford Street'),
                        trailing: InkWell(
                            child: Material(
                          color: _mainColor,
                          borderRadius: BorderRadius.circular(20.0),
                          elevation: 3.0,
                          child: Container(
                              margin: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                              height: 30.0,
                              width: 100.0,
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'G0-832-18',
                                  softWrap: true,
                                  style: TextStyle(color: Colors.white),
                                ),
                              )),
                        )),
                      ),
                      Divider(
                        height: 5.0,
                        color: Colors.grey.shade400,
                      ),
                      ListTile(
                        title: Text(
                          'Hometown',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text('Saltpond'),
                        trailing: InkWell(
                            child: Material(
                          color: _mainColor,
                          borderRadius: BorderRadius.circular(20.0),
                          elevation: 3.0,
                          child: Container(
                              margin: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                              height: 30.0,
                              width: 100.0,
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'GS-43842-18',
                                  softWrap: true,
                                  style: TextStyle(color: Colors.white),
                                ),
                              )),
                        )),
                      ),
                      Divider(
                        height: 5.0,
                        color: Colors.grey.shade400,
                      ),
                      ListTile(
                        title: Text(
                          'Church',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle:
                            Text('ICGC Holy Ghost Temple, Adenta Fafraha'),
                        trailing: InkWell(
                            child: Material(
                          color: _mainColor,
                          borderRadius: BorderRadius.circular(20.0),
                          elevation: 4.0,
                          child: Container(
                              margin: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                              height: 30.0,
                              width: 100.0,
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'GA-11d42-18',
                                  softWrap: true,
                                  style: TextStyle(color: Colors.white),
                                ),
                              )),
                        )),
                      ),
                      Divider(
                        height: 5.0,
                        color: Colors.grey.shade400,
                      ),
                      ListTile(
                        title: Text(
                          'Bakery',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text('Koforidua, galaway'),
                        trailing: InkWell(
                            child: Material(
                          color: _mainColor,
                          borderRadius: BorderRadius.circular(20.0),
                          elevation: 4.0,
                          child: Container(
                              margin: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                              height: 30.0,
                              width: 100.0,
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'HM-842-18',
                                  softWrap: true,
                                  style: TextStyle(color: Colors.white),
                                ),
                              )),
                        )),
                      )
                    ],
                  ),
                )
              ],
            );
          }),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.location_on,
                color: Colors.grey.shade700,
              ),
              title: Text(
                'Get Address',
                style: TextStyle(color: Colors.grey.shade700, fontSize: 14.0),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_overscan, color: Colors.grey.shade700),
              title: Text(
                'Scan Address',
                style: TextStyle(color: Colors.grey.shade700, fontSize: 14.0),
              ))
        ],
      ),
    );
  }
}
