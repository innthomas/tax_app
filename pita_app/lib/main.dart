import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String dropDownValue = 'one';
  //final List<int> _nchildren = [1, 2];
  //final List<int> _nrelatives = [1, 2];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('pita calculator'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Spacer(),
              Text("Enter your full name: "),
              TextField(),
              Spacer(),
              Text("what is your tax identification number?"),
              TextField(),
              Spacer(),
              Text("Enter your gross income"),
              TextField(),
              Spacer(),
              Text("How many children do you have?"),
              Spacer(),
              Text("How many dependent relatives do you have?"),
              DropdownButton(
                items: null,
                onChanged: null,
              ),
              Spacer(),
              RaisedButton(
                  child: Text("compute tax"),
                  textColor: Colors.green,
                  splashColor: Colors.green,
                  onPressed: () {}),
              Spacer(),
              Text("Output"),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
