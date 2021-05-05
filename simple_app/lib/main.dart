import 'package:flutter/material.dart';
import 'HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginDemo(),
    );
  }
}

class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text("Speech Markers Pvt. Ltd.-Login Page"),
        backgroundColor: Colors.blueAccent[50],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                    width: 200,
                    height: 150,
                    /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                    child: Image(image: NetworkImage('data:image/jpeg;base64,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'))),
              ),
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter valid email id as abc@gmail.com'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(

                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter secure password'),
              ),
            ),
            FlatButton(
              onPressed: (){
                //TODO FORGOT PASSWORD SCREEN GOES HERE
              },
              child: Text(
                'Forgot Password',
                style: TextStyle(color: Colors.blue, fontSize: 15),
              ),
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => HomePage()));
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: 130,
            ),
            Text('New User? Create Account')
          ],
        ),
      ),
    );
  }
}