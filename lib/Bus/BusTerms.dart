import 'package:flutter/material.dart';
import 'package:halisi/success.dart';

class BusTerms extends StatefulWidget {
  @override
  _BusTermsState createState() => _BusTermsState();
}

class _BusTermsState extends State<BusTerms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Halisi',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        elevation: 10,
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            homeTwo(Icons.ac_unit, "Business Loans"),
            Container(
              child: Text("Terms and Conditions"),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                  "import 'package:flutter/material.dart';import 'package:flutter/material.dart';import 'package:flutter/material.dart';import 'package:flutter/material.dart';import 'package:flutter/material.dart';import 'package:flutter/material.dart';"),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Container(
                child: Text(
                    "By agreeing You accept the terms of service and conditions of application"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Sucess()));
              },
              color: Colors.blue,
              child: Text(
                'I Agree',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget homeTwo(
  IconData ic4,
  String des4,
) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    height: 300,
    width: 300,
    alignment: Alignment.center,
    child: Card(
      elevation: 10,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Card(
          elevation: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                width: 150,
                height: 150,
                padding: EdgeInsets.all(10),
                child: Icon(
                  ic4,
                  size: 100,
                  color: Colors.orange,
                ),
              ),
              Container(
                width: 150,
                height: 15,
                padding: EdgeInsets.all(10),
                child: Text(
                  des4,
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
