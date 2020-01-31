import 'package:flutter/material.dart';

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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              child: Card(
                elevation: 10,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Text("Boost your credit history"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
