import 'package:flutter/material.dart';
import 'package:katching_app/OneEventPage.dart';

import 'CityPage.dart';
import 'SlideTransition.dart';


// ignore: must_be_immutable
class StartGamePage extends StatefulWidget {
  List<String> userSelection;
  StartGamePage({this.userSelection});
  @override
  _StartGamePageState createState() => _StartGamePageState();
}

class _StartGamePageState extends State<StartGamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:new Stack(
        children: <Widget>[
    Container(
    decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage("lib/images/SummaryPage.png"),
      fit: BoxFit.cover,
    ),
    ),
    ), Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text("StartGame"),
          RawMaterialButton(
            onPressed: () {
              Navigator.push(context,
               SlideRightRoute(page: OneEventPage(moneyScore:500, funScore:50)));
                },
            elevation: 5.0,
            fillColor: Colors.white,
            child: Icon(
              Icons.play_arrow,
              color: Colors.green,
              size:160.0,
            ),
            //padding: EdgeInsets.all(15.0),
            shape: CircleBorder(),
          )
        ],
      ),
    ),
    ],
    ),
    );
  }
}

