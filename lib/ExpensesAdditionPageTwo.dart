import 'package:flutter/material.dart';
import 'package:katching_app/FiveEventPage.dart';
import 'package:katching_app/JobPage.dart';
import 'package:katching_app/OneEventPage.dart';
import 'package:katching_app/SlideTransition.dart';

class ExpensesAdditionPageTwo extends StatefulWidget {
  final int salary;
  final int expenses;
  int funScore;
  int moneyScore;
  ExpensesAdditionPageTwo({this.moneyScore, this.funScore,this.salary,this.expenses});
  @override
  _ExpensesAdditionPageTwoState createState() => _ExpensesAdditionPageTwoState();
}

class _ExpensesAdditionPageTwoState extends State<ExpensesAdditionPageTwo> {
  @override
  Widget build(BuildContext context) {
    int moneyScore = widget.moneyScore;
    int funScore = widget.funScore;
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
                SizedBox(
                    height: 50
                ),
                StatusBar2(moneyScore, funScore),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 170.0, 0.0, 0.0),
                  child: Text("\$"+widget.expenses.toString(),style: TextStyle(
                      fontFamily: 'QuickSand',
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(55.0, 150.0, 55.0, 0.0),
                  child: Text("Every month, you need to pay for rent, groceries, and other things",style: TextStyle(
                      fontFamily: 'QuickSand',
                      color: Colors.black87,
                      fontSize: 20,
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
                            SlideRightRoute(page: FiveEventPage(moneyScore:widget.moneyScore, funScore:widget.funScore,salary: widget.salary,expenses: widget.expenses)));
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
