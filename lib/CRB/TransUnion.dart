import 'package:flutter/material.dart';

class Transunionpage extends StatefulWidget {
  @override
  _TransunionpageState createState() => _TransunionpageState();
}

class _TransunionpageState extends State<Transunionpage> {
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
