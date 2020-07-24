import 'package:flutter/material.dart';

class Trigonometry extends StatefulWidget{
  @override
  _TrigonometryState createState() => _TrigonometryState();
}

class _TrigonometryState extends State<Trigonometry> {
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  final myController3 = TextEditingController();
  var s=0.0,c=0.0,t=0.0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text("Trigonometry"),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Image(
                      image: AssetImage('assets/images/triangle.jpg'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                        "Enter the size of sides-",
                      style: TextStyle(
                        fontSize: 20
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextField(
                      controller: myController1,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter A',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextField(
                      controller: myController2,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter B',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextField(
                      controller: myController3,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter C',
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: RaisedButton(
                        child: Text('Calculate',
                          style: TextStyle(
                              fontSize: 20
                          ),),
                        onPressed: () {
                          setState(() {
                            int x = int.parse(myController1.text);
                            int y = int.parse(myController2.text);
                            int z = int.parse(myController3.text);
                            s = div(x,z);
                            c = div(y,z);
                            t = div(x,y);
                          });

                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            side: BorderSide(color: Colors.deepOrange)
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Text("Sin X= $s \nCos X= $c\nTan X= $t",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                  SizedBox(height: 150.0,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

double div(int x,int y) {
  return x/y;
}
