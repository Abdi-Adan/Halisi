import 'package:flutter/material.dart';
import 'package:halisi/Per/PerDuration.dart';

class PerAmount extends StatefulWidget {
  @override
  _PerAmountState createState() => _PerAmountState();
}

class _PerAmountState extends State<PerAmount> {
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
          homeTwo(Icons.ac_unit, "Personal Loans"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              child: Text(
                  "import 'package:flutter/material.dart';import 'package:flutter/material.dart';import 'package:flutter/material.dart';import 'package:flutter/material.dart';import 'package:flutter/material.dart';import 'package:flutter/material.dart';"),
            ),
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
                    padding: EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 10.0),
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
            height: 20,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>PerDuration()));
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
                  color: Colors.blue,
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
