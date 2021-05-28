import 'package:flutter/material.dart';
import 'dart:math';
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


class DicePage extends StatefulWidget {
  const DicePage({Key key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int RightDiceNumber = 1;

  void changeDiceNumber() {
    setState(() {
      RightDiceNumber  = Random().nextInt(6) + 1;
      leftDiceNumber = Random().nextInt(6) + 1;
      print('diceNumber = $leftDiceNumber');
    });
  }


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
                    changeDiceNumber();

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
                  changeDiceNumber();



                },
                child: Image.asset('images/dice$RightDiceNumber.png'),
              ),
            ),

          ),

        ],
      ),
    );
  }
}
