import 'dart:math';

import 'package:flutter/material.dart';

class Logarithmic extends StatefulWidget{
  @override
  _LogarithmicState createState() => _LogarithmicState();
}

class _LogarithmicState extends State<Logarithmic> {
  final myController = TextEditingController();
  var lx = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Logarithmic"),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                  "Enter Number to find log of-"
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: myController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Number',
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: RaisedButton(
                  child: Text('Calculate'),
                  onPressed: () {
                    setState(() {
                      int x = int.parse(myController.text);
                      lx = logCalc(x);
                    });
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: BorderSide(color: Colors.deepOrange)
                  ),
                ),
              ),
            ),
            Text("$lx",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
  double logCalc(int num1) {
    return log(num1);
  }
