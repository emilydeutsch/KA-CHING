import 'package:flutter/material.dart';
import 'package:katching_app/SlideTransition.dart';
import 'package:katching_app/OverviewProfitPage.dart';

// ignore: must_be_immutable
class MonthlyExpensesPage extends StatefulWidget {
  List<String> userSelection;
  MonthlyExpensesPage({this.userSelection});
  @override
  _MonthlyExpensesPageState createState() => _MonthlyExpensesPageState();
}

class _MonthlyExpensesPageState extends State<MonthlyExpensesPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text("MonthlyExpenses"),
          RaisedButton(
              child:Text("next"),
              onPressed: () {
                Navigator.push(context,
                    SlideRightRoute(page: OverviewProfitPage(userSelection:widget.userSelection)));
              }
          ),
        ],
      ),
    ),
    );
  }
}

