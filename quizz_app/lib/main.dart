import 'package:flutter/material.dart';

void main() => runApp(Quiz);

class Quiz extends StatelessWidget {
  const Quiz({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[




        Row(
          children: <Widget>[
            Icon(Icons.check,
            color: Colors.green,
            ),
            Icon(
              Icons.close,
              color: Colors.red,

            ),
            Icon(
              Icons.close,
              color: Colors.red,

            ),
          ],
        ),
      ],
    );
  }
}

    