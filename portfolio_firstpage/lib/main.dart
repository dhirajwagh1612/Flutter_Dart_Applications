import 'package:flutter/cupertino.dart';
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('images/PHOTOs.jpg'),
                ),
                Text('Dhiraj Machhindranath Wagh',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,

                ),),
                Text('Full-Stack Data Scientist',
                style: TextStyle(
                    fontFamily: 'SourceSansPro-Regular',
                    color: Colors.teal.shade100,
                    fontSize: 20.0,
                    letterSpacing: 2.5,
                ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 120.0,
                  child: Divider(
                    color: Colors.teal.shade100,
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.black,
                    ),
                    title: Text(
                      '+91 7720929006',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.teal.shade900,
                          fontFamily: 'SourceSansPro-Regular'
                      ),
                    ),
                  ),
                ),

                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.black,
                    ),
                    title: Text(
                      'dhiraj.m.wagh1111@gmail.com',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.teal.shade900,
                        fontFamily: 'SourceSansPro-Regular'
                      ),
                    ),
                  ),
                ),
              ],

            ),
          ),
        )
    );
  }
}


