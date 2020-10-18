import 'package:flutter/material.dart';
import 'package:katching_app/JobPage.dart';
import 'package:katching_app/SlideTransition.dart';

import 'LandingPage.dart';

class WinPage extends StatefulWidget {
  //User selection is the list: [job, city, 1/2 (bedrooms), 1/2/3 (food)]
  @override
  _WinPageState createState() => _WinPageState();
}

class _WinPageState extends State<WinPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:new Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("lib/images/WinPage.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              //mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 200.0, 0.0, 0.0),
                  child: Text("Congratulations! \n You Won!",style: TextStyle(
                    fontFamily: 'QuickSand',
                    color: Colors.black87,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
                  child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      color: Color.fromRGBO(255, 210, 63, 1.0),
                      child:Padding(
                        padding: const EdgeInsets.fromLTRB(30.0,8.0,30.0,8.0),
                        child: Text("Play Again", style: TextStyle(fontSize: 25, fontFamily: 'QuickSand',fontWeight: FontWeight.bold),),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            SlideRightRoute(page: LandingPage()));
                      }
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
