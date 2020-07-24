import 'package:assignment_1/log.dart';
import 'package:flutter/material.dart';
import 'trig.dart';
import 'log.dart';
import 'dart:math';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Pet-Project",
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),

        home: HomeScreen()
    );
  }
}
double logCalc(int num1) {
  return log(num1);
}

class HomeScreen extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Ashish's Assignment")),
      body: SafeArea(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: RaisedButton(
                  child: Padding(
                    padding: const EdgeInsets.all(17.0),
                    child: Text('Logarithmic',
                      style: TextStyle(
                          fontSize: 25
                      ),),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Logarithmic()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: BorderSide(color: Colors.deepOrange)
                  ),
                ),

              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: RaisedButton(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 11.0,top:17.0,right: 11.0,bottom: 17.0),
                    child: Text('Trigonometry',
                      style: TextStyle(
                          fontSize: 25
                      ),),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Trigonometry()),
                      );
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: BorderSide(color: Colors.deepOrange)
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
showAlertDialog(context) {

  var lx = logCalc(context);
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: Text(lx.toString(),
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      );
    },
  );
}

