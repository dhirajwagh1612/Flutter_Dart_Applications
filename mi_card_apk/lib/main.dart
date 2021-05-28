import 'package:flutter/material.dart';

void main(){
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[Container(
          height: 100.0,
          width: 100.0,
          margin: EdgeInsets.fromLTRB(30.0, 20.0, 40.0, 50.0),
          padding: EdgeInsets.all(20.0),
          color: Colors.white,
          child: Text('Welcome to My Page 1'),

          ),
            Container(
              height: 100.0,
              width: 100.0,
              margin: EdgeInsets.fromLTRB(30.0, 20.0, 40.0, 50.0),
              padding: EdgeInsets.all(20.0),
              color: Colors.white,
              child: Text('Welcome to My Page 2'),),
          Container(
            height: 100.0,
            width: 100.0,
            margin: EdgeInsets.fromLTRB(30.0, 20.0, 40.0, 50.0),
            padding: EdgeInsets.all(20.0),
            color: Colors.white,
            child: Text('Welcome to My Page 3'),),
          ],

        ),
      ),
    )
    );
  }
}


