import 'package:flutter/material.dart';
import 'package:smpl_app/Widget/bezierContainer.dart';
import 'package:smpl_app/loginPage.dart';
import 'package:google_fonts/google_fonts.dart';

class AudioFiles extends StatefulWidget {
  const AudioFiles({Key key}) : super(key: key);

  @override
  _AudioFilesState createState() => _AudioFilesState();
}

class _AudioFilesState extends State<AudioFiles> {
  @override
  Widget _audiorecord() {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
              child: Icon(Icons.keyboard_arrow_left, color: Colors.black),
            ),
            Text('Back',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500))
          ],
        ),
      ),
    );
  }

  Widget _backButton() {
  return InkWell(
  onTap: () {
  Navigator.pop(context);
  },
  child: Container(
  padding: EdgeInsets.symmetric(horizontal: 10),
  child: Row(
  children: <Widget>[
  Container(
  padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
  child: Icon(Icons.keyboard_arrow_left, color: Colors.black),
  ),
  Text('Back',
  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500))
  ],
  ),
  ),
  );
  }

  Widget _title() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: 'Speech ',
          style: GoogleFonts.portLligatSans(
            textStyle: Theme.of(context).textTheme.display1,
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Color(0xff51acf3),
          ),
          children: [
            TextSpan(
              text: 'Markers ',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            TextSpan(
              text: 'Pvt Ltd',
              style: TextStyle(color: Color(0xff154dbd), fontSize: 30),
            ),
          ]),
    );
  }


  Widget _divider() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 2,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Divider(
                thickness: 2,
              ),
            ),
          ),
          Text('Instructions : '),
          Expanded(child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Divider(
              thickness: 2,
            ),

          ),),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 2,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),

        ],
      ),
    );
  }



  Widget Audio_Symbol() {
    return Column(
      children: <Widget>[
        RawMaterialButton(
          onPressed: () {},
          elevation: 2.0,
          fillColor: Colors.white,
          child: Icon(
            Icons.mic,
            size: 100.0,
          ),
          padding: EdgeInsets.all(30.0),
          shape: CircleBorder(),
        )
      ],
    );
  }



    Widget instructions1() {
      return Column(
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "User Details                   ",
                ),
                WidgetSpan(
                  child: Icon(Icons.people_alt, size: 18),
                ),
                TextSpan(
                  text: "                    < Menu",
                ),
              ],


            ),

          )

        ],
      );
    }
  Widget instructions2() {
    return Column(
      children: <Widget>[
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "Health Conditions                   ",
              ),
              WidgetSpan(
                child: Icon(Icons.contact_page, size: 14),
              ),
              TextSpan(
                text: "                    < Menu",
              ),
            ],
          ),
        )
      ],
    );
  }
  Widget instructions3() {
    return Column(
      children: <Widget>[
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "Set Reminder                   ",
              ),
              WidgetSpan(
                child: Icon(Icons.lock_clock, size: 14),
              ),
              TextSpan(
                text: "                    < Menu",
              ),
            ],


          ),

        )

      ],
    );
  }
  Widget instructions4() {
    return Column(
      children: <Widget>[
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "Check Report                   ",
              ),
              WidgetSpan(
                child: Icon(Icons.graphic_eq_sharp, size: 14),
              ),
              TextSpan(
                text: "                    < Menu",
              ),
            ],


          ),

        )

      ],
    );
  }
  Widget instructions5() {
    return Column(
      children: <Widget>[
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "Change Language                   ",
              ),
              WidgetSpan(
                child: Icon(Icons.people_alt, size: 14),
              ),
              TextSpan(
                text: "                    < Menu",
              ),
            ],


          ),

        )

      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),automaticallyImplyLeading: false,
      ),
        body: Container(
          height: height,
          child: Stack(
            children: <Widget>[
              Positioned(
                  top: -height * .15,
                  right: -MediaQuery.of(context).size.width * .4,
                  child: BezierContainer()),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: height * .2),
                      _title(),
                      SizedBox(height: 50),
                      Audio_Symbol(),
                      SizedBox(height: 20),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        alignment: Alignment.topCenter,
                        child: Text('click here to start a recording session',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500)),
                      ),
                      _divider(),
                      SizedBox(height: height * .055),
                      instructions1(),
                      instructions2(),
                      instructions3(),
                      instructions4(),
                      instructions5(),
                    ],
                  ),
                ),
              ),
              Positioned(top: 40, left: 0, child: _backButton()),
            ],
          ),
        ));
  }
}



