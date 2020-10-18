import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:katching_app/FiveEventPage.dart';
import 'package:katching_app/LandingPage.dart';
import 'package:katching_app/MonthTwoPage.dart';
import 'package:katching_app/SlideTransition.dart';

import 'LosePage.dart';

class FourEventPage extends StatefulWidget {
  final int moneyScore;
  final int funScore;
  final int salary;
  final int expenses;

  FourEventPage(this.moneyScore, this.funScore,this.salary,this.expenses);

  @override
  _FourEventPageState createState() => _FourEventPageState();
}

class _FourEventPageState extends State<FourEventPage> {
  @override
  Widget build(BuildContext context) {
      int moneyScore = widget.moneyScore;
      int funScore = widget.funScore;

      String description = "Finally the long weekend! Your friends want to go on a road trip somewhere far and exciting. Will you join them?";
String boldText = "You would spend \$" + 700.toString() + ".";


    return Scaffold(
      body:new Stack(
          children: <Widget>[
      Container(
      decoration: BoxDecoration(
          image: DecorationImage(
          image: AssetImage("lib/images/EventPageFour.png"),
      fit: BoxFit.cover,
    ),
    ),
    ), Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50
            ),
            StatusBar(moneyScore, funScore),
            SizedBox(
              height: 350
            ),
            Container(
              width: 300,
              child: Text(
                description,
                style: TextStyle(
                  fontSize: 18.0
                )
              )
            ),
            Container(
              width: 300,
              child: Text(
                boldText,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold
                )
              )
            ),
            SizedBox(
              height: 20
            ),
            ActionButtons(moneyScore, funScore,widget.salary,widget.expenses),
            SizedBox(
              height: 50
            ),
            Container(
              child: InkWell(
                child: Text("Quit"),
                onTap: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LandingPage()));
                },
              )
            )
          ],
        )
      )
    ],
      ),
    );
  }
}

class StatusBar extends StatelessWidget{
  final int moneyScore;
  final int funScore;

  StatusBar(this.moneyScore, this.funScore);
  
  @override
  Widget build(BuildContext context){
  return(
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
         Chip(
            backgroundColor: Colors.lightGreen,
            label: Text('Money Score: ' + moneyScore.toString()),
            labelStyle: 
              TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),
            labelPadding: EdgeInsets.all(2.0),
          ),
        SizedBox(
          height: 5
        ),
        Chip(
            backgroundColor: Colors.orange,
            label: Text('Fun Score: ' + funScore.toString()),
            labelStyle: 
              TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),
            labelPadding: EdgeInsets.all(2.0),
      )
      ]
    )
  );
  }
}

class ActionButtons extends StatelessWidget{
  int moneyScore;
  int funScore;
  final int salary;
  final int expenses;

  ActionButtons(this.moneyScore, this.funScore,this.salary,this.expenses);

  @override
  Widget build(BuildContext context){
    return(
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        ButtonTheme(
           minWidth: 120,
        height: 50,
          child:FlatButton(
        color: Color(0xff41c8ab),
        textColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
          side: BorderSide(color: Color(0xff41c8ab))
        ),
        padding: EdgeInsets.all(8.0),
        child: Text(
          'Yes',
          style: TextStyle(
            fontSize: 20.0 
          )
        ),
        onPressed: (){
          //Event: road trip($700)
          moneyScore = moneyScore - 700;
          if(funScore < 100){
            funScore = funScore + 25;
          }
          if(moneyScore<=0 || funScore<=0){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LosePage(moneyScore<=0)));
          }
          else {
            Navigator.push(context,
                SlideRightRoute(page:TwoMonthPage(moneyScore:moneyScore, funScore:funScore,salary: salary,expenses: expenses)));
        }
        }
      )
        ),
        SizedBox(
          width: 25.0
        ),
        ButtonTheme(
           minWidth: 120,
        height: 50,
        child:FlatButton(
        color: Colors.black,
        textColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
          side: BorderSide(color: Colors.black)
        ),
        padding: EdgeInsets.all(8.0),
        child: Text(
          'No',
          style: TextStyle(
            fontSize: 20.0 
          )
        ),
        onPressed: (){
          //Event: road trip($700)
          funScore = funScore - 25;
          if(moneyScore<=0 || funScore<=0){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LosePage(moneyScore<=0)));
          }
          else {
            Navigator.push(context,
                SlideRightRoute(page:TwoMonthPage(moneyScore:moneyScore, funScore:funScore,salary: salary,expenses: expenses)));
          }
        }
      )
        )
      ],
    )
    );
  }  
}


