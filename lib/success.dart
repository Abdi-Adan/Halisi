import 'package:flutter/material.dart';
import 'package:halisi/Home.dart';

class Sucess extends StatefulWidget {
  @override
  _SucessState createState() => _SucessState();
}

class _SucessState extends State<Sucess> {
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
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 400,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            children: <Widget>[
              Card(
                elevation: 10,
                child: Text(
                    "Your loan application was sucessful, we will get back to you when its approved"),
              ),
              SizedBox(
                height: 40,
              ),
              RaisedButton(
                color: Colors.blue,
                elevation: 10,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => MyHomePage()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
