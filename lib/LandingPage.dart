import 'package:flutter/material.dart';
import 'package:katching_app/JobPage.dart';
import 'package:katching_app/SlideTransition.dart';

class LandingPage extends StatefulWidget {
  //User selection is the list: [job, city, 1/2 (bedrooms), 1/2/3 (food)]
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  List<String> userSelection = new List(4);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:new Stack(
            children: <Widget>[
              Container(
    decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage("lib/images/LandingPage.png"),
          fit: BoxFit.cover,
          ),
          ),
    ),
          Center(
          child: Column(
                //mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 500.0, 0.0, 0.0),
                  child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                      ),
                    color: Color.fromRGBO(255, 210, 63, 1.0),
                    child:Padding(
                      padding: const EdgeInsets.fromLTRB(30.0,8.0,30.0,8.0),
                      child: Text("Start", style: TextStyle(fontSize: 30, fontFamily: 'QuickSand',fontWeight: FontWeight.bold),),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          SlideRightRoute(page: JobPage(userSelection:this.userSelection)));
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
