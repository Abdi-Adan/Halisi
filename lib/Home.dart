import 'package:flutter/material.dart';
import 'package:halisi/Bus/BusAmount.dart';
import 'package:halisi/CRB/check.dart';
import 'package:halisi/Per/PerAmount.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Halisi',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          elevation: 10,
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 10),
              alignment: Alignment.center,
              child: Text(
                'Our Services',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            homeOne('Loans', Icons.ac_unit, 'Business Loans', Icons.ac_unit,
                'Personal Loans', BusAmount(), PerAmount()),
            homeTwo('Other Services', Icons.ac_unit,
                'Check Credit Listing (CRB)', Checkpage())
          ],
        ));
  }

  Widget homeOne(String head, IconData ic1, String des1, IconData ic2,
      String des2, Widget router1, Widget router2) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: 230,
      width: MediaQuery.of(context).size.width,
      child: Card(
        elevation: 10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  head,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                InkWell(
                  splashColor: Colors.white,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => router1));
                  },
                  child: Card(
                    elevation: 5,
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 150,
                          height: 100,
                          padding: EdgeInsets.all(10),
                          child: Icon(
                            ic1,
                            size: 50,
                            color: Colors.blue,
                          ),
                        ),
                        Text(
                          des1,
                          style: TextStyle(color: Colors.black),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  splashColor: Colors.white,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => router2));
                  },
                  child: Card(
                    elevation: 5,
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 150,
                          height: 100,
                          padding: EdgeInsets.all(10),
                          child: Icon(
                            ic2,
                            size: 50,
                            color: Colors.blue,
                          ),
                        ),
                        Text(
                          des2,
                          style: TextStyle(color: Colors.black),
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  Widget homeTwo(
    String headtwo,
    IconData ic3,
    String des3,
    Widget router3,
  ) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) => router3));
      },
      splashColor: Colors.white,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        height: 250,
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        child: Card(
          elevation: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 10),
                alignment: Alignment.center,
                child: Text(headtwo),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Card(
                  elevation: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        width: 50,
                        height: 60,
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          ic3,
                          size: 50,
                          color: Colors.blue,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 200,
                        height: 60,
                        padding: EdgeInsets.all(10),
                        child: Text(
                          des3,
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
