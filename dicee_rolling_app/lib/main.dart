import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Dice Application'),
          backgroundColor: Colors.blueAccent,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  int leftDiceNumber = 5;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
      children: <Widget>[
        Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed: (){
                  print('Left Button got pressed!');
                },
                  child: Image.asset('images/dice$leftDiceNumber.png')
              ),
              ),
            ),
          
        Expanded(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child:FlatButton(
            onPressed: (){
              print('Right button got pressed!');
            },
            child: Image.asset('images/dice1.png'),
          ),
        ),

        ),

      ],
      ),
    );
  }
}
