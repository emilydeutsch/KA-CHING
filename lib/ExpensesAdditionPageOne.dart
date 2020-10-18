import 'package:flutter/material.dart';
import 'package:katching_app/FiveEventPage.dart';
import 'package:katching_app/JobPage.dart';
import 'package:katching_app/OneEventPage.dart';
import 'package:katching_app/SlideTransition.dart';

class ExpensesAdditionPageOne extends StatefulWidget {
  final int salary;
  final int expenses;
  int funScore;
  int moneyScore;
  ExpensesAdditionPageOne({this.moneyScore, this.funScore,this.salary,this.expenses});
  @override
  _ExpensesAdditionPageOneState createState() => _ExpensesAdditionPageOneState();
}

class _ExpensesAdditionPageOneState extends State<ExpensesAdditionPageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:new Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("lib/images/ExpensesPage.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              //mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 520.0, 0.0, 0.0),
                  child: Text("Monthly Expenses Due\n Pay"+widget.expenses.toString(),style: TextStyle(
                      fontFamily: 'QuickSand',
                      color: Colors.black87,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0,20.0, 0.0, 0.0),
                  child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      color: Color.fromRGBO(255, 210, 63, 1.0),
                      child:Padding(
                        padding: const EdgeInsets.fromLTRB(30.0,8.0,30.0,8.0),
                        child: Text("Okay", style: TextStyle(fontSize: 30, fontFamily: 'QuickSand',fontWeight: FontWeight.bold),),
                      ),
                      onPressed: () {
                        widget.moneyScore = widget.moneyScore - widget.expenses;
                        Navigator.push(context,
                            SlideRightRoute(page: OneEventPage(moneyScore:widget.moneyScore, funScore:widget.funScore,salary: widget.salary,expenses: widget.expenses)));
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
