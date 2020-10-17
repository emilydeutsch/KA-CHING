import 'package:flutter/material.dart';
import 'package:katching_app/SlideTransition.dart';

import 'StartGamePage.dart';

// ignore: must_be_immutable
class OverviewProfitPage extends StatefulWidget {
  List<String> userSelection;
  OverviewProfitPage({this.userSelection});
  @override
  _OverviewProfitPageState createState() => _OverviewProfitPageState();
}

class _OverviewProfitPageState extends State<OverviewProfitPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text("OverviewProfitPage"),
          RaisedButton(
              child:Text("next"),
              onPressed: () {
                Navigator.push(context,
                    SlideRightRoute(page: StartGamePage(userSelection:widget.userSelection)));
              }
          ),
        ],
      ),
    ),
    );
  }
}

