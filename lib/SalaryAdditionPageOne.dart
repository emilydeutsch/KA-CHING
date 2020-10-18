import 'package:flutter/material.dart';
import 'package:katching_app/ExpensesAdditionPageTwo.dart';
import 'package:katching_app/JobPage.dart';
import 'package:katching_app/OneEventPage.dart';
import 'package:katching_app/SlideTransition.dart';

import 'ExpensesAdditionPageOne.dart';

class SalaryAdditionPageOne extends StatefulWidget {
  final int salary;
  final int expenses;
  int funScore;
  int moneyScore;
  SalaryAdditionPageOne({this.moneyScore, this.funScore,this.salary,this.expenses});
  @override
  _SalaryAdditionPageOneState createState() => _SalaryAdditionPageOneState();
}

class _SalaryAdditionPageOneState extends State<SalaryAdditionPageOne> {
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
                image: AssetImage("lib/images/SalaryPage.png"),
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
                  child: Text("\$"+widget.salary.toString(),style: TextStyle(
                      fontFamily: 'QuickSand',
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50.0, 160.0, 50.0, 0.0),
                  child: Text("PAYDAY!",style: TextStyle(
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
                        widget.moneyScore = widget.moneyScore + widget.salary;
                        Navigator.push(context,
                            SlideRightRoute(page: ExpensesAdditionPageOne(moneyScore:widget.moneyScore, funScore:widget.funScore,salary: widget.salary,expenses: widget.expenses)));
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
