import 'package:flutter/material.dart';


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
    return Scaffold(body: Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text("StartGame"),
          RaisedButton(
              child:Text("Start"),
              /* //future implementation
              onPressed: () {
                Navigator.push(context,

                    SlideRightRoute(page: CityPage(userSelection:widget.userSelection)));
              }*/
          ),
        ],
      ),
    ),
    );
  }
}

