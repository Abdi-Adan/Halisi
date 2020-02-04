import 'package:flutter/material.dart';
import 'package:halisi/Bus/BusDuration.dart';

class BusAmount extends StatefulWidget {
  @override
  _BusAmountState createState() => _BusAmountState();
}

class _BusAmountState extends State<BusAmount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Halisi',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        elevation: 10,
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          homeTwo(Icons.ac_unit, "Business Loans"),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
                "import 'package:flutter/material.dart';import 'package:flutter/material.dart';import 'package:flutter/material.dart';import 'package:flutter/material.dart';import 'package:flutter/material.dart';import 'package:flutter/material.dart';"),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Card(
              elevation: 10,
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text('Loan Amount'),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.blue,
                                width: 1.5,
                                style: BorderStyle.solid,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.blue,
                                width: 1.5,
                                style: BorderStyle.solid,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0))),
                          labelText: "Enter the Amount",
                          hintText: 'Ksh',
                          labelStyle: TextStyle(color: Colors.black)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => BusDuration()));
            },
            color: Colors.blue,
            child: Text(
              'OK',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

Widget homeTwo(
  IconData ic4,
  String des4,
) {
  return Container(
    padding: EdgeInsets.symmetric(
      horizontal: 20,
    ),
    width: 600,
    height: 250,
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
