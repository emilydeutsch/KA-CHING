import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:katching_app/LosePage.dart';
import 'package:katching_app/TwoEventPage.dart';

class OneEventPage extends StatefulWidget {
  final int moneyScore;
  final int funScore;

  OneEventPage({this.moneyScore, this.funScore});

  @override
  _OneEventPageState createState() => _OneEventPageState();
}

class _OneEventPageState extends State<OneEventPage> {
  @override
  Widget build(BuildContext context) {
      int moneyScore = widget.moneyScore;
      int funScore = widget.funScore;

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
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 45
            ),
            StatusBar(moneyScore, funScore),
            SizedBox(
              height: 350
            ),
            ActionButtons(moneyScore, funScore)
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
          height: 15.0
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

  ActionButtons(this.moneyScore, this.funScore);

  @override
  Widget build(BuildContext context){
    return(
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        FlatButton(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
          side: BorderSide(color: Colors.black)
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
                    builder: (context) => TwoEventPage(moneyScore, funScore)));
          }
        }
      ),
        SizedBox(
          width: 25.0
        ),
        FlatButton(
        color: Colors.white,
        textColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0.0),
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
                      builder: (context) => TwoEventPage(moneyScore, funScore)));
            }
        }
      )
      
      ],
    )
    );
  }  
}


