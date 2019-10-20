import 'package:flutter/material.dart';

import 'constant.dart';
import 'get_address_page.dart';
import 'scan_address_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _controller = TextEditingController();
  bool isFocus = false;
  int currentIndex = 0;
  var _pages = [GetAddressPage(), ScanAddressPage()];

  void onChanged(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: Text(
          'GhanaPost',
          style: TextStyle(color: mainColor, fontWeight: FontWeight.bold),
        ),
        iconTheme: IconThemeData(color: mainColor),
        bottom: PreferredSize(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                onTap: () {
                  setState(() {
                    if (!isFocus) {
                      isFocus = true;
                    } else {
                      isFocus = false;
                    }
                  });
                },
                controller: _controller,
                decoration: InputDecoration(
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    focusColor: mainColor,
                    suffixIcon: Icon(
                      Icons.search,
                      color: isFocus ? mainColor : Colors.grey,
                    ),
                    hintText: 'Search here...',
                    hintStyle:
                        TextStyle(color: isFocus ? mainColor : Colors.grey),
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade200),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: mainColor),
                        borderRadius: BorderRadius.all(Radius.circular(5)))),
              ),
            ),
            preferredSize: Size.fromHeight(60.0)),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[Drawer()],
        ),
      ),
      body: SafeArea(
          child: Container(
        child: _pages[currentIndex],
      )),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onChanged,
        selectedItemColor: mainColor,
        selectedLabelStyle: TextStyle(color: mainColor),
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
