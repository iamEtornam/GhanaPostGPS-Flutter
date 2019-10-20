import 'package:flutter/material.dart';

import 'constant.dart';

class GetAddressPage extends StatelessWidget {
  List<String> _serviceName = ['Police', 'Fire', 'Ambulance'];
  List<String> _serviceIcon = [
    'assets/images/ic_police_man.png',
    'assets/images/ic_fire_truck.png',
    'assets/images/ic_ambulance.png'
  ];
  var _addressDetails = [
    ['Home', 'Madina Lane 5', 'GM-342-18'],
    ['Office', 'Osu Oxford Street', 'GO-832-18'],
    ['Hometown', 'Saltpond', 'GS-43842-18'],
    ['Church', 'ICGC Holy Ghost Temple, Adenta Fafraha', 'GA-11d42-18'],
    ['Bakery', 'Galaway, Koforidua', 'HM-842-18']
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 1,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      height: 180,
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
                            height: 180.0,
                            child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: _serviceName.length,
                              itemBuilder: (context, index) {
                                return _serviceBuildWidget(
                                    _serviceIcon[index], _serviceName[index]);
                              },
                            ),
                          ),
                          Container(
                            height: 180.0,
                            child: addServiceWidget(context),
                          ),
                        ],
                      ),
                    ),
                  ],
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
                  child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    separatorBuilder: (BuildContext context, int index) {
                      return Divider();
                    },
                    itemCount: _addressDetails.length,
                    itemBuilder: (BuildContext context, int index) {
                      return _addressBuildWidget(
                          context, _addressDetails, index);
                    },
                  ),
                )
              ],
            );
          }),
    );
  }

  Widget _addressBuildWidget(BuildContext context, var data, int index) {
    return ListTile(
      title: Text(
        _addressDetails[index][0],
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(_addressDetails[index][1]),
      trailing: InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/addressDetilsPage', arguments: data);
          },
          child: Material(
            color: mainColor,
            borderRadius: BorderRadius.circular(20.0),
            elevation: 3.0,
            child: Container(
                margin: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                height: 30.0,
                width: 100.0,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    _addressDetails[index][2],
                    softWrap: true,
                    style: TextStyle(color: Colors.white),
                  ),
                )),
          )),
    );
  }

  Widget _serviceBuildWidget(String imgUrl, String service) {
    return Container(
      width: 150.0,
      height: 150.0,
      margin: EdgeInsets.fromLTRB(10.0, 15.0, 5.0, 15.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          color: Colors.white),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 10.0,
          ),
          Container(
            width: 60.0,
            height: 60.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(45.0)),
                color: Colors.grey.shade200),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                imgUrl,
                color: mainColor,
                height: 40,
                width: 40,
              ),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            service,
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
              onTap: () {},
              child: Material(
                color: mainColor,
                borderRadius: BorderRadius.circular(20.0),
                elevation: 3.0,
                child: Container(
                    margin: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
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
    );
  }

  Container addServiceWidget(BuildContext context) {
    return Container(
      width: 150.0,
      height: 150.0,
      margin: EdgeInsets.fromLTRB(10.0, 15.0, 5.0, 15.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          color: Colors.white),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed('/newAddressPage');
        },
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10.0,
            ),
            Container(
              width: 60.0,
              height: 60.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(45.0)),
                  color: mainColor),
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 50,
              ),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Add Emergency Contact',
                textAlign: TextAlign.center,
                softWrap: true,
                style: TextStyle(color: mainColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
