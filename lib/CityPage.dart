import 'package:flutter/material.dart';
import 'package:katching_app/MonthlyIncomePage.dart';
import 'package:katching_app/SlideTransition.dart';
// ignore: must_be_immutable
class CityPage extends StatefulWidget {
  List<String> userSelection;
  CityPage({this.userSelection});
  @override
  _CityPageState createState() => _CityPageState();
}

class _CityPageState extends State<CityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text("City"),
          RaisedButton(
              child: Text("next"),
              onPressed: () {
                Navigator.push(context,
                    SlideRightRoute(page:MonthlyIncomePage(userSelection:widget.userSelection)));
              }
          ),
        ],
      ),
    ),
    );
  }
}
