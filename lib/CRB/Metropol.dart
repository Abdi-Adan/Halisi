import 'package:flutter/material.dart';

class Metropolpage extends StatefulWidget {
  @override
  _MetropolpageState createState() => _MetropolpageState();
}

class _MetropolpageState extends State<Metropolpage> {
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
    );
  }
}
