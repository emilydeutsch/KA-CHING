import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:katching_app/LosePage.dart';
import 'package:katching_app/TwoEventPage.dart';
import 'package:katching_app/LandingPage.dart';

class OneEventPage extends StatefulWidget {
  final int moneyScore;
  final int funScore;
  final int salary;
  final int expenses;

  OneEventPage({this.moneyScore, this.funScore,this.salary,this.expenses});

  @override
  _OneEventPageState createState() => _OneEventPageState();
}

class _OneEventPageState extends State<OneEventPage> {
  @override
  Widget build(BuildContext context) {
      int moneyScore = widget.moneyScore;
      int funScore = widget.funScore;


      String description = "You landed a new job and moved into your new apartment. Would you like to celebrate with friends at brunch?";
      String boldText = "You would spend \$" + 20.toString() + ".";

    return Scaffold(
      body: new Stack(
          children: <Widget>[
      Container(
        decoration: BoxDecoration(
            image: DecorationImage(
            image: AssetImage("lib/images/EventPageOne.png"),
            fit: BoxFit.cover,
            ),
        ),
      ),Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
                  fontSize: 18.0,
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
              height: 14
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
  return Center(
    child: (
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(child: Text(
                  '\$ ' + moneyScore.toString(),
                  style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.black87,
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(child: FunProgress(this.funScore/100.00)),
              ),
            ],
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ]
      )
    ),
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
        child: FlatButton(
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
          //Event: brunch($20)
            moneyScore = moneyScore - 20;
          if(funScore < 100){
            funScore = funScore + 25;
          }
          if(moneyScore<=0 || funScore<=0){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LosePage(moneyScore<=0)));
          }
          else {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => TwoEventPage(moneyScore, funScore,salary,expenses)));
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
        child: FlatButton(
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
          //Event: brunch($20)
            funScore = funScore - 25;
            if(moneyScore<=0 || funScore<=0){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LosePage(moneyScore<=0)));
            }
            else {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TwoEventPage(moneyScore, funScore,salary,expenses)));
            }
        }
      )
        )
      
      ],
    )
    );
  }  
}

class FunProgress extends StatelessWidget {

  FunProgress(this.funscore);
  double funscore;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text(
              "Fun",
              style: TextStyle(
              fontFamily: 'Poppins',
              color: Colors.black87,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),),
          ),
          SizedBox(
            width: 100,
            child: LinearProgressIndicator(
              value: funscore,
              valueColor: new AlwaysStoppedAnimation<Color>(Colors.amber),
              backgroundColor: Colors.amberAccent[100],
              minHeight: 8,
            ),
          ),
        ],
      ),
    );
  }
}


