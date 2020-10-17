import 'package:flutter/material.dart';
import 'package:katching_app/MonthlyExpensesPage.dart';
import 'package:katching_app/SlideTransition.dart';

// ignore: must_be_immutable
class FoodPage extends StatefulWidget {
  List<String> userSelection;
  FoodPage({this.userSelection});
  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text("Food"),
          RaisedButton(
              child:Text("next"),
              onPressed: () {
                Navigator.push(context,
                    SlideRightRoute(page: MonthlyExpensesPage(userSelection:widget.userSelection)));
              }
          ),
        ],
      ),
    ),
    );
  }
}

