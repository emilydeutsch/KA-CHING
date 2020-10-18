import 'package:flutter/material.dart';
import 'package:katching_app/RentPage.dart';
import 'package:katching_app/SlideTransition.dart';

// ignore: must_be_immutable
class MonthlyIncomePage extends StatefulWidget {
  List<String> userSelection;
  MonthlyIncomePage({this.userSelection});
  @override
  _MonthlyIncomePageState createState() => _MonthlyIncomePageState();
}

class _MonthlyIncomePageState extends State<MonthlyIncomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:new Stack(
        children: <Widget>[
    Container(
    decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage("lib/images/CityPage.png"),
      fit: BoxFit.cover,
    ),
    ),
    ), Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text("MonthlyIncome"),
          RaisedButton(
              child:Text("next"),
              onPressed: () {
                Navigator.push(context,
                    SlideRightRoute(page: RentPage(userSelection:widget.userSelection)));
              }
          ),
        ],
      ),
    ),
          ],
    ),
    );
  }
}

