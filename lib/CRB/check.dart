import 'package:flutter/material.dart';
import 'package:halisi/CRB/TransUnion.dart';

class Checkpage extends StatefulWidget {
  @override
  _CheckpageState createState() => _CheckpageState();
}

class _CheckpageState extends State<Checkpage> {
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
          //
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              child: Card(
                elevation: 10,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Text("Check CRB Status"),
                ),
              ),
            ),
          ),
          //
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              child: Card(
                elevation: 10,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child:
                      Text("Please read through to check your credit status"),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              child: Card(
                elevation: 10,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Text("What is CRB"),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            color: Colors.cyan,
            margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            alignment: Alignment.center,
            child: Text(
                "A credit reference bureau (CRB) is a company which collects information from financial institutions and provides consumer credit information for a variety of uses to individual cosumers. CRB holds credit data thatare shared by financial institutions and facilitates loans to them",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                )),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: RaisedButton(
              onPressed: () {
                Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => TransUnionpage()));
              },
              color: Colors.cyan,
              elevation: 10,
              child: Text(
                "Proceed",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 25,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
