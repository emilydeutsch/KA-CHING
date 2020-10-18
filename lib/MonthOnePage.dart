import 'package:flutter/material.dart';
import 'package:katching_app/JobPage.dart';
import 'package:katching_app/OneEventPage.dart';
import 'package:katching_app/SalaryAdditionPageTwo.dart';
import 'package:katching_app/SlideTransition.dart';

import 'SalaryAdditionPageOne.dart';

class OneMonthPage extends StatefulWidget {
  final int Salary;
  final int Expenses;
  int funScore =50;
  int moneyScore =0;
  OneMonthPage({this.Salary,this.Expenses});
  @override
  _OneMonthPageState createState() => _OneMonthPageState();
}

class _OneMonthPageState extends State<OneMonthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:new Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("lib/images/MonthPage.png"),
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
                  child: Text("Month One",style: TextStyle(
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
                        child: Text("Start", style: TextStyle(fontSize: 30, fontFamily: 'QuickSand',fontWeight: FontWeight.bold),),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            SlideRightRoute(page: SalaryAdditionPageOne(moneyScore:widget.moneyScore, funScore:widget.funScore,salary: widget.Salary,expenses: widget.Expenses)));
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
