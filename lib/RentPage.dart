import 'package:flutter/material.dart';
import 'package:katching_app/FoodPage.dart';
import 'package:katching_app/SlideTransition.dart';

// ignore: must_be_immutable
class RentPage extends StatefulWidget {
  List<String> userSelection;
  RentPage({this.userSelection});
  @override
  _RentPageState createState() => _RentPageState();
}

class _RentPageState extends State<RentPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text("Rent"),
          RaisedButton(
              child:Text("next"),
              onPressed: () {
                Navigator.push(context,
                    SlideRightRoute(page: FoodPage(userSelection:widget.userSelection)));
              }
          ),
        ],
      ),
    ),
    );
  }
}

