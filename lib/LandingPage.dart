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
    return Scaffold(body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
            children: <Widget>[
          Text("LandingPage"),
          RaisedButton(
            child:Text("next"),
            onPressed: () {
              Navigator.push(context,
                  SlideRightRoute(page: JobPage(userSelection:this.userSelection)));
            }
          ),
        ],
      ),
    ),
    );
  }
}
