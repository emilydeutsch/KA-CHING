import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:katching_app/FourEventPage.dart';
import 'package:katching_app/LandingPage.dart';

class ThreeEventPage extends StatefulWidget {
  final int moneyScore;
  final int funScore;
  final int salary;
  final int expenses;

  ThreeEventPage(this.moneyScore, this.funScore,this.salary,this.expenses);

  @override
  _ThreeEventPageState createState() => _ThreeEventPageState();
}

class _ThreeEventPageState extends State<ThreeEventPage> {
  @override
  Widget build(BuildContext context) {
      int moneyScore = widget.moneyScore;
      int funScore = widget.funScore;

      String description = "Your boss thinks you’ve been doing amazing work lately and wants to reward you with a bonus!";
String boldText = "You just got \$" + 100.toString() + ".";

    return Scaffold(
      body: new Stack(
          children: <Widget>[
      Container(
      decoration: BoxDecoration(
          image: DecorationImage(
          image: AssetImage("lib/images/EventPageThree.png"),
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
            StatusBar2(moneyScore, funScore),
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
              height: 13
            ),
            EventButton(moneyScore, funScore,widget.salary,widget.expenses),
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

class EventButton extends StatelessWidget{
  int moneyScore;
  int funScore;
  final int salary;
  final int expenses;

  EventButton(this.moneyScore, this.funScore,this.salary,this.expenses);

  @override
  Widget build(BuildContext context){
    return(
    Container(
      child:
        ButtonTheme(
          minWidth: 200,
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
          'Continue',
          style: TextStyle(
            fontSize: 20.0 
          )
        ),
        onPressed: (){
          //Event: bonus($100)
            moneyScore = moneyScore + 100;
          
          Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FourEventPage(moneyScore, funScore,salary,expenses)));
        }
      )
        )
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

class StatusBar2 extends StatelessWidget{

  StatusBar2(this.moneyScore, this.funScore);

  final int moneyScore;
  final int funScore;



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
